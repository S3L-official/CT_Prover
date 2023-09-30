; ModuleID = 'crypt_cbc.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_des_context = type { [32 x i32] }
%struct.smack_value = type { i8* }
%struct.mbedtls_des3_context = type { [96 x i32] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@__const.crypt_cbc_wrapper_t.iv = private unnamed_addr constant <{ i8, [15 x i8] }> <{ i8 97, [15 x i8] zeroinitializer }>, align 16
@odd_parity_table = internal constant [128 x i8] c"\01\02\04\07\08\0B\0D\0E\10\13\15\16\19\1A\1C\1F #%&)*,/12478;=>@CEFIJLOQRTWX[]^abdghkmnpsuvyz|\7F\80\83\85\86\89\8A\8C\8F\91\92\94\97\98\9B\9D\9E\A1\A2\A4\A7\A8\AB\AD\AE\B0\B3\B5\B6\B9\BA\BC\BF\C1\C2\C4\C7\C8\CB\CD\CE\D0\D3\D5\D6\D9\DA\DC\DF\E0\E3\E5\E6\E9\EA\EC\EF\F1\F2\F4\F7\F8\FB\FD\FE", align 16, !dbg !0
@weak_key_table = internal constant [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\E0\E0\E0\F1\F1\F1\F1", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16, !dbg !13
@LHs = internal constant [16 x i32] [i32 0, i32 1, i32 256, i32 257, i32 65536, i32 65537, i32 65792, i32 65793, i32 16777216, i32 16777217, i32 16777472, i32 16777473, i32 16842752, i32 16842753, i32 16843008, i32 16843009], align 16, !dbg !21
@RHs = internal constant [16 x i32] [i32 0, i32 16777216, i32 65536, i32 16842752, i32 256, i32 16777472, i32 65792, i32 16843008, i32 1, i32 16777217, i32 65537, i32 16842753, i32 257, i32 16777473, i32 65793, i32 16843009], align 16, !dbg !26
@SB8 = internal constant [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], align 16, !dbg !28
@SB6 = internal constant [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], align 16, !dbg !33
@SB4 = internal constant [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], align 16, !dbg !35
@SB2 = internal constant [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], align 16, !dbg !37
@SB7 = internal constant [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], align 16, !dbg !39
@SB5 = internal constant [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], align 16, !dbg !41
@SB3 = internal constant [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], align 16, !dbg !43
@SB1 = internal constant [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], align 16, !dbg !45
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"  DES%c-ECB-%3d (%s): \00", align 1
@des3_test_buf = internal constant [8 x i8] c"Now is t", align 1, !dbg !47
@des3_test_keys = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF#Eg\89\AB\CD\EF\01Eg\89\AB\CD\EF\01#", align 16, !dbg !51
@des3_test_ecb_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"7+\98\BFRe\B0Y", [8 x i8] c"\C2\10\19\9C8Ze\A1", [8 x i8] c"\A2pVhi\E5\15\1D"], align 16, !dbg !56
@des3_test_ecb_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\1C\D5\97\EA\84&s\FB", [8 x i8] c"\B3\92M\F3\C5\B5B\93", [8 x i8] c"\DA7dA\BAobo"], align 16, !dbg !61
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  DES%c-CBC-%3d (%s): \00", align 1
@des3_test_iv = internal constant [8 x i8] c"\124Vx\90\AB\CD\EF", align 1, !dbg !63
@des3_test_cbc_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"X\D9H\EF\85\14e\9A", [8 x i8] c"_\C8x\D4\D7\92\D9T", [8 x i8] c"%\F9u\85\A8\1EH\BF"], align 16, !dbg !65
@des3_test_cbc_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\91\1Cm\CFH\A7\C3M", [8 x i8] c"`\1Av\8F\A1\F9f\F1", [8 x i8] c"\A1P\0F\99\B2\CDdv"], align 16, !dbg !67
@memset_func = internal constant i8* (i8*, i32, i64)* @memset, align 8, !dbg !72

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypt_cbc_wrapper(%struct.mbedtls_des_context* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 !dbg !92 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %1, metadata !108, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i64 %2, metadata !109, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %3, metadata !110, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %4, metadata !111, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %5, metadata !112, metadata !DIExpression()), !dbg !107
  %7 = call %struct.smack_value* (%struct.mbedtls_des_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.mbedtls_des_context*, ...)*)(%struct.mbedtls_des_context* %0), !dbg !113
  call void @public_in(%struct.smack_value* %7), !dbg !114
  %8 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %1), !dbg !115
  call void @public_in(%struct.smack_value* %8), !dbg !116
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !117
  call void @public_in(%struct.smack_value* %9), !dbg !118
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !119
  call void @public_in(%struct.smack_value* %10), !dbg !120
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !121
  call void @public_in(%struct.smack_value* %11), !dbg !122
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !123
  call void @public_in(%struct.smack_value* %12), !dbg !124
  %13 = call %struct.smack_value* @__SMACK_values(i8* %3, i32 16), !dbg !125
  call void @public_in(%struct.smack_value* %13), !dbg !126
  %14 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 64), !dbg !127
  call void @public_in(%struct.smack_value* %14), !dbg !128
  %15 = call %struct.smack_value* @__SMACK_values(i8* %5, i32 64), !dbg !129
  call void @public_in(%struct.smack_value* %15), !dbg !130
  %16 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !131
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0, !dbg !132
  %18 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %17), !dbg !133
  call void @public_in(%struct.smack_value* %18), !dbg !134
  %19 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypt_cbc_wrapper_t() #0 !dbg !137 {
  %1 = alloca [16 x i8], align 16
  %2 = call %struct.mbedtls_des_context* (...) @getctx(), !dbg !140
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %2, metadata !141, metadata !DIExpression()), !dbg !142
  %3 = call i32 (...) @getmod(), !dbg !143
  call void @llvm.dbg.value(metadata i32 %3, metadata !144, metadata !DIExpression()), !dbg !142
  %4 = call i32 (...) @getlen(), !dbg !145
  %5 = sext i32 %4 to i64, !dbg !145
  call void @llvm.dbg.value(metadata i64 %5, metadata !146, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !147, metadata !DIExpression()), !dbg !149
  %6 = bitcast [16 x i8]* %1 to i8*, !dbg !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds (<{ i8, [15 x i8] }>, <{ i8, [15 x i8] }>* @__const.crypt_cbc_wrapper_t.iv, i32 0, i32 0), i64 16, i1 false), !dbg !149
  %7 = call i8* (...) @getpt(), !dbg !150
  call void @llvm.dbg.value(metadata i8* %7, metadata !151, metadata !DIExpression()), !dbg !142
  %8 = call i8* (...) @getpt2(), !dbg !152
  call void @llvm.dbg.value(metadata i8* %8, metadata !153, metadata !DIExpression()), !dbg !142
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !154
  %10 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* %2, i32 %3, i64 %5, i8* %9, i8* %7, i8* %8), !dbg !155
  ret void, !dbg !156
}

declare dso_local %struct.mbedtls_des_context* @getctx(...) #2

declare dso_local i32 @getmod(...) #2

declare dso_local i32 @getlen(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @getpt(...) #2

declare dso_local i8* @getpt2(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_des_init(%struct.mbedtls_des_context* %0) #0 !dbg !157 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !165, metadata !DIExpression()), !dbg !166
  %2 = bitcast %struct.mbedtls_des_context* %0 to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 128, i1 false), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_des_free(%struct.mbedtls_des_context* %0) #0 !dbg !169 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !170, metadata !DIExpression()), !dbg !171
  %2 = icmp eq %struct.mbedtls_des_context* %0, null, !dbg !172
  br i1 %2, label %3, label %4, !dbg !174

3:                                                ; preds = %1
  br label %6, !dbg !175

4:                                                ; preds = %1
  %5 = bitcast %struct.mbedtls_des_context* %0 to i8*, !dbg !176
  call void @mbedtls_platform_zeroize(i8* %5, i64 128), !dbg !177
  br label %6, !dbg !178

6:                                                ; preds = %4, %3
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_des3_init(%struct.mbedtls_des3_context* %0) #0 !dbg !179 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !190, metadata !DIExpression()), !dbg !191
  %2 = bitcast %struct.mbedtls_des3_context* %0 to i8*, !dbg !192
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 384, i1 false), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_des3_free(%struct.mbedtls_des3_context* %0) #0 !dbg !194 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !195, metadata !DIExpression()), !dbg !196
  %2 = icmp eq %struct.mbedtls_des3_context* %0, null, !dbg !197
  br i1 %2, label %3, label %4, !dbg !199

3:                                                ; preds = %1
  br label %6, !dbg !200

4:                                                ; preds = %1
  %5 = bitcast %struct.mbedtls_des3_context* %0 to i8*, !dbg !201
  call void @mbedtls_platform_zeroize(i8* %5, i64 384), !dbg !202
  br label %6, !dbg !203

6:                                                ; preds = %4, %3
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_des_key_set_parity(i8* %0) #0 !dbg !204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 0, metadata !209, metadata !DIExpression()), !dbg !208
  br label %2, !dbg !210

2:                                                ; preds = %15, %1
  %.0 = phi i32 [ 0, %1 ], [ %16, %15 ], !dbg !212
  call void @llvm.dbg.value(metadata i32 %.0, metadata !209, metadata !DIExpression()), !dbg !208
  %3 = icmp slt i32 %.0, 8, !dbg !213
  br i1 %3, label %4, label %17, !dbg !215

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !216
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !216
  %7 = load i8, i8* %6, align 1, !dbg !216
  %8 = zext i8 %7 to i32, !dbg !216
  %9 = sdiv i32 %8, 2, !dbg !217
  %10 = sext i32 %9 to i64, !dbg !218
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* @odd_parity_table, i64 0, i64 %10, !dbg !218
  %12 = load i8, i8* %11, align 1, !dbg !218
  %13 = sext i32 %.0 to i64, !dbg !219
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !219
  store i8 %12, i8* %14, align 1, !dbg !220
  br label %15, !dbg !219

15:                                               ; preds = %4
  %16 = add nsw i32 %.0, 1, !dbg !221
  call void @llvm.dbg.value(metadata i32 %16, metadata !209, metadata !DIExpression()), !dbg !208
  br label %2, !dbg !222, !llvm.loop !223

17:                                               ; preds = %2
  ret void, !dbg !226
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_key_check_key_parity(i8* %0) #0 !dbg !227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 0, metadata !232, metadata !DIExpression()), !dbg !231
  br label %2, !dbg !233

2:                                                ; preds = %21, %1
  %.01 = phi i32 [ 0, %1 ], [ %22, %21 ], !dbg !235
  call void @llvm.dbg.value(metadata i32 %.01, metadata !232, metadata !DIExpression()), !dbg !231
  %3 = icmp slt i32 %.01, 8, !dbg !236
  br i1 %3, label %4, label %23, !dbg !238

4:                                                ; preds = %2
  %5 = sext i32 %.01 to i64, !dbg !239
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !239
  %7 = load i8, i8* %6, align 1, !dbg !239
  %8 = zext i8 %7 to i32, !dbg !239
  %9 = sext i32 %.01 to i64, !dbg !241
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !241
  %11 = load i8, i8* %10, align 1, !dbg !241
  %12 = zext i8 %11 to i32, !dbg !241
  %13 = sdiv i32 %12, 2, !dbg !242
  %14 = sext i32 %13 to i64, !dbg !243
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* @odd_parity_table, i64 0, i64 %14, !dbg !243
  %16 = load i8, i8* %15, align 1, !dbg !243
  %17 = zext i8 %16 to i32, !dbg !243
  %18 = icmp ne i32 %8, %17, !dbg !244
  br i1 %18, label %19, label %20, !dbg !245

19:                                               ; preds = %4
  br label %24, !dbg !246

20:                                               ; preds = %4
  br label %21, !dbg !247

21:                                               ; preds = %20
  %22 = add nsw i32 %.01, 1, !dbg !248
  call void @llvm.dbg.value(metadata i32 %22, metadata !232, metadata !DIExpression()), !dbg !231
  br label %2, !dbg !249, !llvm.loop !250

23:                                               ; preds = %2
  br label %24, !dbg !252

24:                                               ; preds = %23, %19
  %.0 = phi i32 [ 1, %19 ], [ 0, %23 ], !dbg !231
  ret i32 %.0, !dbg !253
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_key_check_weak(i8* %0) #0 !dbg !254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 0, metadata !257, metadata !DIExpression()), !dbg !256
  br label %2, !dbg !258

2:                                                ; preds = %12, %1
  %.01 = phi i32 [ 0, %1 ], [ %13, %12 ], !dbg !260
  call void @llvm.dbg.value(metadata i32 %.01, metadata !257, metadata !DIExpression()), !dbg !256
  %3 = icmp slt i32 %.01, 16, !dbg !261
  br i1 %3, label %4, label %14, !dbg !263

4:                                                ; preds = %2
  %5 = sext i32 %.01 to i64, !dbg !264
  %6 = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_key_table, i64 0, i64 %5, !dbg !264
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !264
  %8 = call i32 @memcmp(i8* %7, i8* %0, i64 8) #7, !dbg !266
  %9 = icmp eq i32 %8, 0, !dbg !267
  br i1 %9, label %10, label %11, !dbg !268

10:                                               ; preds = %4
  br label %15, !dbg !269

11:                                               ; preds = %4
  br label %12, !dbg !270

12:                                               ; preds = %11
  %13 = add nsw i32 %.01, 1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %13, metadata !257, metadata !DIExpression()), !dbg !256
  br label %2, !dbg !272, !llvm.loop !273

14:                                               ; preds = %2
  br label %15, !dbg !275

15:                                               ; preds = %14, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %14 ], !dbg !256
  ret i32 %.0, !dbg !276
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_des_setkey(i32* %0, i8* %1) #0 !dbg !277 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i8* %1, metadata !283, metadata !DIExpression()), !dbg !282
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !284
  %4 = call i32 @mbedtls_get_unaligned_uint32(i8* %3), !dbg !284
  %5 = call i32 @llvm.bswap.i32(i32 %4), !dbg !284
  call void @llvm.dbg.value(metadata i32 %5, metadata !285, metadata !DIExpression()), !dbg !282
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !286
  %7 = call i32 @mbedtls_get_unaligned_uint32(i8* %6), !dbg !286
  %8 = call i32 @llvm.bswap.i32(i32 %7), !dbg !286
  call void @llvm.dbg.value(metadata i32 %8, metadata !287, metadata !DIExpression()), !dbg !282
  %9 = lshr i32 %8, 4, !dbg !288
  %10 = xor i32 %9, %5, !dbg !289
  %11 = and i32 %10, 252645135, !dbg !290
  call void @llvm.dbg.value(metadata i32 %11, metadata !291, metadata !DIExpression()), !dbg !282
  %12 = xor i32 %5, %11, !dbg !292
  call void @llvm.dbg.value(metadata i32 %12, metadata !285, metadata !DIExpression()), !dbg !282
  %13 = shl i32 %11, 4, !dbg !293
  %14 = xor i32 %8, %13, !dbg !294
  call void @llvm.dbg.value(metadata i32 %14, metadata !287, metadata !DIExpression()), !dbg !282
  %15 = xor i32 %14, %12, !dbg !295
  %16 = and i32 %15, 269488144, !dbg !296
  call void @llvm.dbg.value(metadata i32 %16, metadata !291, metadata !DIExpression()), !dbg !282
  %17 = xor i32 %12, %16, !dbg !297
  call void @llvm.dbg.value(metadata i32 %17, metadata !285, metadata !DIExpression()), !dbg !282
  %18 = xor i32 %14, %16, !dbg !298
  call void @llvm.dbg.value(metadata i32 %18, metadata !287, metadata !DIExpression()), !dbg !282
  %19 = and i32 %17, 15, !dbg !299
  %20 = zext i32 %19 to i64, !dbg !300
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %20, !dbg !300
  %22 = load i32, i32* %21, align 4, !dbg !300
  %23 = shl i32 %22, 3, !dbg !301
  %24 = lshr i32 %17, 8, !dbg !302
  %25 = and i32 %24, 15, !dbg !303
  %26 = zext i32 %25 to i64, !dbg !304
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %26, !dbg !304
  %28 = load i32, i32* %27, align 4, !dbg !304
  %29 = shl i32 %28, 2, !dbg !305
  %30 = or i32 %23, %29, !dbg !306
  %31 = lshr i32 %17, 16, !dbg !307
  %32 = and i32 %31, 15, !dbg !308
  %33 = zext i32 %32 to i64, !dbg !309
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %33, !dbg !309
  %35 = load i32, i32* %34, align 4, !dbg !309
  %36 = shl i32 %35, 1, !dbg !310
  %37 = or i32 %30, %36, !dbg !311
  %38 = lshr i32 %17, 24, !dbg !312
  %39 = and i32 %38, 15, !dbg !313
  %40 = zext i32 %39 to i64, !dbg !314
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %40, !dbg !314
  %42 = load i32, i32* %41, align 4, !dbg !314
  %43 = or i32 %37, %42, !dbg !315
  %44 = lshr i32 %17, 5, !dbg !316
  %45 = and i32 %44, 15, !dbg !317
  %46 = zext i32 %45 to i64, !dbg !318
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %46, !dbg !318
  %48 = load i32, i32* %47, align 4, !dbg !318
  %49 = shl i32 %48, 7, !dbg !319
  %50 = or i32 %43, %49, !dbg !320
  %51 = lshr i32 %17, 13, !dbg !321
  %52 = and i32 %51, 15, !dbg !322
  %53 = zext i32 %52 to i64, !dbg !323
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %53, !dbg !323
  %55 = load i32, i32* %54, align 4, !dbg !323
  %56 = shl i32 %55, 6, !dbg !324
  %57 = or i32 %50, %56, !dbg !325
  %58 = lshr i32 %17, 21, !dbg !326
  %59 = and i32 %58, 15, !dbg !327
  %60 = zext i32 %59 to i64, !dbg !328
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %60, !dbg !328
  %62 = load i32, i32* %61, align 4, !dbg !328
  %63 = shl i32 %62, 5, !dbg !329
  %64 = or i32 %57, %63, !dbg !330
  %65 = lshr i32 %17, 29, !dbg !331
  %66 = and i32 %65, 15, !dbg !332
  %67 = zext i32 %66 to i64, !dbg !333
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %67, !dbg !333
  %69 = load i32, i32* %68, align 4, !dbg !333
  %70 = shl i32 %69, 4, !dbg !334
  %71 = or i32 %64, %70, !dbg !335
  call void @llvm.dbg.value(metadata i32 %71, metadata !285, metadata !DIExpression()), !dbg !282
  %72 = lshr i32 %18, 1, !dbg !336
  %73 = and i32 %72, 15, !dbg !337
  %74 = zext i32 %73 to i64, !dbg !338
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %74, !dbg !338
  %76 = load i32, i32* %75, align 4, !dbg !338
  %77 = shl i32 %76, 3, !dbg !339
  %78 = lshr i32 %18, 9, !dbg !340
  %79 = and i32 %78, 15, !dbg !341
  %80 = zext i32 %79 to i64, !dbg !342
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %80, !dbg !342
  %82 = load i32, i32* %81, align 4, !dbg !342
  %83 = shl i32 %82, 2, !dbg !343
  %84 = or i32 %77, %83, !dbg !344
  %85 = lshr i32 %18, 17, !dbg !345
  %86 = and i32 %85, 15, !dbg !346
  %87 = zext i32 %86 to i64, !dbg !347
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %87, !dbg !347
  %89 = load i32, i32* %88, align 4, !dbg !347
  %90 = shl i32 %89, 1, !dbg !348
  %91 = or i32 %84, %90, !dbg !349
  %92 = lshr i32 %18, 25, !dbg !350
  %93 = and i32 %92, 15, !dbg !351
  %94 = zext i32 %93 to i64, !dbg !352
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %94, !dbg !352
  %96 = load i32, i32* %95, align 4, !dbg !352
  %97 = or i32 %91, %96, !dbg !353
  %98 = lshr i32 %18, 4, !dbg !354
  %99 = and i32 %98, 15, !dbg !355
  %100 = zext i32 %99 to i64, !dbg !356
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %100, !dbg !356
  %102 = load i32, i32* %101, align 4, !dbg !356
  %103 = shl i32 %102, 7, !dbg !357
  %104 = or i32 %97, %103, !dbg !358
  %105 = lshr i32 %18, 12, !dbg !359
  %106 = and i32 %105, 15, !dbg !360
  %107 = zext i32 %106 to i64, !dbg !361
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %107, !dbg !361
  %109 = load i32, i32* %108, align 4, !dbg !361
  %110 = shl i32 %109, 6, !dbg !362
  %111 = or i32 %104, %110, !dbg !363
  %112 = lshr i32 %18, 20, !dbg !364
  %113 = and i32 %112, 15, !dbg !365
  %114 = zext i32 %113 to i64, !dbg !366
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %114, !dbg !366
  %116 = load i32, i32* %115, align 4, !dbg !366
  %117 = shl i32 %116, 5, !dbg !367
  %118 = or i32 %111, %117, !dbg !368
  %119 = lshr i32 %18, 28, !dbg !369
  %120 = and i32 %119, 15, !dbg !370
  %121 = zext i32 %120 to i64, !dbg !371
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %121, !dbg !371
  %123 = load i32, i32* %122, align 4, !dbg !371
  %124 = shl i32 %123, 4, !dbg !372
  %125 = or i32 %118, %124, !dbg !373
  call void @llvm.dbg.value(metadata i32 %125, metadata !287, metadata !DIExpression()), !dbg !282
  %126 = and i32 %71, 268435455, !dbg !374
  call void @llvm.dbg.value(metadata i32 %126, metadata !285, metadata !DIExpression()), !dbg !282
  %127 = and i32 %125, 268435455, !dbg !375
  call void @llvm.dbg.value(metadata i32 %127, metadata !287, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 0, metadata !376, metadata !DIExpression()), !dbg !282
  br label %128, !dbg !377

128:                                              ; preds = %285, %2
  %.03 = phi i32 [ %126, %2 ], [ %.14, %285 ], !dbg !282
  %.02 = phi i32 [ 0, %2 ], [ %286, %285 ], !dbg !379
  %.01 = phi i32 [ %127, %2 ], [ %.1, %285 ], !dbg !282
  %.0 = phi i32* [ %0, %2 ], [ %284, %285 ]
  call void @llvm.dbg.value(metadata i32* %.0, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %.01, metadata !287, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %.02, metadata !376, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %.03, metadata !285, metadata !DIExpression()), !dbg !282
  %129 = icmp slt i32 %.02, 16, !dbg !380
  br i1 %129, label %130, label %287, !dbg !382

130:                                              ; preds = %128
  %131 = icmp slt i32 %.02, 2, !dbg !383
  br i1 %131, label %136, label %132, !dbg !386

132:                                              ; preds = %130
  %133 = icmp eq i32 %.02, 8, !dbg !387
  br i1 %133, label %136, label %134, !dbg !388

134:                                              ; preds = %132
  %135 = icmp eq i32 %.02, 15, !dbg !389
  br i1 %135, label %136, label %145, !dbg !390

136:                                              ; preds = %134, %132, %130
  %137 = shl i32 %.03, 1, !dbg !391
  %138 = lshr i32 %.03, 27, !dbg !393
  %139 = or i32 %137, %138, !dbg !394
  %140 = and i32 %139, 268435455, !dbg !395
  call void @llvm.dbg.value(metadata i32 %140, metadata !285, metadata !DIExpression()), !dbg !282
  %141 = shl i32 %.01, 1, !dbg !396
  %142 = lshr i32 %.01, 27, !dbg !397
  %143 = or i32 %141, %142, !dbg !398
  %144 = and i32 %143, 268435455, !dbg !399
  call void @llvm.dbg.value(metadata i32 %144, metadata !287, metadata !DIExpression()), !dbg !282
  br label %154, !dbg !400

145:                                              ; preds = %134
  %146 = shl i32 %.03, 2, !dbg !401
  %147 = lshr i32 %.03, 26, !dbg !403
  %148 = or i32 %146, %147, !dbg !404
  %149 = and i32 %148, 268435455, !dbg !405
  call void @llvm.dbg.value(metadata i32 %149, metadata !285, metadata !DIExpression()), !dbg !282
  %150 = shl i32 %.01, 2, !dbg !406
  %151 = lshr i32 %.01, 26, !dbg !407
  %152 = or i32 %150, %151, !dbg !408
  %153 = and i32 %152, 268435455, !dbg !409
  call void @llvm.dbg.value(metadata i32 %153, metadata !287, metadata !DIExpression()), !dbg !282
  br label %154

154:                                              ; preds = %145, %136
  %.14 = phi i32 [ %140, %136 ], [ %149, %145 ], !dbg !410
  %.1 = phi i32 [ %144, %136 ], [ %153, %145 ], !dbg !410
  call void @llvm.dbg.value(metadata i32 %.1, metadata !287, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %.14, metadata !285, metadata !DIExpression()), !dbg !282
  %155 = shl i32 %.14, 4, !dbg !411
  %156 = and i32 %155, 603979776, !dbg !412
  %157 = shl i32 %.14, 28, !dbg !413
  %158 = and i32 %157, 268435456, !dbg !414
  %159 = or i32 %156, %158, !dbg !415
  %160 = shl i32 %.14, 14, !dbg !416
  %161 = and i32 %160, 134217728, !dbg !417
  %162 = or i32 %159, %161, !dbg !418
  %163 = shl i32 %.14, 18, !dbg !419
  %164 = and i32 %163, 34078720, !dbg !420
  %165 = or i32 %162, %164, !dbg !421
  %166 = shl i32 %.14, 6, !dbg !422
  %167 = and i32 %166, 16777216, !dbg !423
  %168 = or i32 %165, %167, !dbg !424
  %169 = shl i32 %.14, 9, !dbg !425
  %170 = and i32 %169, 2097152, !dbg !426
  %171 = or i32 %168, %170, !dbg !427
  %172 = lshr i32 %.14, 1, !dbg !428
  %173 = and i32 %172, 1048576, !dbg !429
  %174 = or i32 %171, %173, !dbg !430
  %175 = shl i32 %.14, 10, !dbg !431
  %176 = and i32 %175, 262144, !dbg !432
  %177 = or i32 %174, %176, !dbg !433
  %178 = shl i32 %.14, 2, !dbg !434
  %179 = and i32 %178, 131072, !dbg !435
  %180 = or i32 %177, %179, !dbg !436
  %181 = lshr i32 %.14, 10, !dbg !437
  %182 = and i32 %181, 65536, !dbg !438
  %183 = or i32 %180, %182, !dbg !439
  %184 = lshr i32 %.1, 13, !dbg !440
  %185 = and i32 %184, 8192, !dbg !441
  %186 = or i32 %183, %185, !dbg !442
  %187 = lshr i32 %.1, 4, !dbg !443
  %188 = and i32 %187, 4096, !dbg !444
  %189 = or i32 %186, %188, !dbg !445
  %190 = shl i32 %.1, 6, !dbg !446
  %191 = and i32 %190, 2048, !dbg !447
  %192 = or i32 %189, %191, !dbg !448
  %193 = lshr i32 %.1, 1, !dbg !449
  %194 = and i32 %193, 1024, !dbg !450
  %195 = or i32 %192, %194, !dbg !451
  %196 = lshr i32 %.1, 14, !dbg !452
  %197 = and i32 %196, 512, !dbg !453
  %198 = or i32 %195, %197, !dbg !454
  %199 = and i32 %.1, 256, !dbg !455
  %200 = or i32 %198, %199, !dbg !456
  %201 = lshr i32 %.1, 5, !dbg !457
  %202 = and i32 %201, 32, !dbg !458
  %203 = or i32 %200, %202, !dbg !459
  %204 = lshr i32 %.1, 10, !dbg !460
  %205 = and i32 %204, 16, !dbg !461
  %206 = or i32 %203, %205, !dbg !462
  %207 = lshr i32 %.1, 3, !dbg !463
  %208 = and i32 %207, 8, !dbg !464
  %209 = or i32 %206, %208, !dbg !465
  %210 = lshr i32 %.1, 18, !dbg !466
  %211 = and i32 %210, 4, !dbg !467
  %212 = or i32 %209, %211, !dbg !468
  %213 = lshr i32 %.1, 26, !dbg !469
  %214 = and i32 %213, 2, !dbg !470
  %215 = or i32 %212, %214, !dbg !471
  %216 = lshr i32 %.1, 24, !dbg !472
  %217 = and i32 %216, 1, !dbg !473
  %218 = or i32 %215, %217, !dbg !474
  %219 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !475
  call void @llvm.dbg.value(metadata i32* %219, metadata !281, metadata !DIExpression()), !dbg !282
  store i32 %218, i32* %.0, align 4, !dbg !476
  %220 = shl i32 %.14, 15, !dbg !477
  %221 = and i32 %220, 536870912, !dbg !478
  %222 = shl i32 %.14, 17, !dbg !479
  %223 = and i32 %222, 268435456, !dbg !480
  %224 = or i32 %221, %223, !dbg !481
  %225 = shl i32 %.14, 10, !dbg !482
  %226 = and i32 %225, 134217728, !dbg !483
  %227 = or i32 %224, %226, !dbg !484
  %228 = shl i32 %.14, 22, !dbg !485
  %229 = and i32 %228, 67108864, !dbg !486
  %230 = or i32 %227, %229, !dbg !487
  %231 = lshr i32 %.14, 2, !dbg !488
  %232 = and i32 %231, 33554432, !dbg !489
  %233 = or i32 %230, %232, !dbg !490
  %234 = shl i32 %.14, 1, !dbg !491
  %235 = and i32 %234, 16777216, !dbg !492
  %236 = or i32 %233, %235, !dbg !493
  %237 = shl i32 %.14, 16, !dbg !494
  %238 = and i32 %237, 2097152, !dbg !495
  %239 = or i32 %236, %238, !dbg !496
  %240 = shl i32 %.14, 11, !dbg !497
  %241 = and i32 %240, 1048576, !dbg !498
  %242 = or i32 %239, %241, !dbg !499
  %243 = shl i32 %.14, 3, !dbg !500
  %244 = and i32 %243, 524288, !dbg !501
  %245 = or i32 %242, %244, !dbg !502
  %246 = lshr i32 %.14, 6, !dbg !503
  %247 = and i32 %246, 262144, !dbg !504
  %248 = or i32 %245, %247, !dbg !505
  %249 = shl i32 %.14, 15, !dbg !506
  %250 = and i32 %249, 131072, !dbg !507
  %251 = or i32 %248, %250, !dbg !508
  %252 = lshr i32 %.14, 4, !dbg !509
  %253 = and i32 %252, 65536, !dbg !510
  %254 = or i32 %251, %253, !dbg !511
  %255 = lshr i32 %.1, 2, !dbg !512
  %256 = and i32 %255, 8192, !dbg !513
  %257 = or i32 %254, %256, !dbg !514
  %258 = shl i32 %.1, 8, !dbg !515
  %259 = and i32 %258, 4096, !dbg !516
  %260 = or i32 %257, %259, !dbg !517
  %261 = lshr i32 %.1, 14, !dbg !518
  %262 = and i32 %261, 2056, !dbg !519
  %263 = or i32 %260, %262, !dbg !520
  %264 = lshr i32 %.1, 9, !dbg !521
  %265 = and i32 %264, 1024, !dbg !522
  %266 = or i32 %263, %265, !dbg !523
  %267 = and i32 %.1, 512, !dbg !524
  %268 = or i32 %266, %267, !dbg !525
  %269 = shl i32 %.1, 7, !dbg !526
  %270 = and i32 %269, 256, !dbg !527
  %271 = or i32 %268, %270, !dbg !528
  %272 = lshr i32 %.1, 7, !dbg !529
  %273 = and i32 %272, 32, !dbg !530
  %274 = or i32 %271, %273, !dbg !531
  %275 = lshr i32 %.1, 3, !dbg !532
  %276 = and i32 %275, 17, !dbg !533
  %277 = or i32 %274, %276, !dbg !534
  %278 = shl i32 %.1, 2, !dbg !535
  %279 = and i32 %278, 4, !dbg !536
  %280 = or i32 %277, %279, !dbg !537
  %281 = lshr i32 %.1, 21, !dbg !538
  %282 = and i32 %281, 2, !dbg !539
  %283 = or i32 %280, %282, !dbg !540
  %284 = getelementptr inbounds i32, i32* %219, i32 1, !dbg !541
  call void @llvm.dbg.value(metadata i32* %284, metadata !281, metadata !DIExpression()), !dbg !282
  store i32 %283, i32* %219, align 4, !dbg !542
  br label %285, !dbg !543

285:                                              ; preds = %154
  %286 = add nsw i32 %.02, 1, !dbg !544
  call void @llvm.dbg.value(metadata i32 %286, metadata !376, metadata !DIExpression()), !dbg !282
  br label %128, !dbg !545, !llvm.loop !546

287:                                              ; preds = %128
  ret void, !dbg !548
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* %0, i8* %1) #0 !dbg !549 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %1, metadata !554, metadata !DIExpression()), !dbg !553
  %3 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !555
  %4 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0, !dbg !556
  call void @mbedtls_des_setkey(i32* %4, i8* %1), !dbg !557
  ret i32 0, !dbg !558
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* %0, i8* %1) #0 !dbg !559 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i8* %1, metadata !562, metadata !DIExpression()), !dbg !561
  %3 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !563
  %4 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0, !dbg !564
  call void @mbedtls_des_setkey(i32* %4, i8* %1), !dbg !565
  call void @llvm.dbg.value(metadata i32 0, metadata !566, metadata !DIExpression()), !dbg !561
  br label %5, !dbg !567

5:                                                ; preds = %46, %2
  %.0 = phi i32 [ 0, %2 ], [ %47, %46 ], !dbg !569
  call void @llvm.dbg.value(metadata i32 %.0, metadata !566, metadata !DIExpression()), !dbg !561
  %6 = icmp slt i32 %.0, 16, !dbg !570
  br i1 %6, label %7, label %48, !dbg !572

7:                                                ; preds = %5
  br label %8, !dbg !573

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !575
  %10 = sext i32 %.0 to i64, !dbg !575
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 %10, !dbg !575
  %12 = load i32, i32* %11, align 4, !dbg !575
  call void @llvm.dbg.value(metadata i32 %12, metadata !577, metadata !DIExpression()), !dbg !578
  %13 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !575
  %14 = sub nsw i32 30, %.0, !dbg !575
  %15 = sext i32 %14 to i64, !dbg !575
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %15, !dbg !575
  %17 = load i32, i32* %16, align 4, !dbg !575
  %18 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !575
  %19 = sext i32 %.0 to i64, !dbg !575
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %19, !dbg !575
  store i32 %17, i32* %20, align 4, !dbg !575
  %21 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !575
  %22 = sub nsw i32 30, %.0, !dbg !575
  %23 = sext i32 %22 to i64, !dbg !575
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 %23, !dbg !575
  store i32 %12, i32* %24, align 4, !dbg !575
  call void @llvm.dbg.value(metadata i32 0, metadata !577, metadata !DIExpression()), !dbg !578
  br label %25, !dbg !575

25:                                               ; preds = %8
  br label %26, !dbg !579

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !580
  %28 = add nsw i32 %.0, 1, !dbg !580
  %29 = sext i32 %28 to i64, !dbg !580
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 %29, !dbg !580
  %31 = load i32, i32* %30, align 4, !dbg !580
  call void @llvm.dbg.value(metadata i32 %31, metadata !582, metadata !DIExpression()), !dbg !583
  %32 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !580
  %33 = sub nsw i32 31, %.0, !dbg !580
  %34 = sext i32 %33 to i64, !dbg !580
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %32, i64 0, i64 %34, !dbg !580
  %36 = load i32, i32* %35, align 4, !dbg !580
  %37 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !580
  %38 = add nsw i32 %.0, 1, !dbg !580
  %39 = sext i32 %38 to i64, !dbg !580
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %37, i64 0, i64 %39, !dbg !580
  store i32 %36, i32* %40, align 4, !dbg !580
  %41 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !580
  %42 = sub nsw i32 31, %.0, !dbg !580
  %43 = sext i32 %42 to i64, !dbg !580
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %41, i64 0, i64 %43, !dbg !580
  store i32 %31, i32* %44, align 4, !dbg !580
  call void @llvm.dbg.value(metadata i32 0, metadata !582, metadata !DIExpression()), !dbg !583
  br label %45, !dbg !580

45:                                               ; preds = %26
  br label %46, !dbg !584

46:                                               ; preds = %45
  %47 = add nsw i32 %.0, 2, !dbg !585
  call void @llvm.dbg.value(metadata i32 %47, metadata !566, metadata !DIExpression()), !dbg !561
  br label %5, !dbg !586, !llvm.loop !587

48:                                               ; preds = %5
  ret i32 0, !dbg !589
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* %0, i8* %1) #0 !dbg !590 {
  %3 = alloca [96 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !593, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i8* %1, metadata !595, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.declare(metadata [96 x i32]* %3, metadata !596, metadata !DIExpression()), !dbg !597
  %4 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0, !dbg !598
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !599
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !600
  call void @des3_set2key(i32* %5, i32* %6, i8* %1), !dbg !601
  %7 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !602
  %8 = bitcast i32* %7 to i8*, !dbg !602
  call void @mbedtls_platform_zeroize(i8* %8, i64 384), !dbg !603
  ret i32 0, !dbg !604
}

; Function Attrs: noinline nounwind uwtable
define internal void @des3_set2key(i32* %0, i32* %1, i8* %2) #0 !dbg !605 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32* %1, metadata !610, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %2, metadata !611, metadata !DIExpression()), !dbg !609
  call void @mbedtls_des_setkey(i32* %0, i8* %2), !dbg !612
  %4 = getelementptr inbounds i32, i32* %1, i64 32, !dbg !613
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !614
  call void @mbedtls_des_setkey(i32* %4, i8* %5), !dbg !615
  call void @llvm.dbg.value(metadata i32 0, metadata !616, metadata !DIExpression()), !dbg !609
  br label %6, !dbg !617

6:                                                ; preds = %62, %3
  %.0 = phi i32 [ 0, %3 ], [ %63, %62 ], !dbg !619
  call void @llvm.dbg.value(metadata i32 %.0, metadata !616, metadata !DIExpression()), !dbg !609
  %7 = icmp slt i32 %.0, 32, !dbg !620
  br i1 %7, label %8, label %64, !dbg !622

8:                                                ; preds = %6
  %9 = sub nsw i32 30, %.0, !dbg !623
  %10 = sext i32 %9 to i64, !dbg !625
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !625
  %12 = load i32, i32* %11, align 4, !dbg !625
  %13 = sext i32 %.0 to i64, !dbg !626
  %14 = getelementptr inbounds i32, i32* %1, i64 %13, !dbg !626
  store i32 %12, i32* %14, align 4, !dbg !627
  %15 = sub nsw i32 31, %.0, !dbg !628
  %16 = sext i32 %15 to i64, !dbg !629
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !629
  %18 = load i32, i32* %17, align 4, !dbg !629
  %19 = add nsw i32 %.0, 1, !dbg !630
  %20 = sext i32 %19 to i64, !dbg !631
  %21 = getelementptr inbounds i32, i32* %1, i64 %20, !dbg !631
  store i32 %18, i32* %21, align 4, !dbg !632
  %22 = sub nsw i32 62, %.0, !dbg !633
  %23 = sext i32 %22 to i64, !dbg !634
  %24 = getelementptr inbounds i32, i32* %1, i64 %23, !dbg !634
  %25 = load i32, i32* %24, align 4, !dbg !634
  %26 = add nsw i32 %.0, 32, !dbg !635
  %27 = sext i32 %26 to i64, !dbg !636
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !636
  store i32 %25, i32* %28, align 4, !dbg !637
  %29 = sub nsw i32 63, %.0, !dbg !638
  %30 = sext i32 %29 to i64, !dbg !639
  %31 = getelementptr inbounds i32, i32* %1, i64 %30, !dbg !639
  %32 = load i32, i32* %31, align 4, !dbg !639
  %33 = add nsw i32 %.0, 33, !dbg !640
  %34 = sext i32 %33 to i64, !dbg !641
  %35 = getelementptr inbounds i32, i32* %0, i64 %34, !dbg !641
  store i32 %32, i32* %35, align 4, !dbg !642
  %36 = sext i32 %.0 to i64, !dbg !643
  %37 = getelementptr inbounds i32, i32* %0, i64 %36, !dbg !643
  %38 = load i32, i32* %37, align 4, !dbg !643
  %39 = add nsw i32 %.0, 64, !dbg !644
  %40 = sext i32 %39 to i64, !dbg !645
  %41 = getelementptr inbounds i32, i32* %0, i64 %40, !dbg !645
  store i32 %38, i32* %41, align 4, !dbg !646
  %42 = add nsw i32 %.0, 1, !dbg !647
  %43 = sext i32 %42 to i64, !dbg !648
  %44 = getelementptr inbounds i32, i32* %0, i64 %43, !dbg !648
  %45 = load i32, i32* %44, align 4, !dbg !648
  %46 = add nsw i32 %.0, 65, !dbg !649
  %47 = sext i32 %46 to i64, !dbg !650
  %48 = getelementptr inbounds i32, i32* %0, i64 %47, !dbg !650
  store i32 %45, i32* %48, align 4, !dbg !651
  %49 = sext i32 %.0 to i64, !dbg !652
  %50 = getelementptr inbounds i32, i32* %1, i64 %49, !dbg !652
  %51 = load i32, i32* %50, align 4, !dbg !652
  %52 = add nsw i32 %.0, 64, !dbg !653
  %53 = sext i32 %52 to i64, !dbg !654
  %54 = getelementptr inbounds i32, i32* %1, i64 %53, !dbg !654
  store i32 %51, i32* %54, align 4, !dbg !655
  %55 = add nsw i32 %.0, 1, !dbg !656
  %56 = sext i32 %55 to i64, !dbg !657
  %57 = getelementptr inbounds i32, i32* %1, i64 %56, !dbg !657
  %58 = load i32, i32* %57, align 4, !dbg !657
  %59 = add nsw i32 %.0, 65, !dbg !658
  %60 = sext i32 %59 to i64, !dbg !659
  %61 = getelementptr inbounds i32, i32* %1, i64 %60, !dbg !659
  store i32 %58, i32* %61, align 4, !dbg !660
  br label %62, !dbg !661

62:                                               ; preds = %8
  %63 = add nsw i32 %.0, 2, !dbg !662
  call void @llvm.dbg.value(metadata i32 %63, metadata !616, metadata !DIExpression()), !dbg !609
  br label %6, !dbg !663, !llvm.loop !664

64:                                               ; preds = %6
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* %0, i8* %1) #0 !dbg !667 {
  %3 = alloca [96 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* %1, metadata !670, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata [96 x i32]* %3, metadata !671, metadata !DIExpression()), !dbg !672
  %4 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !673
  %5 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0, !dbg !674
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %5, i64 0, i64 0, !dbg !675
  call void @des3_set2key(i32* %4, i32* %6, i8* %1), !dbg !676
  %7 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !677
  %8 = bitcast i32* %7 to i8*, !dbg !677
  call void @mbedtls_platform_zeroize(i8* %8, i64 384), !dbg !678
  ret i32 0, !dbg !679
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* %0, i8* %1) #0 !dbg !680 {
  %3 = alloca [96 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i8* %1, metadata !683, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.declare(metadata [96 x i32]* %3, metadata !684, metadata !DIExpression()), !dbg !685
  %4 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0, !dbg !686
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !687
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !688
  call void @des3_set3key(i32* %5, i32* %6, i8* %1), !dbg !689
  %7 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !690
  %8 = bitcast i32* %7 to i8*, !dbg !690
  call void @mbedtls_platform_zeroize(i8* %8, i64 384), !dbg !691
  ret i32 0, !dbg !692
}

; Function Attrs: noinline nounwind uwtable
define internal void @des3_set3key(i32* %0, i32* %1, i8* %2) #0 !dbg !693 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32* %1, metadata !696, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8* %2, metadata !697, metadata !DIExpression()), !dbg !695
  call void @mbedtls_des_setkey(i32* %0, i8* %2), !dbg !698
  %4 = getelementptr inbounds i32, i32* %1, i64 32, !dbg !699
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !700
  call void @mbedtls_des_setkey(i32* %4, i8* %5), !dbg !701
  %6 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !702
  %7 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !703
  call void @mbedtls_des_setkey(i32* %6, i8* %7), !dbg !704
  call void @llvm.dbg.value(metadata i32 0, metadata !705, metadata !DIExpression()), !dbg !695
  br label %8, !dbg !706

8:                                                ; preds = %52, %3
  %.0 = phi i32 [ 0, %3 ], [ %53, %52 ], !dbg !708
  call void @llvm.dbg.value(metadata i32 %.0, metadata !705, metadata !DIExpression()), !dbg !695
  %9 = icmp slt i32 %.0, 32, !dbg !709
  br i1 %9, label %10, label %54, !dbg !711

10:                                               ; preds = %8
  %11 = sub nsw i32 94, %.0, !dbg !712
  %12 = sext i32 %11 to i64, !dbg !714
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !714
  %14 = load i32, i32* %13, align 4, !dbg !714
  %15 = sext i32 %.0 to i64, !dbg !715
  %16 = getelementptr inbounds i32, i32* %1, i64 %15, !dbg !715
  store i32 %14, i32* %16, align 4, !dbg !716
  %17 = sub nsw i32 95, %.0, !dbg !717
  %18 = sext i32 %17 to i64, !dbg !718
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !718
  %20 = load i32, i32* %19, align 4, !dbg !718
  %21 = add nsw i32 %.0, 1, !dbg !719
  %22 = sext i32 %21 to i64, !dbg !720
  %23 = getelementptr inbounds i32, i32* %1, i64 %22, !dbg !720
  store i32 %20, i32* %23, align 4, !dbg !721
  %24 = sub nsw i32 62, %.0, !dbg !722
  %25 = sext i32 %24 to i64, !dbg !723
  %26 = getelementptr inbounds i32, i32* %1, i64 %25, !dbg !723
  %27 = load i32, i32* %26, align 4, !dbg !723
  %28 = add nsw i32 %.0, 32, !dbg !724
  %29 = sext i32 %28 to i64, !dbg !725
  %30 = getelementptr inbounds i32, i32* %0, i64 %29, !dbg !725
  store i32 %27, i32* %30, align 4, !dbg !726
  %31 = sub nsw i32 63, %.0, !dbg !727
  %32 = sext i32 %31 to i64, !dbg !728
  %33 = getelementptr inbounds i32, i32* %1, i64 %32, !dbg !728
  %34 = load i32, i32* %33, align 4, !dbg !728
  %35 = add nsw i32 %.0, 33, !dbg !729
  %36 = sext i32 %35 to i64, !dbg !730
  %37 = getelementptr inbounds i32, i32* %0, i64 %36, !dbg !730
  store i32 %34, i32* %37, align 4, !dbg !731
  %38 = sub nsw i32 30, %.0, !dbg !732
  %39 = sext i32 %38 to i64, !dbg !733
  %40 = getelementptr inbounds i32, i32* %0, i64 %39, !dbg !733
  %41 = load i32, i32* %40, align 4, !dbg !733
  %42 = add nsw i32 %.0, 64, !dbg !734
  %43 = sext i32 %42 to i64, !dbg !735
  %44 = getelementptr inbounds i32, i32* %1, i64 %43, !dbg !735
  store i32 %41, i32* %44, align 4, !dbg !736
  %45 = sub nsw i32 31, %.0, !dbg !737
  %46 = sext i32 %45 to i64, !dbg !738
  %47 = getelementptr inbounds i32, i32* %0, i64 %46, !dbg !738
  %48 = load i32, i32* %47, align 4, !dbg !738
  %49 = add nsw i32 %.0, 65, !dbg !739
  %50 = sext i32 %49 to i64, !dbg !740
  %51 = getelementptr inbounds i32, i32* %1, i64 %50, !dbg !740
  store i32 %48, i32* %51, align 4, !dbg !741
  br label %52, !dbg !742

52:                                               ; preds = %10
  %53 = add nsw i32 %.0, 2, !dbg !743
  call void @llvm.dbg.value(metadata i32 %53, metadata !705, metadata !DIExpression()), !dbg !695
  br label %8, !dbg !744, !llvm.loop !745

54:                                               ; preds = %8
  ret void, !dbg !747
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* %0, i8* %1) #0 !dbg !748 {
  %3 = alloca [96 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* %1, metadata !751, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata [96 x i32]* %3, metadata !752, metadata !DIExpression()), !dbg !753
  %4 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !754
  %5 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0, !dbg !755
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %5, i64 0, i64 0, !dbg !756
  call void @des3_set3key(i32* %4, i32* %6, i8* %1), !dbg !757
  %7 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 0, !dbg !758
  %8 = bitcast i32* %7 to i8*, !dbg !758
  call void @mbedtls_platform_zeroize(i8* %8, i64 384), !dbg !759
  ret i32 0, !dbg !760
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* %0, i8* %1, i8* %2) #0 !dbg !761 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i8* %1, metadata !766, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i8* %2, metadata !767, metadata !DIExpression()), !dbg !765
  %4 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0, !dbg !768
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0, !dbg !769
  call void @llvm.dbg.value(metadata i32* %5, metadata !770, metadata !DIExpression()), !dbg !765
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !771
  %7 = call i32 @mbedtls_get_unaligned_uint32(i8* %6), !dbg !771
  %8 = call i32 @llvm.bswap.i32(i32 %7), !dbg !771
  call void @llvm.dbg.value(metadata i32 %8, metadata !772, metadata !DIExpression()), !dbg !765
  %9 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !773
  %10 = call i32 @mbedtls_get_unaligned_uint32(i8* %9), !dbg !773
  %11 = call i32 @llvm.bswap.i32(i32 %10), !dbg !773
  call void @llvm.dbg.value(metadata i32 %11, metadata !774, metadata !DIExpression()), !dbg !765
  br label %12, !dbg !775

12:                                               ; preds = %3
  %13 = lshr i32 %8, 4, !dbg !776
  %14 = xor i32 %13, %11, !dbg !776
  %15 = and i32 %14, 252645135, !dbg !776
  call void @llvm.dbg.value(metadata i32 %15, metadata !778, metadata !DIExpression()), !dbg !765
  %16 = xor i32 %11, %15, !dbg !776
  call void @llvm.dbg.value(metadata i32 %16, metadata !774, metadata !DIExpression()), !dbg !765
  %17 = shl i32 %15, 4, !dbg !776
  %18 = xor i32 %8, %17, !dbg !776
  call void @llvm.dbg.value(metadata i32 %18, metadata !772, metadata !DIExpression()), !dbg !765
  %19 = lshr i32 %18, 16, !dbg !776
  %20 = xor i32 %19, %16, !dbg !776
  %21 = and i32 %20, 65535, !dbg !776
  call void @llvm.dbg.value(metadata i32 %21, metadata !778, metadata !DIExpression()), !dbg !765
  %22 = xor i32 %16, %21, !dbg !776
  call void @llvm.dbg.value(metadata i32 %22, metadata !774, metadata !DIExpression()), !dbg !765
  %23 = shl i32 %21, 16, !dbg !776
  %24 = xor i32 %18, %23, !dbg !776
  call void @llvm.dbg.value(metadata i32 %24, metadata !772, metadata !DIExpression()), !dbg !765
  %25 = lshr i32 %22, 2, !dbg !776
  %26 = xor i32 %25, %24, !dbg !776
  %27 = and i32 %26, 858993459, !dbg !776
  call void @llvm.dbg.value(metadata i32 %27, metadata !778, metadata !DIExpression()), !dbg !765
  %28 = xor i32 %24, %27, !dbg !776
  call void @llvm.dbg.value(metadata i32 %28, metadata !772, metadata !DIExpression()), !dbg !765
  %29 = shl i32 %27, 2, !dbg !776
  %30 = xor i32 %22, %29, !dbg !776
  call void @llvm.dbg.value(metadata i32 %30, metadata !774, metadata !DIExpression()), !dbg !765
  %31 = lshr i32 %30, 8, !dbg !776
  %32 = xor i32 %31, %28, !dbg !776
  %33 = and i32 %32, 16711935, !dbg !776
  call void @llvm.dbg.value(metadata i32 %33, metadata !778, metadata !DIExpression()), !dbg !765
  %34 = xor i32 %28, %33, !dbg !776
  call void @llvm.dbg.value(metadata i32 %34, metadata !772, metadata !DIExpression()), !dbg !765
  %35 = shl i32 %33, 8, !dbg !776
  %36 = xor i32 %30, %35, !dbg !776
  call void @llvm.dbg.value(metadata i32 %36, metadata !774, metadata !DIExpression()), !dbg !765
  %37 = shl i32 %36, 1, !dbg !776
  %38 = lshr i32 %36, 31, !dbg !776
  %39 = or i32 %37, %38, !dbg !776
  call void @llvm.dbg.value(metadata i32 %39, metadata !774, metadata !DIExpression()), !dbg !765
  %40 = xor i32 %34, %39, !dbg !776
  %41 = and i32 %40, -1431655766, !dbg !776
  call void @llvm.dbg.value(metadata i32 %41, metadata !778, metadata !DIExpression()), !dbg !765
  %42 = xor i32 %39, %41, !dbg !776
  call void @llvm.dbg.value(metadata i32 %42, metadata !774, metadata !DIExpression()), !dbg !765
  %43 = xor i32 %34, %41, !dbg !776
  call void @llvm.dbg.value(metadata i32 %43, metadata !772, metadata !DIExpression()), !dbg !765
  %44 = shl i32 %43, 1, !dbg !776
  %45 = lshr i32 %43, 31, !dbg !776
  %46 = or i32 %44, %45, !dbg !776
  call void @llvm.dbg.value(metadata i32 %46, metadata !772, metadata !DIExpression()), !dbg !765
  br label %47, !dbg !776

47:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !779, metadata !DIExpression()), !dbg !765
  br label %48, !dbg !780

48:                                               ; preds = %165, %47
  %.03 = phi i32 [ %46, %47 ], [ %106, %165 ], !dbg !765
  %.02 = phi i32 [ 0, %47 ], [ %166, %165 ], !dbg !782
  %.01 = phi i32 [ %42, %47 ], [ %163, %165 ], !dbg !765
  %.0 = phi i32* [ %5, %47 ], [ %135, %165 ], !dbg !765
  call void @llvm.dbg.value(metadata i32* %.0, metadata !770, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 %.01, metadata !774, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 %.02, metadata !779, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 %.03, metadata !772, metadata !DIExpression()), !dbg !765
  %49 = icmp slt i32 %.02, 8, !dbg !783
  br i1 %49, label %50, label %167, !dbg !785

50:                                               ; preds = %48
  br label %51, !dbg !786

51:                                               ; preds = %50
  %52 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !788
  call void @llvm.dbg.value(metadata i32* %52, metadata !770, metadata !DIExpression()), !dbg !765
  %53 = load i32, i32* %.0, align 4, !dbg !788
  %54 = xor i32 %53, %.01, !dbg !788
  call void @llvm.dbg.value(metadata i32 %54, metadata !778, metadata !DIExpression()), !dbg !765
  %55 = and i32 %54, 63, !dbg !788
  %56 = zext i32 %55 to i64, !dbg !788
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %56, !dbg !788
  %58 = load i32, i32* %57, align 4, !dbg !788
  %59 = lshr i32 %54, 8, !dbg !788
  %60 = and i32 %59, 63, !dbg !788
  %61 = zext i32 %60 to i64, !dbg !788
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %61, !dbg !788
  %63 = load i32, i32* %62, align 4, !dbg !788
  %64 = xor i32 %58, %63, !dbg !788
  %65 = lshr i32 %54, 16, !dbg !788
  %66 = and i32 %65, 63, !dbg !788
  %67 = zext i32 %66 to i64, !dbg !788
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %67, !dbg !788
  %69 = load i32, i32* %68, align 4, !dbg !788
  %70 = xor i32 %64, %69, !dbg !788
  %71 = lshr i32 %54, 24, !dbg !788
  %72 = and i32 %71, 63, !dbg !788
  %73 = zext i32 %72 to i64, !dbg !788
  %74 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %73, !dbg !788
  %75 = load i32, i32* %74, align 4, !dbg !788
  %76 = xor i32 %70, %75, !dbg !788
  %77 = xor i32 %.03, %76, !dbg !788
  call void @llvm.dbg.value(metadata i32 %77, metadata !772, metadata !DIExpression()), !dbg !765
  %78 = getelementptr inbounds i32, i32* %52, i32 1, !dbg !788
  call void @llvm.dbg.value(metadata i32* %78, metadata !770, metadata !DIExpression()), !dbg !765
  %79 = load i32, i32* %52, align 4, !dbg !788
  %80 = shl i32 %.01, 28, !dbg !788
  %81 = lshr i32 %.01, 4, !dbg !788
  %82 = or i32 %80, %81, !dbg !788
  %83 = xor i32 %79, %82, !dbg !788
  call void @llvm.dbg.value(metadata i32 %83, metadata !778, metadata !DIExpression()), !dbg !765
  %84 = and i32 %83, 63, !dbg !788
  %85 = zext i32 %84 to i64, !dbg !788
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %85, !dbg !788
  %87 = load i32, i32* %86, align 4, !dbg !788
  %88 = lshr i32 %83, 8, !dbg !788
  %89 = and i32 %88, 63, !dbg !788
  %90 = zext i32 %89 to i64, !dbg !788
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %90, !dbg !788
  %92 = load i32, i32* %91, align 4, !dbg !788
  %93 = xor i32 %87, %92, !dbg !788
  %94 = lshr i32 %83, 16, !dbg !788
  %95 = and i32 %94, 63, !dbg !788
  %96 = zext i32 %95 to i64, !dbg !788
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %96, !dbg !788
  %98 = load i32, i32* %97, align 4, !dbg !788
  %99 = xor i32 %93, %98, !dbg !788
  %100 = lshr i32 %83, 24, !dbg !788
  %101 = and i32 %100, 63, !dbg !788
  %102 = zext i32 %101 to i64, !dbg !788
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %102, !dbg !788
  %104 = load i32, i32* %103, align 4, !dbg !788
  %105 = xor i32 %99, %104, !dbg !788
  %106 = xor i32 %77, %105, !dbg !788
  call void @llvm.dbg.value(metadata i32 %106, metadata !772, metadata !DIExpression()), !dbg !765
  br label %107, !dbg !788

107:                                              ; preds = %51
  br label %108, !dbg !790

108:                                              ; preds = %107
  %109 = getelementptr inbounds i32, i32* %78, i32 1, !dbg !791
  call void @llvm.dbg.value(metadata i32* %109, metadata !770, metadata !DIExpression()), !dbg !765
  %110 = load i32, i32* %78, align 4, !dbg !791
  %111 = xor i32 %110, %106, !dbg !791
  call void @llvm.dbg.value(metadata i32 %111, metadata !778, metadata !DIExpression()), !dbg !765
  %112 = and i32 %111, 63, !dbg !791
  %113 = zext i32 %112 to i64, !dbg !791
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %113, !dbg !791
  %115 = load i32, i32* %114, align 4, !dbg !791
  %116 = lshr i32 %111, 8, !dbg !791
  %117 = and i32 %116, 63, !dbg !791
  %118 = zext i32 %117 to i64, !dbg !791
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %118, !dbg !791
  %120 = load i32, i32* %119, align 4, !dbg !791
  %121 = xor i32 %115, %120, !dbg !791
  %122 = lshr i32 %111, 16, !dbg !791
  %123 = and i32 %122, 63, !dbg !791
  %124 = zext i32 %123 to i64, !dbg !791
  %125 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %124, !dbg !791
  %126 = load i32, i32* %125, align 4, !dbg !791
  %127 = xor i32 %121, %126, !dbg !791
  %128 = lshr i32 %111, 24, !dbg !791
  %129 = and i32 %128, 63, !dbg !791
  %130 = zext i32 %129 to i64, !dbg !791
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %130, !dbg !791
  %132 = load i32, i32* %131, align 4, !dbg !791
  %133 = xor i32 %127, %132, !dbg !791
  %134 = xor i32 %.01, %133, !dbg !791
  call void @llvm.dbg.value(metadata i32 %134, metadata !774, metadata !DIExpression()), !dbg !765
  %135 = getelementptr inbounds i32, i32* %109, i32 1, !dbg !791
  call void @llvm.dbg.value(metadata i32* %135, metadata !770, metadata !DIExpression()), !dbg !765
  %136 = load i32, i32* %109, align 4, !dbg !791
  %137 = shl i32 %106, 28, !dbg !791
  %138 = lshr i32 %106, 4, !dbg !791
  %139 = or i32 %137, %138, !dbg !791
  %140 = xor i32 %136, %139, !dbg !791
  call void @llvm.dbg.value(metadata i32 %140, metadata !778, metadata !DIExpression()), !dbg !765
  %141 = and i32 %140, 63, !dbg !791
  %142 = zext i32 %141 to i64, !dbg !791
  %143 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %142, !dbg !791
  %144 = load i32, i32* %143, align 4, !dbg !791
  %145 = lshr i32 %140, 8, !dbg !791
  %146 = and i32 %145, 63, !dbg !791
  %147 = zext i32 %146 to i64, !dbg !791
  %148 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %147, !dbg !791
  %149 = load i32, i32* %148, align 4, !dbg !791
  %150 = xor i32 %144, %149, !dbg !791
  %151 = lshr i32 %140, 16, !dbg !791
  %152 = and i32 %151, 63, !dbg !791
  %153 = zext i32 %152 to i64, !dbg !791
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %153, !dbg !791
  %155 = load i32, i32* %154, align 4, !dbg !791
  %156 = xor i32 %150, %155, !dbg !791
  %157 = lshr i32 %140, 24, !dbg !791
  %158 = and i32 %157, 63, !dbg !791
  %159 = zext i32 %158 to i64, !dbg !791
  %160 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %159, !dbg !791
  %161 = load i32, i32* %160, align 4, !dbg !791
  %162 = xor i32 %156, %161, !dbg !791
  %163 = xor i32 %134, %162, !dbg !791
  call void @llvm.dbg.value(metadata i32 %163, metadata !774, metadata !DIExpression()), !dbg !765
  br label %164, !dbg !791

164:                                              ; preds = %108
  br label %165, !dbg !793

165:                                              ; preds = %164
  %166 = add nsw i32 %.02, 1, !dbg !794
  call void @llvm.dbg.value(metadata i32 %166, metadata !779, metadata !DIExpression()), !dbg !765
  br label %48, !dbg !795, !llvm.loop !796

167:                                              ; preds = %48
  br label %168, !dbg !798

168:                                              ; preds = %167
  %169 = shl i32 %.01, 31, !dbg !799
  %170 = lshr i32 %.01, 1, !dbg !799
  %171 = or i32 %169, %170, !dbg !799
  call void @llvm.dbg.value(metadata i32 %171, metadata !774, metadata !DIExpression()), !dbg !765
  %172 = xor i32 %171, %.03, !dbg !799
  %173 = and i32 %172, -1431655766, !dbg !799
  call void @llvm.dbg.value(metadata i32 %173, metadata !778, metadata !DIExpression()), !dbg !765
  %174 = xor i32 %171, %173, !dbg !799
  call void @llvm.dbg.value(metadata i32 %174, metadata !774, metadata !DIExpression()), !dbg !765
  %175 = xor i32 %.03, %173, !dbg !799
  call void @llvm.dbg.value(metadata i32 %175, metadata !772, metadata !DIExpression()), !dbg !765
  %176 = shl i32 %175, 31, !dbg !799
  %177 = lshr i32 %175, 1, !dbg !799
  %178 = or i32 %176, %177, !dbg !799
  call void @llvm.dbg.value(metadata i32 %178, metadata !772, metadata !DIExpression()), !dbg !765
  %179 = lshr i32 %178, 8, !dbg !799
  %180 = xor i32 %179, %174, !dbg !799
  %181 = and i32 %180, 16711935, !dbg !799
  call void @llvm.dbg.value(metadata i32 %181, metadata !778, metadata !DIExpression()), !dbg !765
  %182 = xor i32 %174, %181, !dbg !799
  call void @llvm.dbg.value(metadata i32 %182, metadata !774, metadata !DIExpression()), !dbg !765
  %183 = shl i32 %181, 8, !dbg !799
  %184 = xor i32 %178, %183, !dbg !799
  call void @llvm.dbg.value(metadata i32 %184, metadata !772, metadata !DIExpression()), !dbg !765
  %185 = lshr i32 %184, 2, !dbg !799
  %186 = xor i32 %185, %182, !dbg !799
  %187 = and i32 %186, 858993459, !dbg !799
  call void @llvm.dbg.value(metadata i32 %187, metadata !778, metadata !DIExpression()), !dbg !765
  %188 = xor i32 %182, %187, !dbg !799
  call void @llvm.dbg.value(metadata i32 %188, metadata !774, metadata !DIExpression()), !dbg !765
  %189 = shl i32 %187, 2, !dbg !799
  %190 = xor i32 %184, %189, !dbg !799
  call void @llvm.dbg.value(metadata i32 %190, metadata !772, metadata !DIExpression()), !dbg !765
  %191 = lshr i32 %188, 16, !dbg !799
  %192 = xor i32 %191, %190, !dbg !799
  %193 = and i32 %192, 65535, !dbg !799
  call void @llvm.dbg.value(metadata i32 %193, metadata !778, metadata !DIExpression()), !dbg !765
  %194 = xor i32 %190, %193, !dbg !799
  call void @llvm.dbg.value(metadata i32 %194, metadata !772, metadata !DIExpression()), !dbg !765
  %195 = shl i32 %193, 16, !dbg !799
  %196 = xor i32 %188, %195, !dbg !799
  call void @llvm.dbg.value(metadata i32 %196, metadata !774, metadata !DIExpression()), !dbg !765
  %197 = lshr i32 %196, 4, !dbg !799
  %198 = xor i32 %197, %194, !dbg !799
  %199 = and i32 %198, 252645135, !dbg !799
  call void @llvm.dbg.value(metadata i32 %199, metadata !778, metadata !DIExpression()), !dbg !765
  %200 = xor i32 %194, %199, !dbg !799
  call void @llvm.dbg.value(metadata i32 %200, metadata !772, metadata !DIExpression()), !dbg !765
  %201 = shl i32 %199, 4, !dbg !799
  %202 = xor i32 %196, %201, !dbg !799
  call void @llvm.dbg.value(metadata i32 %202, metadata !774, metadata !DIExpression()), !dbg !765
  br label %203, !dbg !799

203:                                              ; preds = %168
  %204 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !801
  %205 = call i32 @llvm.bswap.i32(i32 %202), !dbg !801
  call void @mbedtls_put_unaligned_uint32(i8* %204, i32 %205), !dbg !801
  %206 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !805
  %207 = call i32 @llvm.bswap.i32(i32 %200), !dbg !805
  call void @mbedtls_put_unaligned_uint32(i8* %206, i32 %207), !dbg !805
  ret i32 0, !dbg !809
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 !dbg !810 {
  %7 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mbedtls_des_context* %0, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 %1, metadata !815, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %2, metadata !816, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %3, metadata !817, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %4, metadata !818, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %5, metadata !819, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 -110, metadata !820, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata [8 x i8]* %7, metadata !821, metadata !DIExpression()), !dbg !823
  %8 = urem i64 %2, 8, !dbg !824
  %9 = icmp ne i64 %8, 0, !dbg !824
  br i1 %9, label %10, label %11, !dbg !826

10:                                               ; preds = %6
  br label %41, !dbg !827

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 1, !dbg !828
  br i1 %12, label %13, label %25, !dbg !830

13:                                               ; preds = %11
  br label %14, !dbg !831

14:                                               ; preds = %20, %13
  %.05 = phi i8* [ %4, %13 ], [ %21, %20 ]
  %.03 = phi i64 [ %2, %13 ], [ %23, %20 ]
  %.02 = phi i8* [ %5, %13 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i8* %.02, metadata !819, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %.03, metadata !816, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %.05, metadata !818, metadata !DIExpression()), !dbg !814
  %15 = icmp ugt i64 %.03, 0, !dbg !833
  br i1 %15, label %16, label %24, !dbg !831

16:                                               ; preds = %14
  call void @mbedtls_xor(i8* %.02, i8* %.05, i8* %3, i64 8), !dbg !834
  %17 = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* %0, i8* %.02, i8* %.02), !dbg !836
  call void @llvm.dbg.value(metadata i32 %17, metadata !820, metadata !DIExpression()), !dbg !814
  %18 = icmp ne i32 %17, 0, !dbg !837
  br i1 %18, label %19, label %20, !dbg !839

19:                                               ; preds = %16
  br label %40, !dbg !840

20:                                               ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %.02, i64 8, i1 false), !dbg !841
  %21 = getelementptr inbounds i8, i8* %.05, i64 8, !dbg !842
  call void @llvm.dbg.value(metadata i8* %21, metadata !818, metadata !DIExpression()), !dbg !814
  %22 = getelementptr inbounds i8, i8* %.02, i64 8, !dbg !843
  call void @llvm.dbg.value(metadata i8* %22, metadata !819, metadata !DIExpression()), !dbg !814
  %23 = sub i64 %.03, 8, !dbg !844
  call void @llvm.dbg.value(metadata i64 %23, metadata !816, metadata !DIExpression()), !dbg !814
  br label %14, !dbg !831, !llvm.loop !845

24:                                               ; preds = %14
  br label %39, !dbg !847

25:                                               ; preds = %11
  br label %26, !dbg !848

26:                                               ; preds = %33, %25
  %.16 = phi i8* [ %4, %25 ], [ %35, %33 ]
  %.14 = phi i64 [ %2, %25 ], [ %37, %33 ]
  %.1 = phi i8* [ %5, %25 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8* %.1, metadata !819, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %.14, metadata !816, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %.16, metadata !818, metadata !DIExpression()), !dbg !814
  %27 = icmp ugt i64 %.14, 0, !dbg !850
  br i1 %27, label %28, label %38, !dbg !848

28:                                               ; preds = %26
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %.16, i64 8, i1 false), !dbg !851
  %30 = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* %0, i8* %.16, i8* %.1), !dbg !853
  call void @llvm.dbg.value(metadata i32 %30, metadata !820, metadata !DIExpression()), !dbg !814
  %31 = icmp ne i32 %30, 0, !dbg !854
  br i1 %31, label %32, label %33, !dbg !856

32:                                               ; preds = %28
  br label %40, !dbg !857

33:                                               ; preds = %28
  call void @mbedtls_xor(i8* %.1, i8* %.1, i8* %3, i64 8), !dbg !858
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !859
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %34, i64 8, i1 false), !dbg !859
  %35 = getelementptr inbounds i8, i8* %.16, i64 8, !dbg !860
  call void @llvm.dbg.value(metadata i8* %35, metadata !818, metadata !DIExpression()), !dbg !814
  %36 = getelementptr inbounds i8, i8* %.1, i64 8, !dbg !861
  call void @llvm.dbg.value(metadata i8* %36, metadata !819, metadata !DIExpression()), !dbg !814
  %37 = sub i64 %.14, 8, !dbg !862
  call void @llvm.dbg.value(metadata i64 %37, metadata !816, metadata !DIExpression()), !dbg !814
  br label %26, !dbg !848, !llvm.loop !863

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %24
  call void @llvm.dbg.value(metadata i32 0, metadata !820, metadata !DIExpression()), !dbg !814
  br label %40, !dbg !865

40:                                               ; preds = %39, %32, %19
  %.01 = phi i32 [ %17, %19 ], [ 0, %39 ], [ %30, %32 ], !dbg !814
  call void @llvm.dbg.value(metadata i32 %.01, metadata !820, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.label(metadata !866), !dbg !867
  br label %41, !dbg !868

41:                                               ; preds = %40, %10
  %.0 = phi i32 [ -50, %10 ], [ %.01, %40 ], !dbg !814
  ret i32 %.0, !dbg !869
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* %0, i8* %1, i8* %2) #0 !dbg !870 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %1, metadata !875, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %2, metadata !876, metadata !DIExpression()), !dbg !874
  %4 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0, !dbg !877
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !878
  call void @llvm.dbg.value(metadata i32* %5, metadata !879, metadata !DIExpression()), !dbg !874
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !880
  %7 = call i32 @mbedtls_get_unaligned_uint32(i8* %6), !dbg !880
  %8 = call i32 @llvm.bswap.i32(i32 %7), !dbg !880
  call void @llvm.dbg.value(metadata i32 %8, metadata !881, metadata !DIExpression()), !dbg !874
  %9 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !882
  %10 = call i32 @mbedtls_get_unaligned_uint32(i8* %9), !dbg !882
  %11 = call i32 @llvm.bswap.i32(i32 %10), !dbg !882
  call void @llvm.dbg.value(metadata i32 %11, metadata !883, metadata !DIExpression()), !dbg !874
  br label %12, !dbg !884

12:                                               ; preds = %3
  %13 = lshr i32 %8, 4, !dbg !885
  %14 = xor i32 %13, %11, !dbg !885
  %15 = and i32 %14, 252645135, !dbg !885
  call void @llvm.dbg.value(metadata i32 %15, metadata !887, metadata !DIExpression()), !dbg !874
  %16 = xor i32 %11, %15, !dbg !885
  call void @llvm.dbg.value(metadata i32 %16, metadata !883, metadata !DIExpression()), !dbg !874
  %17 = shl i32 %15, 4, !dbg !885
  %18 = xor i32 %8, %17, !dbg !885
  call void @llvm.dbg.value(metadata i32 %18, metadata !881, metadata !DIExpression()), !dbg !874
  %19 = lshr i32 %18, 16, !dbg !885
  %20 = xor i32 %19, %16, !dbg !885
  %21 = and i32 %20, 65535, !dbg !885
  call void @llvm.dbg.value(metadata i32 %21, metadata !887, metadata !DIExpression()), !dbg !874
  %22 = xor i32 %16, %21, !dbg !885
  call void @llvm.dbg.value(metadata i32 %22, metadata !883, metadata !DIExpression()), !dbg !874
  %23 = shl i32 %21, 16, !dbg !885
  %24 = xor i32 %18, %23, !dbg !885
  call void @llvm.dbg.value(metadata i32 %24, metadata !881, metadata !DIExpression()), !dbg !874
  %25 = lshr i32 %22, 2, !dbg !885
  %26 = xor i32 %25, %24, !dbg !885
  %27 = and i32 %26, 858993459, !dbg !885
  call void @llvm.dbg.value(metadata i32 %27, metadata !887, metadata !DIExpression()), !dbg !874
  %28 = xor i32 %24, %27, !dbg !885
  call void @llvm.dbg.value(metadata i32 %28, metadata !881, metadata !DIExpression()), !dbg !874
  %29 = shl i32 %27, 2, !dbg !885
  %30 = xor i32 %22, %29, !dbg !885
  call void @llvm.dbg.value(metadata i32 %30, metadata !883, metadata !DIExpression()), !dbg !874
  %31 = lshr i32 %30, 8, !dbg !885
  %32 = xor i32 %31, %28, !dbg !885
  %33 = and i32 %32, 16711935, !dbg !885
  call void @llvm.dbg.value(metadata i32 %33, metadata !887, metadata !DIExpression()), !dbg !874
  %34 = xor i32 %28, %33, !dbg !885
  call void @llvm.dbg.value(metadata i32 %34, metadata !881, metadata !DIExpression()), !dbg !874
  %35 = shl i32 %33, 8, !dbg !885
  %36 = xor i32 %30, %35, !dbg !885
  call void @llvm.dbg.value(metadata i32 %36, metadata !883, metadata !DIExpression()), !dbg !874
  %37 = shl i32 %36, 1, !dbg !885
  %38 = lshr i32 %36, 31, !dbg !885
  %39 = or i32 %37, %38, !dbg !885
  call void @llvm.dbg.value(metadata i32 %39, metadata !883, metadata !DIExpression()), !dbg !874
  %40 = xor i32 %34, %39, !dbg !885
  %41 = and i32 %40, -1431655766, !dbg !885
  call void @llvm.dbg.value(metadata i32 %41, metadata !887, metadata !DIExpression()), !dbg !874
  %42 = xor i32 %39, %41, !dbg !885
  call void @llvm.dbg.value(metadata i32 %42, metadata !883, metadata !DIExpression()), !dbg !874
  %43 = xor i32 %34, %41, !dbg !885
  call void @llvm.dbg.value(metadata i32 %43, metadata !881, metadata !DIExpression()), !dbg !874
  %44 = shl i32 %43, 1, !dbg !885
  %45 = lshr i32 %43, 31, !dbg !885
  %46 = or i32 %44, %45, !dbg !885
  call void @llvm.dbg.value(metadata i32 %46, metadata !881, metadata !DIExpression()), !dbg !874
  br label %47, !dbg !885

47:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !874
  br label %48, !dbg !889

48:                                               ; preds = %165, %47
  %.07 = phi i32 [ %46, %47 ], [ %106, %165 ], !dbg !874
  %.04 = phi i32 [ 0, %47 ], [ %166, %165 ], !dbg !891
  %.01 = phi i32 [ %42, %47 ], [ %163, %165 ], !dbg !874
  %.0 = phi i32* [ %5, %47 ], [ %135, %165 ], !dbg !874
  call void @llvm.dbg.value(metadata i32* %.0, metadata !879, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.01, metadata !883, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.04, metadata !888, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.07, metadata !881, metadata !DIExpression()), !dbg !874
  %49 = icmp slt i32 %.04, 8, !dbg !892
  br i1 %49, label %50, label %167, !dbg !894

50:                                               ; preds = %48
  br label %51, !dbg !895

51:                                               ; preds = %50
  %52 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !897
  call void @llvm.dbg.value(metadata i32* %52, metadata !879, metadata !DIExpression()), !dbg !874
  %53 = load i32, i32* %.0, align 4, !dbg !897
  %54 = xor i32 %53, %.01, !dbg !897
  call void @llvm.dbg.value(metadata i32 %54, metadata !887, metadata !DIExpression()), !dbg !874
  %55 = and i32 %54, 63, !dbg !897
  %56 = zext i32 %55 to i64, !dbg !897
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %56, !dbg !897
  %58 = load i32, i32* %57, align 4, !dbg !897
  %59 = lshr i32 %54, 8, !dbg !897
  %60 = and i32 %59, 63, !dbg !897
  %61 = zext i32 %60 to i64, !dbg !897
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %61, !dbg !897
  %63 = load i32, i32* %62, align 4, !dbg !897
  %64 = xor i32 %58, %63, !dbg !897
  %65 = lshr i32 %54, 16, !dbg !897
  %66 = and i32 %65, 63, !dbg !897
  %67 = zext i32 %66 to i64, !dbg !897
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %67, !dbg !897
  %69 = load i32, i32* %68, align 4, !dbg !897
  %70 = xor i32 %64, %69, !dbg !897
  %71 = lshr i32 %54, 24, !dbg !897
  %72 = and i32 %71, 63, !dbg !897
  %73 = zext i32 %72 to i64, !dbg !897
  %74 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %73, !dbg !897
  %75 = load i32, i32* %74, align 4, !dbg !897
  %76 = xor i32 %70, %75, !dbg !897
  %77 = xor i32 %.07, %76, !dbg !897
  call void @llvm.dbg.value(metadata i32 %77, metadata !881, metadata !DIExpression()), !dbg !874
  %78 = getelementptr inbounds i32, i32* %52, i32 1, !dbg !897
  call void @llvm.dbg.value(metadata i32* %78, metadata !879, metadata !DIExpression()), !dbg !874
  %79 = load i32, i32* %52, align 4, !dbg !897
  %80 = shl i32 %.01, 28, !dbg !897
  %81 = lshr i32 %.01, 4, !dbg !897
  %82 = or i32 %80, %81, !dbg !897
  %83 = xor i32 %79, %82, !dbg !897
  call void @llvm.dbg.value(metadata i32 %83, metadata !887, metadata !DIExpression()), !dbg !874
  %84 = and i32 %83, 63, !dbg !897
  %85 = zext i32 %84 to i64, !dbg !897
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %85, !dbg !897
  %87 = load i32, i32* %86, align 4, !dbg !897
  %88 = lshr i32 %83, 8, !dbg !897
  %89 = and i32 %88, 63, !dbg !897
  %90 = zext i32 %89 to i64, !dbg !897
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %90, !dbg !897
  %92 = load i32, i32* %91, align 4, !dbg !897
  %93 = xor i32 %87, %92, !dbg !897
  %94 = lshr i32 %83, 16, !dbg !897
  %95 = and i32 %94, 63, !dbg !897
  %96 = zext i32 %95 to i64, !dbg !897
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %96, !dbg !897
  %98 = load i32, i32* %97, align 4, !dbg !897
  %99 = xor i32 %93, %98, !dbg !897
  %100 = lshr i32 %83, 24, !dbg !897
  %101 = and i32 %100, 63, !dbg !897
  %102 = zext i32 %101 to i64, !dbg !897
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %102, !dbg !897
  %104 = load i32, i32* %103, align 4, !dbg !897
  %105 = xor i32 %99, %104, !dbg !897
  %106 = xor i32 %77, %105, !dbg !897
  call void @llvm.dbg.value(metadata i32 %106, metadata !881, metadata !DIExpression()), !dbg !874
  br label %107, !dbg !897

107:                                              ; preds = %51
  br label %108, !dbg !899

108:                                              ; preds = %107
  %109 = getelementptr inbounds i32, i32* %78, i32 1, !dbg !900
  call void @llvm.dbg.value(metadata i32* %109, metadata !879, metadata !DIExpression()), !dbg !874
  %110 = load i32, i32* %78, align 4, !dbg !900
  %111 = xor i32 %110, %106, !dbg !900
  call void @llvm.dbg.value(metadata i32 %111, metadata !887, metadata !DIExpression()), !dbg !874
  %112 = and i32 %111, 63, !dbg !900
  %113 = zext i32 %112 to i64, !dbg !900
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %113, !dbg !900
  %115 = load i32, i32* %114, align 4, !dbg !900
  %116 = lshr i32 %111, 8, !dbg !900
  %117 = and i32 %116, 63, !dbg !900
  %118 = zext i32 %117 to i64, !dbg !900
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %118, !dbg !900
  %120 = load i32, i32* %119, align 4, !dbg !900
  %121 = xor i32 %115, %120, !dbg !900
  %122 = lshr i32 %111, 16, !dbg !900
  %123 = and i32 %122, 63, !dbg !900
  %124 = zext i32 %123 to i64, !dbg !900
  %125 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %124, !dbg !900
  %126 = load i32, i32* %125, align 4, !dbg !900
  %127 = xor i32 %121, %126, !dbg !900
  %128 = lshr i32 %111, 24, !dbg !900
  %129 = and i32 %128, 63, !dbg !900
  %130 = zext i32 %129 to i64, !dbg !900
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %130, !dbg !900
  %132 = load i32, i32* %131, align 4, !dbg !900
  %133 = xor i32 %127, %132, !dbg !900
  %134 = xor i32 %.01, %133, !dbg !900
  call void @llvm.dbg.value(metadata i32 %134, metadata !883, metadata !DIExpression()), !dbg !874
  %135 = getelementptr inbounds i32, i32* %109, i32 1, !dbg !900
  call void @llvm.dbg.value(metadata i32* %135, metadata !879, metadata !DIExpression()), !dbg !874
  %136 = load i32, i32* %109, align 4, !dbg !900
  %137 = shl i32 %106, 28, !dbg !900
  %138 = lshr i32 %106, 4, !dbg !900
  %139 = or i32 %137, %138, !dbg !900
  %140 = xor i32 %136, %139, !dbg !900
  call void @llvm.dbg.value(metadata i32 %140, metadata !887, metadata !DIExpression()), !dbg !874
  %141 = and i32 %140, 63, !dbg !900
  %142 = zext i32 %141 to i64, !dbg !900
  %143 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %142, !dbg !900
  %144 = load i32, i32* %143, align 4, !dbg !900
  %145 = lshr i32 %140, 8, !dbg !900
  %146 = and i32 %145, 63, !dbg !900
  %147 = zext i32 %146 to i64, !dbg !900
  %148 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %147, !dbg !900
  %149 = load i32, i32* %148, align 4, !dbg !900
  %150 = xor i32 %144, %149, !dbg !900
  %151 = lshr i32 %140, 16, !dbg !900
  %152 = and i32 %151, 63, !dbg !900
  %153 = zext i32 %152 to i64, !dbg !900
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %153, !dbg !900
  %155 = load i32, i32* %154, align 4, !dbg !900
  %156 = xor i32 %150, %155, !dbg !900
  %157 = lshr i32 %140, 24, !dbg !900
  %158 = and i32 %157, 63, !dbg !900
  %159 = zext i32 %158 to i64, !dbg !900
  %160 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %159, !dbg !900
  %161 = load i32, i32* %160, align 4, !dbg !900
  %162 = xor i32 %156, %161, !dbg !900
  %163 = xor i32 %134, %162, !dbg !900
  call void @llvm.dbg.value(metadata i32 %163, metadata !883, metadata !DIExpression()), !dbg !874
  br label %164, !dbg !900

164:                                              ; preds = %108
  br label %165, !dbg !902

165:                                              ; preds = %164
  %166 = add nsw i32 %.04, 1, !dbg !903
  call void @llvm.dbg.value(metadata i32 %166, metadata !888, metadata !DIExpression()), !dbg !874
  br label %48, !dbg !904, !llvm.loop !905

167:                                              ; preds = %48
  call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !874
  br label %168, !dbg !907

168:                                              ; preds = %285, %167
  %.18 = phi i32 [ %.07, %167 ], [ %283, %285 ], !dbg !874
  %.15 = phi i32 [ 0, %167 ], [ %286, %285 ], !dbg !909
  %.12 = phi i32 [ %.01, %167 ], [ %226, %285 ], !dbg !874
  %.1 = phi i32* [ %.0, %167 ], [ %255, %285 ], !dbg !874
  call void @llvm.dbg.value(metadata i32* %.1, metadata !879, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.12, metadata !883, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.15, metadata !888, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.18, metadata !881, metadata !DIExpression()), !dbg !874
  %169 = icmp slt i32 %.15, 8, !dbg !910
  br i1 %169, label %170, label %287, !dbg !912

170:                                              ; preds = %168
  br label %171, !dbg !913

171:                                              ; preds = %170
  %172 = getelementptr inbounds i32, i32* %.1, i32 1, !dbg !915
  call void @llvm.dbg.value(metadata i32* %172, metadata !879, metadata !DIExpression()), !dbg !874
  %173 = load i32, i32* %.1, align 4, !dbg !915
  %174 = xor i32 %173, %.18, !dbg !915
  call void @llvm.dbg.value(metadata i32 %174, metadata !887, metadata !DIExpression()), !dbg !874
  %175 = and i32 %174, 63, !dbg !915
  %176 = zext i32 %175 to i64, !dbg !915
  %177 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %176, !dbg !915
  %178 = load i32, i32* %177, align 4, !dbg !915
  %179 = lshr i32 %174, 8, !dbg !915
  %180 = and i32 %179, 63, !dbg !915
  %181 = zext i32 %180 to i64, !dbg !915
  %182 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %181, !dbg !915
  %183 = load i32, i32* %182, align 4, !dbg !915
  %184 = xor i32 %178, %183, !dbg !915
  %185 = lshr i32 %174, 16, !dbg !915
  %186 = and i32 %185, 63, !dbg !915
  %187 = zext i32 %186 to i64, !dbg !915
  %188 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %187, !dbg !915
  %189 = load i32, i32* %188, align 4, !dbg !915
  %190 = xor i32 %184, %189, !dbg !915
  %191 = lshr i32 %174, 24, !dbg !915
  %192 = and i32 %191, 63, !dbg !915
  %193 = zext i32 %192 to i64, !dbg !915
  %194 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %193, !dbg !915
  %195 = load i32, i32* %194, align 4, !dbg !915
  %196 = xor i32 %190, %195, !dbg !915
  %197 = xor i32 %.12, %196, !dbg !915
  call void @llvm.dbg.value(metadata i32 %197, metadata !883, metadata !DIExpression()), !dbg !874
  %198 = getelementptr inbounds i32, i32* %172, i32 1, !dbg !915
  call void @llvm.dbg.value(metadata i32* %198, metadata !879, metadata !DIExpression()), !dbg !874
  %199 = load i32, i32* %172, align 4, !dbg !915
  %200 = shl i32 %.18, 28, !dbg !915
  %201 = lshr i32 %.18, 4, !dbg !915
  %202 = or i32 %200, %201, !dbg !915
  %203 = xor i32 %199, %202, !dbg !915
  call void @llvm.dbg.value(metadata i32 %203, metadata !887, metadata !DIExpression()), !dbg !874
  %204 = and i32 %203, 63, !dbg !915
  %205 = zext i32 %204 to i64, !dbg !915
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %205, !dbg !915
  %207 = load i32, i32* %206, align 4, !dbg !915
  %208 = lshr i32 %203, 8, !dbg !915
  %209 = and i32 %208, 63, !dbg !915
  %210 = zext i32 %209 to i64, !dbg !915
  %211 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %210, !dbg !915
  %212 = load i32, i32* %211, align 4, !dbg !915
  %213 = xor i32 %207, %212, !dbg !915
  %214 = lshr i32 %203, 16, !dbg !915
  %215 = and i32 %214, 63, !dbg !915
  %216 = zext i32 %215 to i64, !dbg !915
  %217 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %216, !dbg !915
  %218 = load i32, i32* %217, align 4, !dbg !915
  %219 = xor i32 %213, %218, !dbg !915
  %220 = lshr i32 %203, 24, !dbg !915
  %221 = and i32 %220, 63, !dbg !915
  %222 = zext i32 %221 to i64, !dbg !915
  %223 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %222, !dbg !915
  %224 = load i32, i32* %223, align 4, !dbg !915
  %225 = xor i32 %219, %224, !dbg !915
  %226 = xor i32 %197, %225, !dbg !915
  call void @llvm.dbg.value(metadata i32 %226, metadata !883, metadata !DIExpression()), !dbg !874
  br label %227, !dbg !915

227:                                              ; preds = %171
  br label %228, !dbg !917

228:                                              ; preds = %227
  %229 = getelementptr inbounds i32, i32* %198, i32 1, !dbg !918
  call void @llvm.dbg.value(metadata i32* %229, metadata !879, metadata !DIExpression()), !dbg !874
  %230 = load i32, i32* %198, align 4, !dbg !918
  %231 = xor i32 %230, %226, !dbg !918
  call void @llvm.dbg.value(metadata i32 %231, metadata !887, metadata !DIExpression()), !dbg !874
  %232 = and i32 %231, 63, !dbg !918
  %233 = zext i32 %232 to i64, !dbg !918
  %234 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %233, !dbg !918
  %235 = load i32, i32* %234, align 4, !dbg !918
  %236 = lshr i32 %231, 8, !dbg !918
  %237 = and i32 %236, 63, !dbg !918
  %238 = zext i32 %237 to i64, !dbg !918
  %239 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %238, !dbg !918
  %240 = load i32, i32* %239, align 4, !dbg !918
  %241 = xor i32 %235, %240, !dbg !918
  %242 = lshr i32 %231, 16, !dbg !918
  %243 = and i32 %242, 63, !dbg !918
  %244 = zext i32 %243 to i64, !dbg !918
  %245 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %244, !dbg !918
  %246 = load i32, i32* %245, align 4, !dbg !918
  %247 = xor i32 %241, %246, !dbg !918
  %248 = lshr i32 %231, 24, !dbg !918
  %249 = and i32 %248, 63, !dbg !918
  %250 = zext i32 %249 to i64, !dbg !918
  %251 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %250, !dbg !918
  %252 = load i32, i32* %251, align 4, !dbg !918
  %253 = xor i32 %247, %252, !dbg !918
  %254 = xor i32 %.18, %253, !dbg !918
  call void @llvm.dbg.value(metadata i32 %254, metadata !881, metadata !DIExpression()), !dbg !874
  %255 = getelementptr inbounds i32, i32* %229, i32 1, !dbg !918
  call void @llvm.dbg.value(metadata i32* %255, metadata !879, metadata !DIExpression()), !dbg !874
  %256 = load i32, i32* %229, align 4, !dbg !918
  %257 = shl i32 %226, 28, !dbg !918
  %258 = lshr i32 %226, 4, !dbg !918
  %259 = or i32 %257, %258, !dbg !918
  %260 = xor i32 %256, %259, !dbg !918
  call void @llvm.dbg.value(metadata i32 %260, metadata !887, metadata !DIExpression()), !dbg !874
  %261 = and i32 %260, 63, !dbg !918
  %262 = zext i32 %261 to i64, !dbg !918
  %263 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %262, !dbg !918
  %264 = load i32, i32* %263, align 4, !dbg !918
  %265 = lshr i32 %260, 8, !dbg !918
  %266 = and i32 %265, 63, !dbg !918
  %267 = zext i32 %266 to i64, !dbg !918
  %268 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %267, !dbg !918
  %269 = load i32, i32* %268, align 4, !dbg !918
  %270 = xor i32 %264, %269, !dbg !918
  %271 = lshr i32 %260, 16, !dbg !918
  %272 = and i32 %271, 63, !dbg !918
  %273 = zext i32 %272 to i64, !dbg !918
  %274 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %273, !dbg !918
  %275 = load i32, i32* %274, align 4, !dbg !918
  %276 = xor i32 %270, %275, !dbg !918
  %277 = lshr i32 %260, 24, !dbg !918
  %278 = and i32 %277, 63, !dbg !918
  %279 = zext i32 %278 to i64, !dbg !918
  %280 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %279, !dbg !918
  %281 = load i32, i32* %280, align 4, !dbg !918
  %282 = xor i32 %276, %281, !dbg !918
  %283 = xor i32 %254, %282, !dbg !918
  call void @llvm.dbg.value(metadata i32 %283, metadata !881, metadata !DIExpression()), !dbg !874
  br label %284, !dbg !918

284:                                              ; preds = %228
  br label %285, !dbg !920

285:                                              ; preds = %284
  %286 = add nsw i32 %.15, 1, !dbg !921
  call void @llvm.dbg.value(metadata i32 %286, metadata !888, metadata !DIExpression()), !dbg !874
  br label %168, !dbg !922, !llvm.loop !923

287:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !874
  br label %288, !dbg !925

288:                                              ; preds = %405, %287
  %.29 = phi i32 [ %.18, %287 ], [ %346, %405 ], !dbg !874
  %.26 = phi i32 [ 0, %287 ], [ %406, %405 ], !dbg !927
  %.23 = phi i32 [ %.12, %287 ], [ %403, %405 ], !dbg !874
  %.2 = phi i32* [ %.1, %287 ], [ %375, %405 ], !dbg !874
  call void @llvm.dbg.value(metadata i32* %.2, metadata !879, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.23, metadata !883, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.26, metadata !888, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %.29, metadata !881, metadata !DIExpression()), !dbg !874
  %289 = icmp slt i32 %.26, 8, !dbg !928
  br i1 %289, label %290, label %407, !dbg !930

290:                                              ; preds = %288
  br label %291, !dbg !931

291:                                              ; preds = %290
  %292 = getelementptr inbounds i32, i32* %.2, i32 1, !dbg !933
  call void @llvm.dbg.value(metadata i32* %292, metadata !879, metadata !DIExpression()), !dbg !874
  %293 = load i32, i32* %.2, align 4, !dbg !933
  %294 = xor i32 %293, %.23, !dbg !933
  call void @llvm.dbg.value(metadata i32 %294, metadata !887, metadata !DIExpression()), !dbg !874
  %295 = and i32 %294, 63, !dbg !933
  %296 = zext i32 %295 to i64, !dbg !933
  %297 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %296, !dbg !933
  %298 = load i32, i32* %297, align 4, !dbg !933
  %299 = lshr i32 %294, 8, !dbg !933
  %300 = and i32 %299, 63, !dbg !933
  %301 = zext i32 %300 to i64, !dbg !933
  %302 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %301, !dbg !933
  %303 = load i32, i32* %302, align 4, !dbg !933
  %304 = xor i32 %298, %303, !dbg !933
  %305 = lshr i32 %294, 16, !dbg !933
  %306 = and i32 %305, 63, !dbg !933
  %307 = zext i32 %306 to i64, !dbg !933
  %308 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %307, !dbg !933
  %309 = load i32, i32* %308, align 4, !dbg !933
  %310 = xor i32 %304, %309, !dbg !933
  %311 = lshr i32 %294, 24, !dbg !933
  %312 = and i32 %311, 63, !dbg !933
  %313 = zext i32 %312 to i64, !dbg !933
  %314 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %313, !dbg !933
  %315 = load i32, i32* %314, align 4, !dbg !933
  %316 = xor i32 %310, %315, !dbg !933
  %317 = xor i32 %.29, %316, !dbg !933
  call void @llvm.dbg.value(metadata i32 %317, metadata !881, metadata !DIExpression()), !dbg !874
  %318 = getelementptr inbounds i32, i32* %292, i32 1, !dbg !933
  call void @llvm.dbg.value(metadata i32* %318, metadata !879, metadata !DIExpression()), !dbg !874
  %319 = load i32, i32* %292, align 4, !dbg !933
  %320 = shl i32 %.23, 28, !dbg !933
  %321 = lshr i32 %.23, 4, !dbg !933
  %322 = or i32 %320, %321, !dbg !933
  %323 = xor i32 %319, %322, !dbg !933
  call void @llvm.dbg.value(metadata i32 %323, metadata !887, metadata !DIExpression()), !dbg !874
  %324 = and i32 %323, 63, !dbg !933
  %325 = zext i32 %324 to i64, !dbg !933
  %326 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %325, !dbg !933
  %327 = load i32, i32* %326, align 4, !dbg !933
  %328 = lshr i32 %323, 8, !dbg !933
  %329 = and i32 %328, 63, !dbg !933
  %330 = zext i32 %329 to i64, !dbg !933
  %331 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %330, !dbg !933
  %332 = load i32, i32* %331, align 4, !dbg !933
  %333 = xor i32 %327, %332, !dbg !933
  %334 = lshr i32 %323, 16, !dbg !933
  %335 = and i32 %334, 63, !dbg !933
  %336 = zext i32 %335 to i64, !dbg !933
  %337 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %336, !dbg !933
  %338 = load i32, i32* %337, align 4, !dbg !933
  %339 = xor i32 %333, %338, !dbg !933
  %340 = lshr i32 %323, 24, !dbg !933
  %341 = and i32 %340, 63, !dbg !933
  %342 = zext i32 %341 to i64, !dbg !933
  %343 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %342, !dbg !933
  %344 = load i32, i32* %343, align 4, !dbg !933
  %345 = xor i32 %339, %344, !dbg !933
  %346 = xor i32 %317, %345, !dbg !933
  call void @llvm.dbg.value(metadata i32 %346, metadata !881, metadata !DIExpression()), !dbg !874
  br label %347, !dbg !933

347:                                              ; preds = %291
  br label %348, !dbg !935

348:                                              ; preds = %347
  %349 = getelementptr inbounds i32, i32* %318, i32 1, !dbg !936
  call void @llvm.dbg.value(metadata i32* %349, metadata !879, metadata !DIExpression()), !dbg !874
  %350 = load i32, i32* %318, align 4, !dbg !936
  %351 = xor i32 %350, %346, !dbg !936
  call void @llvm.dbg.value(metadata i32 %351, metadata !887, metadata !DIExpression()), !dbg !874
  %352 = and i32 %351, 63, !dbg !936
  %353 = zext i32 %352 to i64, !dbg !936
  %354 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %353, !dbg !936
  %355 = load i32, i32* %354, align 4, !dbg !936
  %356 = lshr i32 %351, 8, !dbg !936
  %357 = and i32 %356, 63, !dbg !936
  %358 = zext i32 %357 to i64, !dbg !936
  %359 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %358, !dbg !936
  %360 = load i32, i32* %359, align 4, !dbg !936
  %361 = xor i32 %355, %360, !dbg !936
  %362 = lshr i32 %351, 16, !dbg !936
  %363 = and i32 %362, 63, !dbg !936
  %364 = zext i32 %363 to i64, !dbg !936
  %365 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %364, !dbg !936
  %366 = load i32, i32* %365, align 4, !dbg !936
  %367 = xor i32 %361, %366, !dbg !936
  %368 = lshr i32 %351, 24, !dbg !936
  %369 = and i32 %368, 63, !dbg !936
  %370 = zext i32 %369 to i64, !dbg !936
  %371 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %370, !dbg !936
  %372 = load i32, i32* %371, align 4, !dbg !936
  %373 = xor i32 %367, %372, !dbg !936
  %374 = xor i32 %.23, %373, !dbg !936
  call void @llvm.dbg.value(metadata i32 %374, metadata !883, metadata !DIExpression()), !dbg !874
  %375 = getelementptr inbounds i32, i32* %349, i32 1, !dbg !936
  call void @llvm.dbg.value(metadata i32* %375, metadata !879, metadata !DIExpression()), !dbg !874
  %376 = load i32, i32* %349, align 4, !dbg !936
  %377 = shl i32 %346, 28, !dbg !936
  %378 = lshr i32 %346, 4, !dbg !936
  %379 = or i32 %377, %378, !dbg !936
  %380 = xor i32 %376, %379, !dbg !936
  call void @llvm.dbg.value(metadata i32 %380, metadata !887, metadata !DIExpression()), !dbg !874
  %381 = and i32 %380, 63, !dbg !936
  %382 = zext i32 %381 to i64, !dbg !936
  %383 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %382, !dbg !936
  %384 = load i32, i32* %383, align 4, !dbg !936
  %385 = lshr i32 %380, 8, !dbg !936
  %386 = and i32 %385, 63, !dbg !936
  %387 = zext i32 %386 to i64, !dbg !936
  %388 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %387, !dbg !936
  %389 = load i32, i32* %388, align 4, !dbg !936
  %390 = xor i32 %384, %389, !dbg !936
  %391 = lshr i32 %380, 16, !dbg !936
  %392 = and i32 %391, 63, !dbg !936
  %393 = zext i32 %392 to i64, !dbg !936
  %394 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %393, !dbg !936
  %395 = load i32, i32* %394, align 4, !dbg !936
  %396 = xor i32 %390, %395, !dbg !936
  %397 = lshr i32 %380, 24, !dbg !936
  %398 = and i32 %397, 63, !dbg !936
  %399 = zext i32 %398 to i64, !dbg !936
  %400 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %399, !dbg !936
  %401 = load i32, i32* %400, align 4, !dbg !936
  %402 = xor i32 %396, %401, !dbg !936
  %403 = xor i32 %374, %402, !dbg !936
  call void @llvm.dbg.value(metadata i32 %403, metadata !883, metadata !DIExpression()), !dbg !874
  br label %404, !dbg !936

404:                                              ; preds = %348
  br label %405, !dbg !938

405:                                              ; preds = %404
  %406 = add nsw i32 %.26, 1, !dbg !939
  call void @llvm.dbg.value(metadata i32 %406, metadata !888, metadata !DIExpression()), !dbg !874
  br label %288, !dbg !940, !llvm.loop !941

407:                                              ; preds = %288
  br label %408, !dbg !943

408:                                              ; preds = %407
  %409 = shl i32 %.23, 31, !dbg !944
  %410 = lshr i32 %.23, 1, !dbg !944
  %411 = or i32 %409, %410, !dbg !944
  call void @llvm.dbg.value(metadata i32 %411, metadata !883, metadata !DIExpression()), !dbg !874
  %412 = xor i32 %411, %.29, !dbg !944
  %413 = and i32 %412, -1431655766, !dbg !944
  call void @llvm.dbg.value(metadata i32 %413, metadata !887, metadata !DIExpression()), !dbg !874
  %414 = xor i32 %411, %413, !dbg !944
  call void @llvm.dbg.value(metadata i32 %414, metadata !883, metadata !DIExpression()), !dbg !874
  %415 = xor i32 %.29, %413, !dbg !944
  call void @llvm.dbg.value(metadata i32 %415, metadata !881, metadata !DIExpression()), !dbg !874
  %416 = shl i32 %415, 31, !dbg !944
  %417 = lshr i32 %415, 1, !dbg !944
  %418 = or i32 %416, %417, !dbg !944
  call void @llvm.dbg.value(metadata i32 %418, metadata !881, metadata !DIExpression()), !dbg !874
  %419 = lshr i32 %418, 8, !dbg !944
  %420 = xor i32 %419, %414, !dbg !944
  %421 = and i32 %420, 16711935, !dbg !944
  call void @llvm.dbg.value(metadata i32 %421, metadata !887, metadata !DIExpression()), !dbg !874
  %422 = xor i32 %414, %421, !dbg !944
  call void @llvm.dbg.value(metadata i32 %422, metadata !883, metadata !DIExpression()), !dbg !874
  %423 = shl i32 %421, 8, !dbg !944
  %424 = xor i32 %418, %423, !dbg !944
  call void @llvm.dbg.value(metadata i32 %424, metadata !881, metadata !DIExpression()), !dbg !874
  %425 = lshr i32 %424, 2, !dbg !944
  %426 = xor i32 %425, %422, !dbg !944
  %427 = and i32 %426, 858993459, !dbg !944
  call void @llvm.dbg.value(metadata i32 %427, metadata !887, metadata !DIExpression()), !dbg !874
  %428 = xor i32 %422, %427, !dbg !944
  call void @llvm.dbg.value(metadata i32 %428, metadata !883, metadata !DIExpression()), !dbg !874
  %429 = shl i32 %427, 2, !dbg !944
  %430 = xor i32 %424, %429, !dbg !944
  call void @llvm.dbg.value(metadata i32 %430, metadata !881, metadata !DIExpression()), !dbg !874
  %431 = lshr i32 %428, 16, !dbg !944
  %432 = xor i32 %431, %430, !dbg !944
  %433 = and i32 %432, 65535, !dbg !944
  call void @llvm.dbg.value(metadata i32 %433, metadata !887, metadata !DIExpression()), !dbg !874
  %434 = xor i32 %430, %433, !dbg !944
  call void @llvm.dbg.value(metadata i32 %434, metadata !881, metadata !DIExpression()), !dbg !874
  %435 = shl i32 %433, 16, !dbg !944
  %436 = xor i32 %428, %435, !dbg !944
  call void @llvm.dbg.value(metadata i32 %436, metadata !883, metadata !DIExpression()), !dbg !874
  %437 = lshr i32 %436, 4, !dbg !944
  %438 = xor i32 %437, %434, !dbg !944
  %439 = and i32 %438, 252645135, !dbg !944
  call void @llvm.dbg.value(metadata i32 %439, metadata !887, metadata !DIExpression()), !dbg !874
  %440 = xor i32 %434, %439, !dbg !944
  call void @llvm.dbg.value(metadata i32 %440, metadata !881, metadata !DIExpression()), !dbg !874
  %441 = shl i32 %439, 4, !dbg !944
  %442 = xor i32 %436, %441, !dbg !944
  call void @llvm.dbg.value(metadata i32 %442, metadata !883, metadata !DIExpression()), !dbg !874
  br label %443, !dbg !944

443:                                              ; preds = %408
  %444 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !946
  %445 = call i32 @llvm.bswap.i32(i32 %442), !dbg !946
  call void @mbedtls_put_unaligned_uint32(i8* %444, i32 %445), !dbg !946
  %446 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !950
  %447 = call i32 @llvm.bswap.i32(i32 %440), !dbg !950
  call void @mbedtls_put_unaligned_uint32(i8* %446, i32 %447), !dbg !950
  ret i32 0, !dbg !954
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 !dbg !955 {
  %7 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mbedtls_des3_context* %0, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 %1, metadata !960, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i64 %2, metadata !961, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8* %3, metadata !962, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8* %4, metadata !963, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8* %5, metadata !964, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 -110, metadata !965, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata [8 x i8]* %7, metadata !966, metadata !DIExpression()), !dbg !967
  %8 = urem i64 %2, 8, !dbg !968
  %9 = icmp ne i64 %8, 0, !dbg !968
  br i1 %9, label %10, label %11, !dbg !970

10:                                               ; preds = %6
  br label %41, !dbg !971

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 1, !dbg !972
  br i1 %12, label %13, label %25, !dbg !974

13:                                               ; preds = %11
  br label %14, !dbg !975

14:                                               ; preds = %20, %13
  %.05 = phi i8* [ %4, %13 ], [ %21, %20 ]
  %.03 = phi i64 [ %2, %13 ], [ %23, %20 ]
  %.02 = phi i8* [ %5, %13 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i8* %.02, metadata !964, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i64 %.03, metadata !961, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8* %.05, metadata !963, metadata !DIExpression()), !dbg !959
  %15 = icmp ugt i64 %.03, 0, !dbg !977
  br i1 %15, label %16, label %24, !dbg !975

16:                                               ; preds = %14
  call void @mbedtls_xor(i8* %.02, i8* %.05, i8* %3, i64 8), !dbg !978
  %17 = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* %0, i8* %.02, i8* %.02), !dbg !980
  call void @llvm.dbg.value(metadata i32 %17, metadata !965, metadata !DIExpression()), !dbg !959
  %18 = icmp ne i32 %17, 0, !dbg !981
  br i1 %18, label %19, label %20, !dbg !983

19:                                               ; preds = %16
  br label %40, !dbg !984

20:                                               ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %.02, i64 8, i1 false), !dbg !985
  %21 = getelementptr inbounds i8, i8* %.05, i64 8, !dbg !986
  call void @llvm.dbg.value(metadata i8* %21, metadata !963, metadata !DIExpression()), !dbg !959
  %22 = getelementptr inbounds i8, i8* %.02, i64 8, !dbg !987
  call void @llvm.dbg.value(metadata i8* %22, metadata !964, metadata !DIExpression()), !dbg !959
  %23 = sub i64 %.03, 8, !dbg !988
  call void @llvm.dbg.value(metadata i64 %23, metadata !961, metadata !DIExpression()), !dbg !959
  br label %14, !dbg !975, !llvm.loop !989

24:                                               ; preds = %14
  br label %39, !dbg !991

25:                                               ; preds = %11
  br label %26, !dbg !992

26:                                               ; preds = %33, %25
  %.16 = phi i8* [ %4, %25 ], [ %35, %33 ]
  %.14 = phi i64 [ %2, %25 ], [ %37, %33 ]
  %.1 = phi i8* [ %5, %25 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8* %.1, metadata !964, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i64 %.14, metadata !961, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8* %.16, metadata !963, metadata !DIExpression()), !dbg !959
  %27 = icmp ugt i64 %.14, 0, !dbg !994
  br i1 %27, label %28, label %38, !dbg !992

28:                                               ; preds = %26
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %.16, i64 8, i1 false), !dbg !995
  %30 = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* %0, i8* %.16, i8* %.1), !dbg !997
  call void @llvm.dbg.value(metadata i32 %30, metadata !965, metadata !DIExpression()), !dbg !959
  %31 = icmp ne i32 %30, 0, !dbg !998
  br i1 %31, label %32, label %33, !dbg !1000

32:                                               ; preds = %28
  br label %40, !dbg !1001

33:                                               ; preds = %28
  call void @mbedtls_xor(i8* %.1, i8* %.1, i8* %3, i64 8), !dbg !1002
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !1003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %34, i64 8, i1 false), !dbg !1003
  %35 = getelementptr inbounds i8, i8* %.16, i64 8, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %35, metadata !963, metadata !DIExpression()), !dbg !959
  %36 = getelementptr inbounds i8, i8* %.1, i64 8, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %36, metadata !964, metadata !DIExpression()), !dbg !959
  %37 = sub i64 %.14, 8, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %37, metadata !961, metadata !DIExpression()), !dbg !959
  br label %26, !dbg !992, !llvm.loop !1007

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %24
  call void @llvm.dbg.value(metadata i32 0, metadata !965, metadata !DIExpression()), !dbg !959
  br label %40, !dbg !1009

40:                                               ; preds = %39, %32, %19
  %.01 = phi i32 [ %17, %19 ], [ 0, %39 ], [ %30, %32 ], !dbg !959
  call void @llvm.dbg.value(metadata i32 %.01, metadata !965, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.label(metadata !1010), !dbg !1011
  br label %41, !dbg !1012

41:                                               ; preds = %40, %10
  %.0 = phi i32 [ -50, %10 ], [ %.01, %40 ], !dbg !959
  ret i32 %.0, !dbg !1013
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_des_self_test(i32 %0) #0 !dbg !1014 {
  %2 = alloca %struct.mbedtls_des_context, align 4
  %3 = alloca %struct.mbedtls_des3_context, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1017, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.declare(metadata %struct.mbedtls_des_context* %2, metadata !1020, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.declare(metadata %struct.mbedtls_des3_context* %3, metadata !1022, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata [8 x i8]* %6, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @mbedtls_des_init(%struct.mbedtls_des_context* %2), !dbg !1030
  call void @mbedtls_des3_init(%struct.mbedtls_des3_context* %3), !dbg !1031
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()), !dbg !1018
  br label %8, !dbg !1033

8:                                                ; preds = %89, %1
  %.02 = phi i32 [ 0, %1 ], [ %90, %89 ], !dbg !1035
  %.01 = phi i32 [ 0, %1 ], [ %.2, %89 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1032, metadata !DIExpression()), !dbg !1018
  %9 = icmp slt i32 %.02, 6, !dbg !1036
  br i1 %9, label %10, label %91, !dbg !1038

10:                                               ; preds = %8
  %11 = ashr i32 %.02, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %11, metadata !1041, metadata !DIExpression()), !dbg !1018
  %12 = and i32 %.02, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %12, metadata !1043, metadata !DIExpression()), !dbg !1018
  %13 = icmp ne i32 %0, 0, !dbg !1044
  br i1 %13, label %14, label %24, !dbg !1046

14:                                               ; preds = %10
  %15 = icmp eq i32 %11, 0, !dbg !1047
  %16 = zext i1 %15 to i64, !dbg !1048
  %17 = select i1 %15, i32 32, i32 51, !dbg !1048
  %18 = mul nsw i32 %11, 56, !dbg !1049
  %19 = add nsw i32 56, %18, !dbg !1050
  %20 = icmp eq i32 %12, 0, !dbg !1051
  %21 = zext i1 %20 to i64, !dbg !1052
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), !dbg !1052
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i8* %22), !dbg !1053
  br label %24, !dbg !1053

24:                                               ; preds = %14, %10
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_buf, i64 0, i64 0), i64 8, i1 false), !dbg !1054
  switch i32 %.02, label %38 [
    i32 0, label %26
    i32 1, label %28
    i32 2, label %30
    i32 3, label %32
    i32 4, label %34
    i32 5, label %36
  ], !dbg !1055

26:                                               ; preds = %24
  %27 = call i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1056
  call void @llvm.dbg.value(metadata i32 %27, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %39, !dbg !1058

28:                                               ; preds = %24
  %29 = call i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %29, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %39, !dbg !1060

30:                                               ; preds = %24
  %31 = call i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1061
  call void @llvm.dbg.value(metadata i32 %31, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %39, !dbg !1062

32:                                               ; preds = %24
  %33 = call i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %33, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %39, !dbg !1064

34:                                               ; preds = %24
  %35 = call i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %35, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %39, !dbg !1066

36:                                               ; preds = %24
  %37 = call i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %37, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %39, !dbg !1068

38:                                               ; preds = %24
  br label %225, !dbg !1069

39:                                               ; preds = %36, %34, %32, %30, %28, %26
  %.1 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], !dbg !1070
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1019, metadata !DIExpression()), !dbg !1018
  %40 = icmp ne i32 %.1, 0, !dbg !1071
  br i1 %40, label %41, label %42, !dbg !1073

41:                                               ; preds = %39
  br label %221, !dbg !1074

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1018
  br label %43, !dbg !1076

43:                                               ; preds = %59, %42
  %.04 = phi i32 [ 0, %42 ], [ %60, %59 ], !dbg !1078
  %.2 = phi i32 [ %.1, %42 ], [ %.3, %59 ], !dbg !1079
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1075, metadata !DIExpression()), !dbg !1018
  %44 = icmp slt i32 %.04, 100, !dbg !1080
  br i1 %44, label %45, label %61, !dbg !1082

45:                                               ; preds = %43
  %46 = icmp eq i32 %11, 0, !dbg !1083
  br i1 %46, label %47, label %51, !dbg !1086

47:                                               ; preds = %45
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1087
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1088
  %50 = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* %2, i8* %48, i8* %49), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %50, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %55, !dbg !1090

51:                                               ; preds = %45
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1091
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1092
  %54 = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* %3, i8* %52, i8* %53), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %54, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %55

55:                                               ; preds = %51, %47
  %.3 = phi i32 [ %50, %47 ], [ %54, %51 ], !dbg !1094
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1019, metadata !DIExpression()), !dbg !1018
  %56 = icmp ne i32 %.3, 0, !dbg !1095
  br i1 %56, label %57, label %58, !dbg !1097

57:                                               ; preds = %55
  br label %221, !dbg !1098

58:                                               ; preds = %55
  br label %59, !dbg !1099

59:                                               ; preds = %58
  %60 = add nsw i32 %.04, 1, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %60, metadata !1075, metadata !DIExpression()), !dbg !1018
  br label %43, !dbg !1101, !llvm.loop !1102

61:                                               ; preds = %43
  %62 = icmp eq i32 %12, 0, !dbg !1104
  br i1 %62, label %63, label %70, !dbg !1106

63:                                               ; preds = %61
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1107
  %65 = sext i32 %11 to i64, !dbg !1108
  %66 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_ecb_dec, i64 0, i64 %65, !dbg !1108
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %66, i64 0, i64 0, !dbg !1108
  %68 = call i32 @memcmp(i8* %64, i8* %67, i64 8) #7, !dbg !1109
  %69 = icmp ne i32 %68, 0, !dbg !1110
  br i1 %69, label %79, label %70, !dbg !1111

70:                                               ; preds = %63, %61
  %71 = icmp ne i32 %12, 0, !dbg !1112
  br i1 %71, label %72, label %84, !dbg !1113

72:                                               ; preds = %70
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1114
  %74 = sext i32 %11 to i64, !dbg !1115
  %75 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_ecb_enc, i64 0, i64 %74, !dbg !1115
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %75, i64 0, i64 0, !dbg !1115
  %77 = call i32 @memcmp(i8* %73, i8* %76, i64 8) #7, !dbg !1116
  %78 = icmp ne i32 %77, 0, !dbg !1117
  br i1 %78, label %79, label %84, !dbg !1118

79:                                               ; preds = %72, %63
  %80 = icmp ne i32 %0, 0, !dbg !1119
  br i1 %80, label %81, label %83, !dbg !1122

81:                                               ; preds = %79
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !1123
  br label %83, !dbg !1123

83:                                               ; preds = %81, %79
  call void @llvm.dbg.value(metadata i32 1, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %221, !dbg !1124

84:                                               ; preds = %72, %70
  %85 = icmp ne i32 %0, 0, !dbg !1125
  br i1 %85, label %86, label %88, !dbg !1127

86:                                               ; preds = %84
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !1128
  br label %88, !dbg !1128

88:                                               ; preds = %86, %84
  br label %89, !dbg !1129

89:                                               ; preds = %88
  %90 = add nsw i32 %.02, 1, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %90, metadata !1032, metadata !DIExpression()), !dbg !1018
  br label %8, !dbg !1131, !llvm.loop !1132

91:                                               ; preds = %8
  %92 = icmp ne i32 %0, 0, !dbg !1134
  br i1 %92, label %93, label %95, !dbg !1136

93:                                               ; preds = %91
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !1137
  br label %95, !dbg !1137

95:                                               ; preds = %93, %91
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()), !dbg !1018
  br label %96, !dbg !1138

96:                                               ; preds = %214, %95
  %.13 = phi i32 [ 0, %95 ], [ %215, %214 ], !dbg !1140
  %.4 = phi i32 [ %.01, %95 ], [ %.10, %214 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1032, metadata !DIExpression()), !dbg !1018
  %97 = icmp slt i32 %.13, 6, !dbg !1141
  br i1 %97, label %98, label %216, !dbg !1143

98:                                               ; preds = %96
  %99 = ashr i32 %.13, 1, !dbg !1144
  call void @llvm.dbg.value(metadata i32 %99, metadata !1041, metadata !DIExpression()), !dbg !1018
  %100 = and i32 %.13, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %100, metadata !1043, metadata !DIExpression()), !dbg !1018
  %101 = icmp ne i32 %0, 0, !dbg !1147
  br i1 %101, label %102, label %112, !dbg !1149

102:                                              ; preds = %98
  %103 = icmp eq i32 %99, 0, !dbg !1150
  %104 = zext i1 %103 to i64, !dbg !1151
  %105 = select i1 %103, i32 32, i32 51, !dbg !1151
  %106 = mul nsw i32 %99, 56, !dbg !1152
  %107 = add nsw i32 56, %106, !dbg !1153
  %108 = icmp eq i32 %100, 0, !dbg !1154
  %109 = zext i1 %108 to i64, !dbg !1155
  %110 = select i1 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), !dbg !1155
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %105, i32 %107, i8* %110), !dbg !1156
  br label %112, !dbg !1156

112:                                              ; preds = %102, %98
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %113, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_iv, i64 0, i64 0), i64 8, i1 false), !dbg !1157
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_iv, i64 0, i64 0), i64 8, i1 false), !dbg !1158
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %115, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_buf, i64 0, i64 0), i64 8, i1 false), !dbg !1159
  switch i32 %.13, label %128 [
    i32 0, label %116
    i32 1, label %118
    i32 2, label %120
    i32 3, label %122
    i32 4, label %124
    i32 5, label %126
  ], !dbg !1160

116:                                              ; preds = %112
  %117 = call i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %117, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %129, !dbg !1163

118:                                              ; preds = %112
  %119 = call i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %119, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %129, !dbg !1165

120:                                              ; preds = %112
  %121 = call i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %121, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %129, !dbg !1167

122:                                              ; preds = %112
  %123 = call i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %123, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %129, !dbg !1169

124:                                              ; preds = %112
  %125 = call i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %125, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %129, !dbg !1171

126:                                              ; preds = %112
  %127 = call i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)), !dbg !1172
  call void @llvm.dbg.value(metadata i32 %127, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %129, !dbg !1173

128:                                              ; preds = %112
  br label %225, !dbg !1174

129:                                              ; preds = %126, %124, %122, %120, %118, %116
  %.5 = phi i32 [ %127, %126 ], [ %125, %124 ], [ %123, %122 ], [ %121, %120 ], [ %119, %118 ], [ %117, %116 ], !dbg !1175
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1019, metadata !DIExpression()), !dbg !1018
  %130 = icmp ne i32 %.5, 0, !dbg !1176
  br i1 %130, label %131, label %132, !dbg !1178

131:                                              ; preds = %129
  br label %221, !dbg !1179

132:                                              ; preds = %129
  %133 = icmp eq i32 %100, 0, !dbg !1180
  br i1 %133, label %134, label %156, !dbg !1182

134:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1018
  br label %135, !dbg !1183

135:                                              ; preds = %153, %134
  %.15 = phi i32 [ 0, %134 ], [ %154, %153 ], !dbg !1186
  %.6 = phi i32 [ %.5, %134 ], [ %.7, %153 ], !dbg !1187
  call void @llvm.dbg.value(metadata i32 %.6, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1075, metadata !DIExpression()), !dbg !1018
  %136 = icmp slt i32 %.15, 100, !dbg !1188
  br i1 %136, label %137, label %155, !dbg !1190

137:                                              ; preds = %135
  %138 = icmp eq i32 %99, 0, !dbg !1191
  br i1 %138, label %139, label %144, !dbg !1194

139:                                              ; preds = %137
  %140 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1195
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1196
  %142 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1197
  %143 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* %2, i32 %100, i64 8, i8* %140, i8* %141, i8* %142), !dbg !1198
  call void @llvm.dbg.value(metadata i32 %143, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %149, !dbg !1199

144:                                              ; preds = %137
  %145 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1200
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1201
  %147 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1202
  %148 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* %3, i32 %100, i64 8, i8* %145, i8* %146, i8* %147), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %148, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %149

149:                                              ; preds = %144, %139
  %.7 = phi i32 [ %143, %139 ], [ %148, %144 ], !dbg !1204
  call void @llvm.dbg.value(metadata i32 %.7, metadata !1019, metadata !DIExpression()), !dbg !1018
  %150 = icmp ne i32 %.7, 0, !dbg !1205
  br i1 %150, label %151, label %152, !dbg !1207

151:                                              ; preds = %149
  br label %221, !dbg !1208

152:                                              ; preds = %149
  br label %153, !dbg !1209

153:                                              ; preds = %152
  %154 = add nsw i32 %.15, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %154, metadata !1075, metadata !DIExpression()), !dbg !1018
  br label %135, !dbg !1211, !llvm.loop !1212

155:                                              ; preds = %135
  br label %186, !dbg !1214

156:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1018
  br label %157, !dbg !1215

157:                                              ; preds = %181, %156
  %.26 = phi i32 [ 0, %156 ], [ %182, %181 ], !dbg !1218
  %.8 = phi i32 [ %.5, %156 ], [ %.9, %181 ], !dbg !1187
  call void @llvm.dbg.value(metadata i32 %.8, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.26, metadata !1075, metadata !DIExpression()), !dbg !1018
  %158 = icmp slt i32 %.26, 100, !dbg !1219
  br i1 %158, label %159, label %183, !dbg !1221

159:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata [8 x i8]* %7, metadata !1222, metadata !DIExpression()), !dbg !1224
  %160 = icmp eq i32 %99, 0, !dbg !1225
  br i1 %160, label %161, label %166, !dbg !1227

161:                                              ; preds = %159
  %162 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1228
  %163 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1229
  %164 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1230
  %165 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* %2, i32 %100, i64 8, i8* %162, i8* %163, i8* %164), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %165, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %171, !dbg !1232

166:                                              ; preds = %159
  %167 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1233
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1234
  %169 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1235
  %170 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* %3, i32 %100, i64 8, i8* %167, i8* %168, i8* %169), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %170, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %171

171:                                              ; preds = %166, %161
  %.9 = phi i32 [ %165, %161 ], [ %170, %166 ], !dbg !1237
  call void @llvm.dbg.value(metadata i32 %.9, metadata !1019, metadata !DIExpression()), !dbg !1018
  %172 = icmp ne i32 %.9, 0, !dbg !1238
  br i1 %172, label %173, label %174, !dbg !1240

173:                                              ; preds = %171
  br label %221, !dbg !1241

174:                                              ; preds = %171
  %175 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !1242
  %176 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %175, i8* align 1 %176, i64 8, i1 false), !dbg !1242
  %177 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1243
  %178 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %177, i8* align 1 %178, i64 8, i1 false), !dbg !1243
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1244
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !1244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %179, i8* align 1 %180, i64 8, i1 false), !dbg !1244
  br label %181, !dbg !1245

181:                                              ; preds = %174
  %182 = add nsw i32 %.26, 1, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %182, metadata !1075, metadata !DIExpression()), !dbg !1018
  br label %157, !dbg !1247, !llvm.loop !1248

183:                                              ; preds = %157
  %184 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1250
  %185 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %184, i8* align 1 %185, i64 8, i1 false), !dbg !1250
  br label %186

186:                                              ; preds = %183, %155
  %.10 = phi i32 [ %.6, %155 ], [ %.8, %183 ], !dbg !1251
  call void @llvm.dbg.value(metadata i32 %.10, metadata !1019, metadata !DIExpression()), !dbg !1018
  %187 = icmp eq i32 %100, 0, !dbg !1252
  br i1 %187, label %188, label %195, !dbg !1254

188:                                              ; preds = %186
  %189 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1255
  %190 = sext i32 %99 to i64, !dbg !1256
  %191 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_cbc_dec, i64 0, i64 %190, !dbg !1256
  %192 = getelementptr inbounds [8 x i8], [8 x i8]* %191, i64 0, i64 0, !dbg !1256
  %193 = call i32 @memcmp(i8* %189, i8* %192, i64 8) #7, !dbg !1257
  %194 = icmp ne i32 %193, 0, !dbg !1258
  br i1 %194, label %204, label %195, !dbg !1259

195:                                              ; preds = %188, %186
  %196 = icmp ne i32 %100, 0, !dbg !1260
  br i1 %196, label %197, label %209, !dbg !1261

197:                                              ; preds = %195
  %198 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1262
  %199 = sext i32 %99 to i64, !dbg !1263
  %200 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_cbc_enc, i64 0, i64 %199, !dbg !1263
  %201 = getelementptr inbounds [8 x i8], [8 x i8]* %200, i64 0, i64 0, !dbg !1263
  %202 = call i32 @memcmp(i8* %198, i8* %201, i64 8) #7, !dbg !1264
  %203 = icmp ne i32 %202, 0, !dbg !1265
  br i1 %203, label %204, label %209, !dbg !1266

204:                                              ; preds = %197, %188
  %205 = icmp ne i32 %0, 0, !dbg !1267
  br i1 %205, label %206, label %208, !dbg !1270

206:                                              ; preds = %204
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !1271
  br label %208, !dbg !1271

208:                                              ; preds = %206, %204
  call void @llvm.dbg.value(metadata i32 1, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %221, !dbg !1272

209:                                              ; preds = %197, %195
  %210 = icmp ne i32 %0, 0, !dbg !1273
  br i1 %210, label %211, label %213, !dbg !1275

211:                                              ; preds = %209
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !1276
  br label %213, !dbg !1276

213:                                              ; preds = %211, %209
  br label %214, !dbg !1277

214:                                              ; preds = %213
  %215 = add nsw i32 %.13, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i32 %215, metadata !1032, metadata !DIExpression()), !dbg !1018
  br label %96, !dbg !1279, !llvm.loop !1280

216:                                              ; preds = %96
  %217 = icmp ne i32 %0, 0, !dbg !1282
  br i1 %217, label %218, label %220, !dbg !1284

218:                                              ; preds = %216
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !1285
  br label %220, !dbg !1285

220:                                              ; preds = %218, %216
  br label %221, !dbg !1286

221:                                              ; preds = %220, %208, %173, %151, %131, %83, %57, %41
  %.11 = phi i32 [ %.1, %41 ], [ %.3, %57 ], [ 1, %83 ], [ %.5, %131 ], [ %.7, %151 ], [ 1, %208 ], [ %.9, %173 ], [ %.4, %220 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.11, metadata !1019, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.label(metadata !1287), !dbg !1288
  call void @mbedtls_des_free(%struct.mbedtls_des_context* %2), !dbg !1289
  call void @mbedtls_des3_free(%struct.mbedtls_des3_context* %3), !dbg !1290
  %222 = icmp ne i32 %.11, 0, !dbg !1291
  br i1 %222, label %223, label %224, !dbg !1293

223:                                              ; preds = %221
  call void @llvm.dbg.value(metadata i32 1, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %224, !dbg !1294

224:                                              ; preds = %223, %221
  %.12 = phi i32 [ 1, %223 ], [ %.11, %221 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %.12, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %225, !dbg !1295

225:                                              ; preds = %224, %128, %38
  %.0 = phi i32 [ 1, %38 ], [ %.12, %224 ], [ 1, %128 ], !dbg !1018
  ret i32 %.0, !dbg !1296
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_platform_zeroize(i8* %0, i64 %1) #0 !dbg !1297 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %1, metadata !1302, metadata !DIExpression()), !dbg !1301
  br label %3, !dbg !1303

3:                                                ; preds = %2
  br label %4, !dbg !1304

4:                                                ; preds = %3
  %5 = icmp ugt i64 %1, 0, !dbg !1306
  br i1 %5, label %6, label %9, !dbg !1308

6:                                                ; preds = %4
  %7 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @memset_func, align 8, !dbg !1309
  %8 = call i8* %7(i8* %0, i32 0, i64 %1), !dbg !1309
  br label %9, !dbg !1309

9:                                                ; preds = %6, %4
  ret void, !dbg !1310
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tm* @mbedtls_platform_gmtime_r(i64* %0, %struct.tm* %1) #0 !dbg !1311 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1340, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !1342, metadata !DIExpression()), !dbg !1341
  %3 = call %struct.tm* @gmtime_r(i64* %0, %struct.tm* %1) #8, !dbg !1343
  ret %struct.tm* %3, !dbg !1344
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_xor(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !1345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %1, metadata !1351, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %2, metadata !1352, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %3, metadata !1353, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1354, metadata !DIExpression()), !dbg !1350
  br label %5, !dbg !1355

5:                                                ; preds = %15, %4
  %.0 = phi i64 [ 0, %4 ], [ %16, %15 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1354, metadata !DIExpression()), !dbg !1350
  %6 = add i64 %.0, 4, !dbg !1358
  %7 = icmp ule i64 %6, %3, !dbg !1360
  br i1 %7, label %8, label %17, !dbg !1361

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !1362
  %10 = call i32 @mbedtls_get_unaligned_uint32(i8* %9), !dbg !1364
  %11 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1365
  %12 = call i32 @mbedtls_get_unaligned_uint32(i8* %11), !dbg !1366
  %13 = xor i32 %10, %12, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %13, metadata !1368, metadata !DIExpression()), !dbg !1369
  %14 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1370
  call void @mbedtls_put_unaligned_uint32(i8* %14, i32 %13), !dbg !1371
  br label %15, !dbg !1372

15:                                               ; preds = %8
  %16 = add i64 %.0, 4, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %16, metadata !1354, metadata !DIExpression()), !dbg !1350
  br label %5, !dbg !1374, !llvm.loop !1375

17:                                               ; preds = %5
  br label %18, !dbg !1377

18:                                               ; preds = %30, %17
  %.1 = phi i64 [ %.0, %17 ], [ %31, %30 ], !dbg !1350
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1354, metadata !DIExpression()), !dbg !1350
  %19 = icmp ult i64 %.1, %3, !dbg !1378
  br i1 %19, label %20, label %32, !dbg !1381

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, i8* %1, i64 %.1, !dbg !1382
  %22 = load i8, i8* %21, align 1, !dbg !1382
  %23 = zext i8 %22 to i32, !dbg !1382
  %24 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !1384
  %25 = load i8, i8* %24, align 1, !dbg !1384
  %26 = zext i8 %25 to i32, !dbg !1384
  %27 = xor i32 %23, %26, !dbg !1385
  %28 = trunc i32 %27 to i8, !dbg !1382
  %29 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1386
  store i8 %28, i8* %29, align 1, !dbg !1387
  br label %30, !dbg !1388

30:                                               ; preds = %20
  %31 = add i64 %.1, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %31, metadata !1354, metadata !DIExpression()), !dbg !1350
  br label %18, !dbg !1390, !llvm.loop !1391

32:                                               ; preds = %18
  ret void, !dbg !1393
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_get_unaligned_uint32(i8* %0) #0 !dbg !1394 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1400, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1402, metadata !DIExpression()), !dbg !1403
  %3 = bitcast i32* %2 to i8*, !dbg !1404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 1 %0, i64 4, i1 false), !dbg !1404
  %4 = load i32, i32* %2, align 4, !dbg !1405
  ret i32 %4, !dbg !1406
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint32(i8* %0, i32 %1) #0 !dbg !1407 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1410, metadata !DIExpression()), !dbg !1411
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1412, metadata !DIExpression()), !dbg !1413
  %4 = bitcast i32* %3 to i8*, !dbg !1414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %4, i64 4, i1 false), !dbg !1414
  ret void, !dbg !1415
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @mbedtls_get_unaligned_uint16(i8* %0) #0 !dbg !1416 {
  %2 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1422, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.declare(metadata i16* %2, metadata !1424, metadata !DIExpression()), !dbg !1425
  %3 = bitcast i16* %2 to i8*, !dbg !1426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %3, i8* align 1 %0, i64 2, i1 false), !dbg !1426
  %4 = load i16, i16* %2, align 2, !dbg !1427
  ret i16 %4, !dbg !1428
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint16(i8* %0, i16 zeroext %1) #0 !dbg !1429 {
  %3 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1432, metadata !DIExpression()), !dbg !1433
  store i16 %1, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1434, metadata !DIExpression()), !dbg !1435
  %4 = bitcast i16* %3 to i8*, !dbg !1436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 2 %4, i64 2, i1 false), !dbg !1436
  ret void, !dbg !1437
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_get_unaligned_uint64(i8* %0) #0 !dbg !1438 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1445, metadata !DIExpression()), !dbg !1446
  %3 = bitcast i64* %2 to i8*, !dbg !1447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !1447
  %4 = load i64, i64* %2, align 8, !dbg !1448
  ret i64 %4, !dbg !1449
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint64(i8* %0, i64 %1) #0 !dbg !1450 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1453, metadata !DIExpression()), !dbg !1454
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1455, metadata !DIExpression()), !dbg !1456
  %4 = bitcast i64* %3 to i8*, !dbg !1457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !1457
  ret void, !dbg !1458
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!86, !2, !74}
!llvm.ident = !{!88, !88, !88}
!llvm.module.flags = !{!89, !90, !91}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "odd_parity_table", scope: !2, file: !3, line: 303, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../mbedtls/library/des.c", directory: "/home/luwei/bech/Mbed/des")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!0, !13, !21, !26, !28, !33, !35, !37, !39, !41, !43, !45, !47, !51, !56, !61, !63, !65, !67}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "weak_key_table", scope: !2, file: !3, line: 359, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19, !20}
!19 = !DISubrange(count: 16)
!20 = !DISubrange(count: 8)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "LHs", scope: !2, file: !3, line: 206, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !25)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!25 = !{!19}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "RHs", scope: !2, file: !3, line: 214, type: !23, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "SB8", scope: !2, file: !3, line: 183, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "SB6", scope: !2, file: !3, line: 143, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "SB4", scope: !2, file: !3, line: 103, type: !30, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "SB2", scope: !2, file: !3, line: 63, type: !30, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "SB7", scope: !2, file: !3, line: 163, type: !30, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "SB5", scope: !2, file: !3, line: 123, type: !30, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "SB3", scope: !2, file: !3, line: 83, type: !30, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "SB1", scope: !2, file: !3, line: 43, type: !30, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "des3_test_buf", scope: !2, file: !3, line: 803, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !50)
!50 = !{!20}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "des3_test_keys", scope: !2, file: !3, line: 796, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 24)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "des3_test_ecb_dec", scope: !2, file: !3, line: 808, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !59)
!59 = !{!60, !20}
!60 = !DISubrange(count: 3)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "des3_test_ecb_enc", scope: !2, file: !3, line: 815, type: !58, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "des3_test_iv", scope: !2, file: !3, line: 823, type: !49, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "des3_test_cbc_dec", scope: !2, file: !3, line: 828, type: !58, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "des3_test_cbc_enc", scope: !2, file: !3, line: 835, type: !58, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 128)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "memset_func", scope: !74, file: !75, line: 65, type: !77, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !76, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../mbedtls/library/platform_util.c", directory: "/home/luwei/bech/Mbed/des")
!76 = !{!72}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!6, !6, !82, !83}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!85 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "crypt_cbc.c", directory: "/home/luwei/bech/Mbed/des")
!88 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!89 = !{i32 7, !"Dwarf Version", i32 4}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = distinct !DISubprogram(name: "crypt_cbc_wrapper", scope: !87, file: !87, line: 3, type: !93, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !82, !83, !104, !105, !104}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_des_context", file: !97, line: 64, baseType: !98)
!97 = !DIFile(filename: "../mbedtls/include/mbedtls/des.h", directory: "/home/luwei/bech/Mbed/des")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_des_context", file: !97, line: 60, size: 1024, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "private_sk", scope: !98, file: !97, line: 62, baseType: !101, size: 1024)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 32)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!106 = !DILocalVariable(name: "ctx", arg: 1, scope: !92, file: !87, line: 3, type: !95)
!107 = !DILocation(line: 0, scope: !92)
!108 = !DILocalVariable(name: "mode", arg: 2, scope: !92, file: !87, line: 4, type: !82)
!109 = !DILocalVariable(name: "length", arg: 3, scope: !92, file: !87, line: 5, type: !83)
!110 = !DILocalVariable(name: "iv", arg: 4, scope: !92, file: !87, line: 6, type: !104)
!111 = !DILocalVariable(name: "input", arg: 5, scope: !92, file: !87, line: 7, type: !105)
!112 = !DILocalVariable(name: "output", arg: 6, scope: !92, file: !87, line: 8, type: !104)
!113 = !DILocation(line: 10, column: 12, scope: !92)
!114 = !DILocation(line: 10, column: 2, scope: !92)
!115 = !DILocation(line: 11, column: 12, scope: !92)
!116 = !DILocation(line: 11, column: 2, scope: !92)
!117 = !DILocation(line: 12, column: 12, scope: !92)
!118 = !DILocation(line: 12, column: 2, scope: !92)
!119 = !DILocation(line: 13, column: 12, scope: !92)
!120 = !DILocation(line: 13, column: 2, scope: !92)
!121 = !DILocation(line: 14, column: 12, scope: !92)
!122 = !DILocation(line: 14, column: 2, scope: !92)
!123 = !DILocation(line: 15, column: 12, scope: !92)
!124 = !DILocation(line: 15, column: 2, scope: !92)
!125 = !DILocation(line: 17, column: 12, scope: !92)
!126 = !DILocation(line: 17, column: 2, scope: !92)
!127 = !DILocation(line: 18, column: 12, scope: !92)
!128 = !DILocation(line: 18, column: 2, scope: !92)
!129 = !DILocation(line: 19, column: 12, scope: !92)
!130 = !DILocation(line: 19, column: 2, scope: !92)
!131 = !DILocation(line: 21, column: 31, scope: !92)
!132 = !DILocation(line: 21, column: 26, scope: !92)
!133 = !DILocation(line: 21, column: 12, scope: !92)
!134 = !DILocation(line: 21, column: 2, scope: !92)
!135 = !DILocation(line: 25, column: 2, scope: !92)
!136 = !DILocation(line: 27, column: 1, scope: !92)
!137 = distinct !DISubprogram(name: "crypt_cbc_wrapper_t", scope: !87, file: !87, line: 35, type: !138, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!138 = !DISubroutineType(types: !139)
!139 = !{null}
!140 = !DILocation(line: 37, column: 29, scope: !137)
!141 = !DILocalVariable(name: "ctx", scope: !137, file: !87, line: 37, type: !95)
!142 = !DILocation(line: 0, scope: !137)
!143 = !DILocation(line: 38, column: 32, scope: !137)
!144 = !DILocalVariable(name: "mode", scope: !137, file: !87, line: 38, type: !82)
!145 = !DILocation(line: 39, column: 37, scope: !137)
!146 = !DILocalVariable(name: "length", scope: !137, file: !87, line: 39, type: !83)
!147 = !DILocalVariable(name: "iv", scope: !137, file: !87, line: 40, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !25)
!149 = !DILocation(line: 40, column: 35, scope: !137)
!150 = !DILocation(line: 41, column: 50, scope: !137)
!151 = !DILocalVariable(name: "input", scope: !137, file: !87, line: 41, type: !105)
!152 = !DILocation(line: 42, column: 45, scope: !137)
!153 = !DILocalVariable(name: "output", scope: !137, file: !87, line: 42, type: !104)
!154 = !DILocation(line: 45, column: 43, scope: !137)
!155 = !DILocation(line: 45, column: 2, scope: !137)
!156 = !DILocation(line: 46, column: 1, scope: !137)
!157 = distinct !DISubprogram(name: "mbedtls_des_init", scope: !3, file: !3, line: 277, type: !158, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_des_context", file: !97, line: 64, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_des_context", file: !97, line: 60, size: 1024, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !162, file: !97, line: 62, baseType: !101, size: 1024)
!165 = !DILocalVariable(name: "ctx", arg: 1, scope: !157, file: !3, line: 277, type: !160)
!166 = !DILocation(line: 0, scope: !157)
!167 = !DILocation(line: 279, column: 5, scope: !157)
!168 = !DILocation(line: 280, column: 1, scope: !157)
!169 = distinct !DISubprogram(name: "mbedtls_des_free", scope: !3, file: !3, line: 282, type: !158, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!170 = !DILocalVariable(name: "ctx", arg: 1, scope: !169, file: !3, line: 282, type: !160)
!171 = !DILocation(line: 0, scope: !169)
!172 = !DILocation(line: 284, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !3, line: 284, column: 9)
!174 = !DILocation(line: 284, column: 9, scope: !169)
!175 = !DILocation(line: 285, column: 9, scope: !173)
!176 = !DILocation(line: 287, column: 31, scope: !169)
!177 = !DILocation(line: 287, column: 5, scope: !169)
!178 = !DILocation(line: 288, column: 1, scope: !169)
!179 = distinct !DISubprogram(name: "mbedtls_des3_init", scope: !3, file: !3, line: 290, type: !180, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_des3_context", file: !97, line: 73, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_des3_context", file: !97, line: 69, size: 3072, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !184, file: !97, line: 71, baseType: !187, size: 3072)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 96)
!190 = !DILocalVariable(name: "ctx", arg: 1, scope: !179, file: !3, line: 290, type: !182)
!191 = !DILocation(line: 0, scope: !179)
!192 = !DILocation(line: 292, column: 5, scope: !179)
!193 = !DILocation(line: 293, column: 1, scope: !179)
!194 = distinct !DISubprogram(name: "mbedtls_des3_free", scope: !3, file: !3, line: 295, type: !180, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!195 = !DILocalVariable(name: "ctx", arg: 1, scope: !194, file: !3, line: 295, type: !182)
!196 = !DILocation(line: 0, scope: !194)
!197 = !DILocation(line: 297, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 297, column: 9)
!199 = !DILocation(line: 297, column: 9, scope: !194)
!200 = !DILocation(line: 298, column: 9, scope: !198)
!201 = !DILocation(line: 300, column: 31, scope: !194)
!202 = !DILocation(line: 300, column: 5, scope: !194)
!203 = !DILocation(line: 301, column: 1, scope: !194)
!204 = distinct !DISubprogram(name: "mbedtls_des_key_set_parity", scope: !3, file: !3, line: 314, type: !205, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !104}
!207 = !DILocalVariable(name: "key", arg: 1, scope: !204, file: !3, line: 314, type: !104)
!208 = !DILocation(line: 0, scope: !204)
!209 = !DILocalVariable(name: "i", scope: !204, file: !3, line: 316, type: !82)
!210 = !DILocation(line: 318, column: 10, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !3, line: 318, column: 5)
!212 = !DILocation(line: 0, scope: !211)
!213 = !DILocation(line: 318, column: 19, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 318, column: 5)
!215 = !DILocation(line: 318, column: 5, scope: !211)
!216 = !DILocation(line: 319, column: 35, scope: !214)
!217 = !DILocation(line: 319, column: 42, scope: !214)
!218 = !DILocation(line: 319, column: 18, scope: !214)
!219 = !DILocation(line: 319, column: 9, scope: !214)
!220 = !DILocation(line: 319, column: 16, scope: !214)
!221 = !DILocation(line: 318, column: 44, scope: !214)
!222 = !DILocation(line: 318, column: 5, scope: !214)
!223 = distinct !{!223, !215, !224, !225}
!224 = !DILocation(line: 319, column: 45, scope: !211)
!225 = !{!"llvm.loop.mustprogress"}
!226 = !DILocation(line: 320, column: 1, scope: !204)
!227 = distinct !DISubprogram(name: "mbedtls_des_key_check_key_parity", scope: !3, file: !3, line: 325, type: !228, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!228 = !DISubroutineType(types: !229)
!229 = !{!82, !105}
!230 = !DILocalVariable(name: "key", arg: 1, scope: !227, file: !3, line: 325, type: !105)
!231 = !DILocation(line: 0, scope: !227)
!232 = !DILocalVariable(name: "i", scope: !227, file: !3, line: 327, type: !82)
!233 = !DILocation(line: 329, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !227, file: !3, line: 329, column: 5)
!235 = !DILocation(line: 0, scope: !234)
!236 = !DILocation(line: 329, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !3, line: 329, column: 5)
!238 = !DILocation(line: 329, column: 5, scope: !234)
!239 = !DILocation(line: 330, column: 13, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 330, column: 13)
!241 = !DILocation(line: 330, column: 40, scope: !240)
!242 = !DILocation(line: 330, column: 47, scope: !240)
!243 = !DILocation(line: 330, column: 23, scope: !240)
!244 = !DILocation(line: 330, column: 20, scope: !240)
!245 = !DILocation(line: 330, column: 13, scope: !237)
!246 = !DILocation(line: 331, column: 13, scope: !240)
!247 = !DILocation(line: 330, column: 50, scope: !240)
!248 = !DILocation(line: 329, column: 44, scope: !237)
!249 = !DILocation(line: 329, column: 5, scope: !237)
!250 = distinct !{!250, !238, !251, !225}
!251 = !DILocation(line: 331, column: 23, scope: !234)
!252 = !DILocation(line: 333, column: 5, scope: !227)
!253 = !DILocation(line: 334, column: 1, scope: !227)
!254 = distinct !DISubprogram(name: "mbedtls_des_key_check_weak", scope: !3, file: !3, line: 380, type: !228, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!255 = !DILocalVariable(name: "key", arg: 1, scope: !254, file: !3, line: 380, type: !105)
!256 = !DILocation(line: 0, scope: !254)
!257 = !DILocalVariable(name: "i", scope: !254, file: !3, line: 382, type: !82)
!258 = !DILocation(line: 384, column: 10, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 384, column: 5)
!260 = !DILocation(line: 0, scope: !259)
!261 = !DILocation(line: 384, column: 19, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 384, column: 5)
!263 = !DILocation(line: 384, column: 5, scope: !259)
!264 = !DILocation(line: 385, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !3, line: 385, column: 13)
!266 = !DILocation(line: 385, column: 13, scope: !265)
!267 = !DILocation(line: 385, column: 67, scope: !265)
!268 = !DILocation(line: 385, column: 13, scope: !262)
!269 = !DILocation(line: 386, column: 13, scope: !265)
!270 = !DILocation(line: 385, column: 70, scope: !265)
!271 = !DILocation(line: 384, column: 38, scope: !262)
!272 = !DILocation(line: 384, column: 5, scope: !262)
!273 = distinct !{!273, !263, !274, !225}
!274 = !DILocation(line: 386, column: 23, scope: !259)
!275 = !DILocation(line: 388, column: 5, scope: !254)
!276 = !DILocation(line: 389, column: 1, scope: !254)
!277 = distinct !DISubprogram(name: "mbedtls_des_setkey", scope: !3, file: !3, line: 392, type: !278, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !280, !105}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!281 = !DILocalVariable(name: "SK", arg: 1, scope: !277, file: !3, line: 392, type: !280)
!282 = !DILocation(line: 0, scope: !277)
!283 = !DILocalVariable(name: "key", arg: 2, scope: !277, file: !3, line: 392, type: !105)
!284 = !DILocation(line: 397, column: 9, scope: !277)
!285 = !DILocalVariable(name: "X", scope: !277, file: !3, line: 395, type: !7)
!286 = !DILocation(line: 398, column: 9, scope: !277)
!287 = !DILocalVariable(name: "Y", scope: !277, file: !3, line: 395, type: !7)
!288 = !DILocation(line: 403, column: 14, scope: !277)
!289 = !DILocation(line: 403, column: 21, scope: !277)
!290 = !DILocation(line: 403, column: 26, scope: !277)
!291 = !DILocalVariable(name: "T", scope: !277, file: !3, line: 395, type: !7)
!292 = !DILocation(line: 403, column: 43, scope: !277)
!293 = !DILocation(line: 403, column: 57, scope: !277)
!294 = !DILocation(line: 403, column: 51, scope: !277)
!295 = !DILocation(line: 404, column: 21, scope: !277)
!296 = !DILocation(line: 404, column: 26, scope: !277)
!297 = !DILocation(line: 404, column: 43, scope: !277)
!298 = !DILocation(line: 404, column: 51, scope: !277)
!299 = !DILocation(line: 406, column: 27, scope: !277)
!300 = !DILocation(line: 406, column: 12, scope: !277)
!301 = !DILocation(line: 406, column: 34, scope: !277)
!302 = !DILocation(line: 406, column: 51, scope: !277)
!303 = !DILocation(line: 406, column: 58, scope: !277)
!304 = !DILocation(line: 406, column: 43, scope: !277)
!305 = !DILocation(line: 406, column: 66, scope: !277)
!306 = !DILocation(line: 406, column: 40, scope: !277)
!307 = !DILocation(line: 407, column: 20, scope: !277)
!308 = !DILocation(line: 407, column: 27, scope: !277)
!309 = !DILocation(line: 407, column: 12, scope: !277)
!310 = !DILocation(line: 407, column: 34, scope: !277)
!311 = !DILocation(line: 407, column: 9, scope: !277)
!312 = !DILocation(line: 407, column: 51, scope: !277)
!313 = !DILocation(line: 407, column: 58, scope: !277)
!314 = !DILocation(line: 407, column: 43, scope: !277)
!315 = !DILocation(line: 407, column: 40, scope: !277)
!316 = !DILocation(line: 408, column: 20, scope: !277)
!317 = !DILocation(line: 408, column: 27, scope: !277)
!318 = !DILocation(line: 408, column: 12, scope: !277)
!319 = !DILocation(line: 408, column: 34, scope: !277)
!320 = !DILocation(line: 408, column: 9, scope: !277)
!321 = !DILocation(line: 408, column: 51, scope: !277)
!322 = !DILocation(line: 408, column: 58, scope: !277)
!323 = !DILocation(line: 408, column: 43, scope: !277)
!324 = !DILocation(line: 408, column: 66, scope: !277)
!325 = !DILocation(line: 408, column: 40, scope: !277)
!326 = !DILocation(line: 409, column: 20, scope: !277)
!327 = !DILocation(line: 409, column: 27, scope: !277)
!328 = !DILocation(line: 409, column: 12, scope: !277)
!329 = !DILocation(line: 409, column: 34, scope: !277)
!330 = !DILocation(line: 409, column: 9, scope: !277)
!331 = !DILocation(line: 409, column: 51, scope: !277)
!332 = !DILocation(line: 409, column: 58, scope: !277)
!333 = !DILocation(line: 409, column: 43, scope: !277)
!334 = !DILocation(line: 409, column: 66, scope: !277)
!335 = !DILocation(line: 409, column: 40, scope: !277)
!336 = !DILocation(line: 411, column: 20, scope: !277)
!337 = !DILocation(line: 411, column: 27, scope: !277)
!338 = !DILocation(line: 411, column: 12, scope: !277)
!339 = !DILocation(line: 411, column: 34, scope: !277)
!340 = !DILocation(line: 411, column: 51, scope: !277)
!341 = !DILocation(line: 411, column: 58, scope: !277)
!342 = !DILocation(line: 411, column: 43, scope: !277)
!343 = !DILocation(line: 411, column: 66, scope: !277)
!344 = !DILocation(line: 411, column: 40, scope: !277)
!345 = !DILocation(line: 412, column: 20, scope: !277)
!346 = !DILocation(line: 412, column: 27, scope: !277)
!347 = !DILocation(line: 412, column: 12, scope: !277)
!348 = !DILocation(line: 412, column: 34, scope: !277)
!349 = !DILocation(line: 412, column: 9, scope: !277)
!350 = !DILocation(line: 412, column: 51, scope: !277)
!351 = !DILocation(line: 412, column: 58, scope: !277)
!352 = !DILocation(line: 412, column: 43, scope: !277)
!353 = !DILocation(line: 412, column: 40, scope: !277)
!354 = !DILocation(line: 413, column: 20, scope: !277)
!355 = !DILocation(line: 413, column: 27, scope: !277)
!356 = !DILocation(line: 413, column: 12, scope: !277)
!357 = !DILocation(line: 413, column: 34, scope: !277)
!358 = !DILocation(line: 413, column: 9, scope: !277)
!359 = !DILocation(line: 413, column: 51, scope: !277)
!360 = !DILocation(line: 413, column: 58, scope: !277)
!361 = !DILocation(line: 413, column: 43, scope: !277)
!362 = !DILocation(line: 413, column: 66, scope: !277)
!363 = !DILocation(line: 413, column: 40, scope: !277)
!364 = !DILocation(line: 414, column: 20, scope: !277)
!365 = !DILocation(line: 414, column: 27, scope: !277)
!366 = !DILocation(line: 414, column: 12, scope: !277)
!367 = !DILocation(line: 414, column: 34, scope: !277)
!368 = !DILocation(line: 414, column: 9, scope: !277)
!369 = !DILocation(line: 414, column: 51, scope: !277)
!370 = !DILocation(line: 414, column: 58, scope: !277)
!371 = !DILocation(line: 414, column: 43, scope: !277)
!372 = !DILocation(line: 414, column: 66, scope: !277)
!373 = !DILocation(line: 414, column: 40, scope: !277)
!374 = !DILocation(line: 416, column: 7, scope: !277)
!375 = !DILocation(line: 417, column: 7, scope: !277)
!376 = !DILocalVariable(name: "i", scope: !277, file: !3, line: 394, type: !82)
!377 = !DILocation(line: 422, column: 10, scope: !378)
!378 = distinct !DILexicalBlock(scope: !277, file: !3, line: 422, column: 5)
!379 = !DILocation(line: 0, scope: !378)
!380 = !DILocation(line: 422, column: 19, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 422, column: 5)
!382 = !DILocation(line: 422, column: 5, scope: !378)
!383 = !DILocation(line: 424, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 424, column: 13)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 423, column: 5)
!386 = !DILocation(line: 424, column: 19, scope: !384)
!387 = !DILocation(line: 424, column: 24, scope: !384)
!388 = !DILocation(line: 424, column: 29, scope: !384)
!389 = !DILocation(line: 424, column: 34, scope: !384)
!390 = !DILocation(line: 424, column: 13, scope: !385)
!391 = !DILocation(line: 426, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !384, file: !3, line: 425, column: 9)
!393 = !DILocation(line: 426, column: 33, scope: !392)
!394 = !DILocation(line: 426, column: 28, scope: !392)
!395 = !DILocation(line: 426, column: 41, scope: !392)
!396 = !DILocation(line: 427, column: 21, scope: !392)
!397 = !DILocation(line: 427, column: 33, scope: !392)
!398 = !DILocation(line: 427, column: 28, scope: !392)
!399 = !DILocation(line: 427, column: 41, scope: !392)
!400 = !DILocation(line: 428, column: 9, scope: !392)
!401 = !DILocation(line: 431, column: 21, scope: !402)
!402 = distinct !DILexicalBlock(scope: !384, file: !3, line: 430, column: 9)
!403 = !DILocation(line: 431, column: 33, scope: !402)
!404 = !DILocation(line: 431, column: 28, scope: !402)
!405 = !DILocation(line: 431, column: 41, scope: !402)
!406 = !DILocation(line: 432, column: 21, scope: !402)
!407 = !DILocation(line: 432, column: 33, scope: !402)
!408 = !DILocation(line: 432, column: 28, scope: !402)
!409 = !DILocation(line: 432, column: 41, scope: !402)
!410 = !DILocation(line: 0, scope: !384)
!411 = !DILocation(line: 435, column: 23, scope: !385)
!412 = !DILocation(line: 435, column: 30, scope: !385)
!413 = !DILocation(line: 435, column: 50, scope: !385)
!414 = !DILocation(line: 435, column: 57, scope: !385)
!415 = !DILocation(line: 435, column: 44, scope: !385)
!416 = !DILocation(line: 436, column: 23, scope: !385)
!417 = !DILocation(line: 436, column: 30, scope: !385)
!418 = !DILocation(line: 436, column: 17, scope: !385)
!419 = !DILocation(line: 436, column: 50, scope: !385)
!420 = !DILocation(line: 436, column: 57, scope: !385)
!421 = !DILocation(line: 436, column: 44, scope: !385)
!422 = !DILocation(line: 437, column: 23, scope: !385)
!423 = !DILocation(line: 437, column: 30, scope: !385)
!424 = !DILocation(line: 437, column: 17, scope: !385)
!425 = !DILocation(line: 437, column: 50, scope: !385)
!426 = !DILocation(line: 437, column: 57, scope: !385)
!427 = !DILocation(line: 437, column: 44, scope: !385)
!428 = !DILocation(line: 438, column: 23, scope: !385)
!429 = !DILocation(line: 438, column: 30, scope: !385)
!430 = !DILocation(line: 438, column: 17, scope: !385)
!431 = !DILocation(line: 438, column: 50, scope: !385)
!432 = !DILocation(line: 438, column: 57, scope: !385)
!433 = !DILocation(line: 438, column: 44, scope: !385)
!434 = !DILocation(line: 439, column: 23, scope: !385)
!435 = !DILocation(line: 439, column: 30, scope: !385)
!436 = !DILocation(line: 439, column: 17, scope: !385)
!437 = !DILocation(line: 439, column: 50, scope: !385)
!438 = !DILocation(line: 439, column: 57, scope: !385)
!439 = !DILocation(line: 439, column: 44, scope: !385)
!440 = !DILocation(line: 440, column: 23, scope: !385)
!441 = !DILocation(line: 440, column: 30, scope: !385)
!442 = !DILocation(line: 440, column: 17, scope: !385)
!443 = !DILocation(line: 440, column: 50, scope: !385)
!444 = !DILocation(line: 440, column: 57, scope: !385)
!445 = !DILocation(line: 440, column: 44, scope: !385)
!446 = !DILocation(line: 441, column: 23, scope: !385)
!447 = !DILocation(line: 441, column: 30, scope: !385)
!448 = !DILocation(line: 441, column: 17, scope: !385)
!449 = !DILocation(line: 441, column: 50, scope: !385)
!450 = !DILocation(line: 441, column: 57, scope: !385)
!451 = !DILocation(line: 441, column: 44, scope: !385)
!452 = !DILocation(line: 442, column: 23, scope: !385)
!453 = !DILocation(line: 442, column: 30, scope: !385)
!454 = !DILocation(line: 442, column: 17, scope: !385)
!455 = !DILocation(line: 442, column: 57, scope: !385)
!456 = !DILocation(line: 442, column: 44, scope: !385)
!457 = !DILocation(line: 443, column: 23, scope: !385)
!458 = !DILocation(line: 443, column: 30, scope: !385)
!459 = !DILocation(line: 443, column: 17, scope: !385)
!460 = !DILocation(line: 443, column: 50, scope: !385)
!461 = !DILocation(line: 443, column: 57, scope: !385)
!462 = !DILocation(line: 443, column: 44, scope: !385)
!463 = !DILocation(line: 444, column: 23, scope: !385)
!464 = !DILocation(line: 444, column: 30, scope: !385)
!465 = !DILocation(line: 444, column: 17, scope: !385)
!466 = !DILocation(line: 444, column: 50, scope: !385)
!467 = !DILocation(line: 444, column: 57, scope: !385)
!468 = !DILocation(line: 444, column: 44, scope: !385)
!469 = !DILocation(line: 445, column: 23, scope: !385)
!470 = !DILocation(line: 445, column: 30, scope: !385)
!471 = !DILocation(line: 445, column: 17, scope: !385)
!472 = !DILocation(line: 445, column: 50, scope: !385)
!473 = !DILocation(line: 445, column: 57, scope: !385)
!474 = !DILocation(line: 445, column: 44, scope: !385)
!475 = !DILocation(line: 435, column: 12, scope: !385)
!476 = !DILocation(line: 435, column: 15, scope: !385)
!477 = !DILocation(line: 447, column: 23, scope: !385)
!478 = !DILocation(line: 447, column: 30, scope: !385)
!479 = !DILocation(line: 447, column: 50, scope: !385)
!480 = !DILocation(line: 447, column: 57, scope: !385)
!481 = !DILocation(line: 447, column: 44, scope: !385)
!482 = !DILocation(line: 448, column: 23, scope: !385)
!483 = !DILocation(line: 448, column: 30, scope: !385)
!484 = !DILocation(line: 448, column: 17, scope: !385)
!485 = !DILocation(line: 448, column: 50, scope: !385)
!486 = !DILocation(line: 448, column: 57, scope: !385)
!487 = !DILocation(line: 448, column: 44, scope: !385)
!488 = !DILocation(line: 449, column: 23, scope: !385)
!489 = !DILocation(line: 449, column: 30, scope: !385)
!490 = !DILocation(line: 449, column: 17, scope: !385)
!491 = !DILocation(line: 449, column: 50, scope: !385)
!492 = !DILocation(line: 449, column: 57, scope: !385)
!493 = !DILocation(line: 449, column: 44, scope: !385)
!494 = !DILocation(line: 450, column: 23, scope: !385)
!495 = !DILocation(line: 450, column: 30, scope: !385)
!496 = !DILocation(line: 450, column: 17, scope: !385)
!497 = !DILocation(line: 450, column: 50, scope: !385)
!498 = !DILocation(line: 450, column: 57, scope: !385)
!499 = !DILocation(line: 450, column: 44, scope: !385)
!500 = !DILocation(line: 451, column: 23, scope: !385)
!501 = !DILocation(line: 451, column: 30, scope: !385)
!502 = !DILocation(line: 451, column: 17, scope: !385)
!503 = !DILocation(line: 451, column: 50, scope: !385)
!504 = !DILocation(line: 451, column: 57, scope: !385)
!505 = !DILocation(line: 451, column: 44, scope: !385)
!506 = !DILocation(line: 452, column: 23, scope: !385)
!507 = !DILocation(line: 452, column: 30, scope: !385)
!508 = !DILocation(line: 452, column: 17, scope: !385)
!509 = !DILocation(line: 452, column: 50, scope: !385)
!510 = !DILocation(line: 452, column: 57, scope: !385)
!511 = !DILocation(line: 452, column: 44, scope: !385)
!512 = !DILocation(line: 453, column: 23, scope: !385)
!513 = !DILocation(line: 453, column: 30, scope: !385)
!514 = !DILocation(line: 453, column: 17, scope: !385)
!515 = !DILocation(line: 453, column: 50, scope: !385)
!516 = !DILocation(line: 453, column: 57, scope: !385)
!517 = !DILocation(line: 453, column: 44, scope: !385)
!518 = !DILocation(line: 454, column: 23, scope: !385)
!519 = !DILocation(line: 454, column: 30, scope: !385)
!520 = !DILocation(line: 454, column: 17, scope: !385)
!521 = !DILocation(line: 454, column: 50, scope: !385)
!522 = !DILocation(line: 454, column: 57, scope: !385)
!523 = !DILocation(line: 454, column: 44, scope: !385)
!524 = !DILocation(line: 455, column: 30, scope: !385)
!525 = !DILocation(line: 455, column: 17, scope: !385)
!526 = !DILocation(line: 455, column: 50, scope: !385)
!527 = !DILocation(line: 455, column: 57, scope: !385)
!528 = !DILocation(line: 455, column: 44, scope: !385)
!529 = !DILocation(line: 456, column: 23, scope: !385)
!530 = !DILocation(line: 456, column: 30, scope: !385)
!531 = !DILocation(line: 456, column: 17, scope: !385)
!532 = !DILocation(line: 456, column: 50, scope: !385)
!533 = !DILocation(line: 456, column: 57, scope: !385)
!534 = !DILocation(line: 456, column: 44, scope: !385)
!535 = !DILocation(line: 457, column: 23, scope: !385)
!536 = !DILocation(line: 457, column: 30, scope: !385)
!537 = !DILocation(line: 457, column: 17, scope: !385)
!538 = !DILocation(line: 457, column: 50, scope: !385)
!539 = !DILocation(line: 457, column: 57, scope: !385)
!540 = !DILocation(line: 457, column: 44, scope: !385)
!541 = !DILocation(line: 447, column: 12, scope: !385)
!542 = !DILocation(line: 447, column: 15, scope: !385)
!543 = !DILocation(line: 458, column: 5, scope: !385)
!544 = !DILocation(line: 422, column: 26, scope: !381)
!545 = !DILocation(line: 422, column: 5, scope: !381)
!546 = distinct !{!546, !382, !547, !225}
!547 = !DILocation(line: 458, column: 5, scope: !378)
!548 = !DILocation(line: 459, column: 1, scope: !277)
!549 = distinct !DISubprogram(name: "mbedtls_des_setkey_enc", scope: !3, file: !3, line: 465, type: !550, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{!82, !160, !105}
!552 = !DILocalVariable(name: "ctx", arg: 1, scope: !549, file: !3, line: 465, type: !160)
!553 = !DILocation(line: 0, scope: !549)
!554 = !DILocalVariable(name: "key", arg: 2, scope: !549, file: !3, line: 465, type: !105)
!555 = !DILocation(line: 467, column: 30, scope: !549)
!556 = !DILocation(line: 467, column: 25, scope: !549)
!557 = !DILocation(line: 467, column: 5, scope: !549)
!558 = !DILocation(line: 469, column: 5, scope: !549)
!559 = distinct !DISubprogram(name: "mbedtls_des_setkey_dec", scope: !3, file: !3, line: 475, type: !550, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!560 = !DILocalVariable(name: "ctx", arg: 1, scope: !559, file: !3, line: 475, type: !160)
!561 = !DILocation(line: 0, scope: !559)
!562 = !DILocalVariable(name: "key", arg: 2, scope: !559, file: !3, line: 475, type: !105)
!563 = !DILocation(line: 479, column: 30, scope: !559)
!564 = !DILocation(line: 479, column: 25, scope: !559)
!565 = !DILocation(line: 479, column: 5, scope: !559)
!566 = !DILocalVariable(name: "i", scope: !559, file: !3, line: 477, type: !82)
!567 = !DILocation(line: 481, column: 10, scope: !568)
!568 = distinct !DILexicalBlock(scope: !559, file: !3, line: 481, column: 5)
!569 = !DILocation(line: 0, scope: !568)
!570 = !DILocation(line: 481, column: 19, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !3, line: 481, column: 5)
!572 = !DILocation(line: 481, column: 5, scope: !568)
!573 = !DILocation(line: 483, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !3, line: 482, column: 5)
!575 = !DILocation(line: 483, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !574, file: !3, line: 483, column: 9)
!577 = !DILocalVariable(name: "t", scope: !576, file: !3, line: 483, type: !7)
!578 = !DILocation(line: 0, scope: !576)
!579 = !DILocation(line: 484, column: 9, scope: !574)
!580 = !DILocation(line: 484, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !574, file: !3, line: 484, column: 9)
!582 = !DILocalVariable(name: "t", scope: !581, file: !3, line: 484, type: !7)
!583 = !DILocation(line: 0, scope: !581)
!584 = !DILocation(line: 485, column: 5, scope: !574)
!585 = !DILocation(line: 481, column: 27, scope: !571)
!586 = !DILocation(line: 481, column: 5, scope: !571)
!587 = distinct !{!587, !572, !588, !225}
!588 = !DILocation(line: 485, column: 5, scope: !568)
!589 = !DILocation(line: 487, column: 5, scope: !559)
!590 = distinct !DISubprogram(name: "mbedtls_des3_set2key_enc", scope: !3, file: !3, line: 518, type: !591, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!591 = !DISubroutineType(types: !592)
!592 = !{!82, !182, !105}
!593 = !DILocalVariable(name: "ctx", arg: 1, scope: !590, file: !3, line: 518, type: !182)
!594 = !DILocation(line: 0, scope: !590)
!595 = !DILocalVariable(name: "key", arg: 2, scope: !590, file: !3, line: 519, type: !105)
!596 = !DILocalVariable(name: "sk", scope: !590, file: !3, line: 521, type: !187)
!597 = !DILocation(line: 521, column: 14, scope: !590)
!598 = !DILocation(line: 523, column: 24, scope: !590)
!599 = !DILocation(line: 523, column: 19, scope: !590)
!600 = !DILocation(line: 523, column: 28, scope: !590)
!601 = !DILocation(line: 523, column: 5, scope: !590)
!602 = !DILocation(line: 524, column: 31, scope: !590)
!603 = !DILocation(line: 524, column: 5, scope: !590)
!604 = !DILocation(line: 526, column: 5, scope: !590)
!605 = distinct !DISubprogram(name: "des3_set2key", scope: !3, file: !3, line: 490, type: !606, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !280, !280, !105}
!608 = !DILocalVariable(name: "esk", arg: 1, scope: !605, file: !3, line: 490, type: !280)
!609 = !DILocation(line: 0, scope: !605)
!610 = !DILocalVariable(name: "dsk", arg: 2, scope: !605, file: !3, line: 491, type: !280)
!611 = !DILocalVariable(name: "key", arg: 3, scope: !605, file: !3, line: 492, type: !105)
!612 = !DILocation(line: 496, column: 5, scope: !605)
!613 = !DILocation(line: 497, column: 29, scope: !605)
!614 = !DILocation(line: 497, column: 39, scope: !605)
!615 = !DILocation(line: 497, column: 5, scope: !605)
!616 = !DILocalVariable(name: "i", scope: !605, file: !3, line: 494, type: !82)
!617 = !DILocation(line: 499, column: 10, scope: !618)
!618 = distinct !DILexicalBlock(scope: !605, file: !3, line: 499, column: 5)
!619 = !DILocation(line: 0, scope: !618)
!620 = !DILocation(line: 499, column: 19, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 499, column: 5)
!622 = !DILocation(line: 499, column: 5, scope: !618)
!623 = !DILocation(line: 501, column: 30, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 500, column: 5)
!625 = !DILocation(line: 501, column: 23, scope: !624)
!626 = !DILocation(line: 501, column: 9, scope: !624)
!627 = !DILocation(line: 501, column: 21, scope: !624)
!628 = !DILocation(line: 502, column: 30, scope: !624)
!629 = !DILocation(line: 502, column: 23, scope: !624)
!630 = !DILocation(line: 502, column: 15, scope: !624)
!631 = !DILocation(line: 502, column: 9, scope: !624)
!632 = !DILocation(line: 502, column: 21, scope: !624)
!633 = !DILocation(line: 504, column: 30, scope: !624)
!634 = !DILocation(line: 504, column: 23, scope: !624)
!635 = !DILocation(line: 504, column: 15, scope: !624)
!636 = !DILocation(line: 504, column: 9, scope: !624)
!637 = !DILocation(line: 504, column: 21, scope: !624)
!638 = !DILocation(line: 505, column: 30, scope: !624)
!639 = !DILocation(line: 505, column: 23, scope: !624)
!640 = !DILocation(line: 505, column: 15, scope: !624)
!641 = !DILocation(line: 505, column: 9, scope: !624)
!642 = !DILocation(line: 505, column: 21, scope: !624)
!643 = !DILocation(line: 507, column: 23, scope: !624)
!644 = !DILocation(line: 507, column: 15, scope: !624)
!645 = !DILocation(line: 507, column: 9, scope: !624)
!646 = !DILocation(line: 507, column: 21, scope: !624)
!647 = !DILocation(line: 508, column: 29, scope: !624)
!648 = !DILocation(line: 508, column: 23, scope: !624)
!649 = !DILocation(line: 508, column: 15, scope: !624)
!650 = !DILocation(line: 508, column: 9, scope: !624)
!651 = !DILocation(line: 508, column: 21, scope: !624)
!652 = !DILocation(line: 510, column: 23, scope: !624)
!653 = !DILocation(line: 510, column: 15, scope: !624)
!654 = !DILocation(line: 510, column: 9, scope: !624)
!655 = !DILocation(line: 510, column: 21, scope: !624)
!656 = !DILocation(line: 511, column: 29, scope: !624)
!657 = !DILocation(line: 511, column: 23, scope: !624)
!658 = !DILocation(line: 511, column: 15, scope: !624)
!659 = !DILocation(line: 511, column: 9, scope: !624)
!660 = !DILocation(line: 511, column: 21, scope: !624)
!661 = !DILocation(line: 512, column: 5, scope: !624)
!662 = !DILocation(line: 499, column: 27, scope: !621)
!663 = !DILocation(line: 499, column: 5, scope: !621)
!664 = distinct !{!664, !622, !665, !225}
!665 = !DILocation(line: 512, column: 5, scope: !618)
!666 = !DILocation(line: 513, column: 1, scope: !605)
!667 = distinct !DISubprogram(name: "mbedtls_des3_set2key_dec", scope: !3, file: !3, line: 532, type: !591, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!668 = !DILocalVariable(name: "ctx", arg: 1, scope: !667, file: !3, line: 532, type: !182)
!669 = !DILocation(line: 0, scope: !667)
!670 = !DILocalVariable(name: "key", arg: 2, scope: !667, file: !3, line: 533, type: !105)
!671 = !DILocalVariable(name: "sk", scope: !667, file: !3, line: 535, type: !187)
!672 = !DILocation(line: 535, column: 14, scope: !667)
!673 = !DILocation(line: 537, column: 19, scope: !667)
!674 = !DILocation(line: 537, column: 28, scope: !667)
!675 = !DILocation(line: 537, column: 23, scope: !667)
!676 = !DILocation(line: 537, column: 5, scope: !667)
!677 = !DILocation(line: 538, column: 31, scope: !667)
!678 = !DILocation(line: 538, column: 5, scope: !667)
!679 = !DILocation(line: 540, column: 5, scope: !667)
!680 = distinct !DISubprogram(name: "mbedtls_des3_set3key_enc", scope: !3, file: !3, line: 569, type: !591, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!681 = !DILocalVariable(name: "ctx", arg: 1, scope: !680, file: !3, line: 569, type: !182)
!682 = !DILocation(line: 0, scope: !680)
!683 = !DILocalVariable(name: "key", arg: 2, scope: !680, file: !3, line: 570, type: !105)
!684 = !DILocalVariable(name: "sk", scope: !680, file: !3, line: 572, type: !187)
!685 = !DILocation(line: 572, column: 14, scope: !680)
!686 = !DILocation(line: 574, column: 24, scope: !680)
!687 = !DILocation(line: 574, column: 19, scope: !680)
!688 = !DILocation(line: 574, column: 28, scope: !680)
!689 = !DILocation(line: 574, column: 5, scope: !680)
!690 = !DILocation(line: 575, column: 31, scope: !680)
!691 = !DILocation(line: 575, column: 5, scope: !680)
!692 = !DILocation(line: 577, column: 5, scope: !680)
!693 = distinct !DISubprogram(name: "des3_set3key", scope: !3, file: !3, line: 543, type: !606, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!694 = !DILocalVariable(name: "esk", arg: 1, scope: !693, file: !3, line: 543, type: !280)
!695 = !DILocation(line: 0, scope: !693)
!696 = !DILocalVariable(name: "dsk", arg: 2, scope: !693, file: !3, line: 544, type: !280)
!697 = !DILocalVariable(name: "key", arg: 3, scope: !693, file: !3, line: 545, type: !105)
!698 = !DILocation(line: 549, column: 5, scope: !693)
!699 = !DILocation(line: 550, column: 29, scope: !693)
!700 = !DILocation(line: 550, column: 39, scope: !693)
!701 = !DILocation(line: 550, column: 5, scope: !693)
!702 = !DILocation(line: 551, column: 29, scope: !693)
!703 = !DILocation(line: 551, column: 39, scope: !693)
!704 = !DILocation(line: 551, column: 5, scope: !693)
!705 = !DILocalVariable(name: "i", scope: !693, file: !3, line: 547, type: !82)
!706 = !DILocation(line: 553, column: 10, scope: !707)
!707 = distinct !DILexicalBlock(scope: !693, file: !3, line: 553, column: 5)
!708 = !DILocation(line: 0, scope: !707)
!709 = !DILocation(line: 553, column: 19, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !3, line: 553, column: 5)
!711 = !DILocation(line: 553, column: 5, scope: !707)
!712 = !DILocation(line: 555, column: 30, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !3, line: 554, column: 5)
!714 = !DILocation(line: 555, column: 23, scope: !713)
!715 = !DILocation(line: 555, column: 9, scope: !713)
!716 = !DILocation(line: 555, column: 21, scope: !713)
!717 = !DILocation(line: 556, column: 30, scope: !713)
!718 = !DILocation(line: 556, column: 23, scope: !713)
!719 = !DILocation(line: 556, column: 15, scope: !713)
!720 = !DILocation(line: 556, column: 9, scope: !713)
!721 = !DILocation(line: 556, column: 21, scope: !713)
!722 = !DILocation(line: 558, column: 30, scope: !713)
!723 = !DILocation(line: 558, column: 23, scope: !713)
!724 = !DILocation(line: 558, column: 15, scope: !713)
!725 = !DILocation(line: 558, column: 9, scope: !713)
!726 = !DILocation(line: 558, column: 21, scope: !713)
!727 = !DILocation(line: 559, column: 30, scope: !713)
!728 = !DILocation(line: 559, column: 23, scope: !713)
!729 = !DILocation(line: 559, column: 15, scope: !713)
!730 = !DILocation(line: 559, column: 9, scope: !713)
!731 = !DILocation(line: 559, column: 21, scope: !713)
!732 = !DILocation(line: 561, column: 30, scope: !713)
!733 = !DILocation(line: 561, column: 23, scope: !713)
!734 = !DILocation(line: 561, column: 15, scope: !713)
!735 = !DILocation(line: 561, column: 9, scope: !713)
!736 = !DILocation(line: 561, column: 21, scope: !713)
!737 = !DILocation(line: 562, column: 30, scope: !713)
!738 = !DILocation(line: 562, column: 23, scope: !713)
!739 = !DILocation(line: 562, column: 15, scope: !713)
!740 = !DILocation(line: 562, column: 9, scope: !713)
!741 = !DILocation(line: 562, column: 21, scope: !713)
!742 = !DILocation(line: 563, column: 5, scope: !713)
!743 = !DILocation(line: 553, column: 27, scope: !710)
!744 = !DILocation(line: 553, column: 5, scope: !710)
!745 = distinct !{!745, !711, !746, !225}
!746 = !DILocation(line: 563, column: 5, scope: !707)
!747 = !DILocation(line: 564, column: 1, scope: !693)
!748 = distinct !DISubprogram(name: "mbedtls_des3_set3key_dec", scope: !3, file: !3, line: 583, type: !591, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!749 = !DILocalVariable(name: "ctx", arg: 1, scope: !748, file: !3, line: 583, type: !182)
!750 = !DILocation(line: 0, scope: !748)
!751 = !DILocalVariable(name: "key", arg: 2, scope: !748, file: !3, line: 584, type: !105)
!752 = !DILocalVariable(name: "sk", scope: !748, file: !3, line: 586, type: !187)
!753 = !DILocation(line: 586, column: 14, scope: !748)
!754 = !DILocation(line: 588, column: 19, scope: !748)
!755 = !DILocation(line: 588, column: 28, scope: !748)
!756 = !DILocation(line: 588, column: 23, scope: !748)
!757 = !DILocation(line: 588, column: 5, scope: !748)
!758 = !DILocation(line: 589, column: 31, scope: !748)
!759 = !DILocation(line: 589, column: 5, scope: !748)
!760 = !DILocation(line: 591, column: 5, scope: !748)
!761 = distinct !DISubprogram(name: "mbedtls_des_crypt_ecb", scope: !3, file: !3, line: 598, type: !762, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!762 = !DISubroutineType(types: !763)
!763 = !{!82, !160, !105, !104}
!764 = !DILocalVariable(name: "ctx", arg: 1, scope: !761, file: !3, line: 598, type: !160)
!765 = !DILocation(line: 0, scope: !761)
!766 = !DILocalVariable(name: "input", arg: 2, scope: !761, file: !3, line: 599, type: !105)
!767 = !DILocalVariable(name: "output", arg: 3, scope: !761, file: !3, line: 600, type: !104)
!768 = !DILocation(line: 605, column: 15, scope: !761)
!769 = !DILocation(line: 605, column: 10, scope: !761)
!770 = !DILocalVariable(name: "SK", scope: !761, file: !3, line: 603, type: !280)
!771 = !DILocation(line: 607, column: 9, scope: !761)
!772 = !DILocalVariable(name: "X", scope: !761, file: !3, line: 603, type: !7)
!773 = !DILocation(line: 608, column: 9, scope: !761)
!774 = !DILocalVariable(name: "Y", scope: !761, file: !3, line: 603, type: !7)
!775 = !DILocation(line: 610, column: 5, scope: !761)
!776 = !DILocation(line: 610, column: 5, scope: !777)
!777 = distinct !DILexicalBlock(scope: !761, file: !3, line: 610, column: 5)
!778 = !DILocalVariable(name: "T", scope: !761, file: !3, line: 603, type: !7)
!779 = !DILocalVariable(name: "i", scope: !761, file: !3, line: 602, type: !82)
!780 = !DILocation(line: 612, column: 10, scope: !781)
!781 = distinct !DILexicalBlock(scope: !761, file: !3, line: 612, column: 5)
!782 = !DILocation(line: 0, scope: !781)
!783 = !DILocation(line: 612, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 612, column: 5)
!785 = !DILocation(line: 612, column: 5, scope: !781)
!786 = !DILocation(line: 614, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 613, column: 5)
!788 = !DILocation(line: 614, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !787, file: !3, line: 614, column: 9)
!790 = !DILocation(line: 615, column: 9, scope: !787)
!791 = !DILocation(line: 615, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 615, column: 9)
!793 = !DILocation(line: 616, column: 5, scope: !787)
!794 = !DILocation(line: 612, column: 25, scope: !784)
!795 = !DILocation(line: 612, column: 5, scope: !784)
!796 = distinct !{!796, !785, !797, !225}
!797 = !DILocation(line: 616, column: 5, scope: !781)
!798 = !DILocation(line: 618, column: 5, scope: !761)
!799 = !DILocation(line: 618, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !761, file: !3, line: 618, column: 5)
!801 = !DILocation(line: 620, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 620, column: 5)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 620, column: 5)
!804 = distinct !DILexicalBlock(scope: !761, file: !3, line: 620, column: 5)
!805 = !DILocation(line: 621, column: 5, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 621, column: 5)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 621, column: 5)
!808 = distinct !DILexicalBlock(scope: !761, file: !3, line: 621, column: 5)
!809 = !DILocation(line: 623, column: 5, scope: !761)
!810 = distinct !DISubprogram(name: "mbedtls_des_crypt_cbc", scope: !3, file: !3, line: 631, type: !811, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!811 = !DISubroutineType(types: !812)
!812 = !{!82, !160, !82, !83, !104, !105, !104}
!813 = !DILocalVariable(name: "ctx", arg: 1, scope: !810, file: !3, line: 631, type: !160)
!814 = !DILocation(line: 0, scope: !810)
!815 = !DILocalVariable(name: "mode", arg: 2, scope: !810, file: !3, line: 632, type: !82)
!816 = !DILocalVariable(name: "length", arg: 3, scope: !810, file: !3, line: 633, type: !83)
!817 = !DILocalVariable(name: "iv", arg: 4, scope: !810, file: !3, line: 634, type: !104)
!818 = !DILocalVariable(name: "input", arg: 5, scope: !810, file: !3, line: 635, type: !105)
!819 = !DILocalVariable(name: "output", arg: 6, scope: !810, file: !3, line: 636, type: !104)
!820 = !DILocalVariable(name: "ret", scope: !810, file: !3, line: 638, type: !82)
!821 = !DILocalVariable(name: "temp", scope: !810, file: !3, line: 639, type: !822)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !50)
!823 = !DILocation(line: 639, column: 19, scope: !810)
!824 = !DILocation(line: 641, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !810, file: !3, line: 641, column: 9)
!826 = !DILocation(line: 641, column: 9, scope: !810)
!827 = !DILocation(line: 642, column: 9, scope: !825)
!828 = !DILocation(line: 644, column: 14, scope: !829)
!829 = distinct !DILexicalBlock(scope: !810, file: !3, line: 644, column: 9)
!830 = !DILocation(line: 644, column: 9, scope: !810)
!831 = !DILocation(line: 646, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 645, column: 5)
!833 = !DILocation(line: 646, column: 23, scope: !832)
!834 = !DILocation(line: 648, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 647, column: 9)
!836 = !DILocation(line: 650, column: 19, scope: !835)
!837 = !DILocation(line: 651, column: 21, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 651, column: 17)
!839 = !DILocation(line: 651, column: 17, scope: !835)
!840 = !DILocation(line: 652, column: 17, scope: !838)
!841 = !DILocation(line: 653, column: 13, scope: !835)
!842 = !DILocation(line: 655, column: 20, scope: !835)
!843 = !DILocation(line: 656, column: 20, scope: !835)
!844 = !DILocation(line: 657, column: 20, scope: !835)
!845 = distinct !{!845, !831, !846, !225}
!846 = !DILocation(line: 658, column: 9, scope: !832)
!847 = !DILocation(line: 659, column: 5, scope: !832)
!848 = !DILocation(line: 662, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !829, file: !3, line: 661, column: 5)
!850 = !DILocation(line: 662, column: 23, scope: !849)
!851 = !DILocation(line: 664, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !3, line: 663, column: 9)
!853 = !DILocation(line: 665, column: 19, scope: !852)
!854 = !DILocation(line: 666, column: 21, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 666, column: 17)
!856 = !DILocation(line: 666, column: 17, scope: !852)
!857 = !DILocation(line: 667, column: 17, scope: !855)
!858 = !DILocation(line: 669, column: 13, scope: !852)
!859 = !DILocation(line: 671, column: 13, scope: !852)
!860 = !DILocation(line: 673, column: 20, scope: !852)
!861 = !DILocation(line: 674, column: 20, scope: !852)
!862 = !DILocation(line: 675, column: 20, scope: !852)
!863 = distinct !{!863, !848, !864, !225}
!864 = !DILocation(line: 676, column: 9, scope: !849)
!865 = !DILocation(line: 678, column: 5, scope: !810)
!866 = !DILabel(scope: !810, name: "exit", file: !3, line: 680)
!867 = !DILocation(line: 680, column: 1, scope: !810)
!868 = !DILocation(line: 681, column: 5, scope: !810)
!869 = !DILocation(line: 682, column: 1, scope: !810)
!870 = distinct !DISubprogram(name: "mbedtls_des3_crypt_ecb", scope: !3, file: !3, line: 689, type: !871, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!871 = !DISubroutineType(types: !872)
!872 = !{!82, !182, !105, !104}
!873 = !DILocalVariable(name: "ctx", arg: 1, scope: !870, file: !3, line: 689, type: !182)
!874 = !DILocation(line: 0, scope: !870)
!875 = !DILocalVariable(name: "input", arg: 2, scope: !870, file: !3, line: 690, type: !105)
!876 = !DILocalVariable(name: "output", arg: 3, scope: !870, file: !3, line: 691, type: !104)
!877 = !DILocation(line: 696, column: 15, scope: !870)
!878 = !DILocation(line: 696, column: 10, scope: !870)
!879 = !DILocalVariable(name: "SK", scope: !870, file: !3, line: 694, type: !280)
!880 = !DILocation(line: 698, column: 9, scope: !870)
!881 = !DILocalVariable(name: "X", scope: !870, file: !3, line: 694, type: !7)
!882 = !DILocation(line: 699, column: 9, scope: !870)
!883 = !DILocalVariable(name: "Y", scope: !870, file: !3, line: 694, type: !7)
!884 = !DILocation(line: 701, column: 5, scope: !870)
!885 = !DILocation(line: 701, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !870, file: !3, line: 701, column: 5)
!887 = !DILocalVariable(name: "T", scope: !870, file: !3, line: 694, type: !7)
!888 = !DILocalVariable(name: "i", scope: !870, file: !3, line: 693, type: !82)
!889 = !DILocation(line: 703, column: 10, scope: !890)
!890 = distinct !DILexicalBlock(scope: !870, file: !3, line: 703, column: 5)
!891 = !DILocation(line: 0, scope: !890)
!892 = !DILocation(line: 703, column: 19, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 703, column: 5)
!894 = !DILocation(line: 703, column: 5, scope: !890)
!895 = !DILocation(line: 705, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 704, column: 5)
!897 = !DILocation(line: 705, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !896, file: !3, line: 705, column: 9)
!899 = !DILocation(line: 706, column: 9, scope: !896)
!900 = !DILocation(line: 706, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !3, line: 706, column: 9)
!902 = !DILocation(line: 707, column: 5, scope: !896)
!903 = !DILocation(line: 703, column: 25, scope: !893)
!904 = !DILocation(line: 703, column: 5, scope: !893)
!905 = distinct !{!905, !894, !906, !225}
!906 = !DILocation(line: 707, column: 5, scope: !890)
!907 = !DILocation(line: 709, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !870, file: !3, line: 709, column: 5)
!909 = !DILocation(line: 0, scope: !908)
!910 = !DILocation(line: 709, column: 19, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 709, column: 5)
!912 = !DILocation(line: 709, column: 5, scope: !908)
!913 = !DILocation(line: 711, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 710, column: 5)
!915 = !DILocation(line: 711, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !914, file: !3, line: 711, column: 9)
!917 = !DILocation(line: 712, column: 9, scope: !914)
!918 = !DILocation(line: 712, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !3, line: 712, column: 9)
!920 = !DILocation(line: 713, column: 5, scope: !914)
!921 = !DILocation(line: 709, column: 25, scope: !911)
!922 = !DILocation(line: 709, column: 5, scope: !911)
!923 = distinct !{!923, !912, !924, !225}
!924 = !DILocation(line: 713, column: 5, scope: !908)
!925 = !DILocation(line: 715, column: 10, scope: !926)
!926 = distinct !DILexicalBlock(scope: !870, file: !3, line: 715, column: 5)
!927 = !DILocation(line: 0, scope: !926)
!928 = !DILocation(line: 715, column: 19, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 715, column: 5)
!930 = !DILocation(line: 715, column: 5, scope: !926)
!931 = !DILocation(line: 717, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 716, column: 5)
!933 = !DILocation(line: 717, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !932, file: !3, line: 717, column: 9)
!935 = !DILocation(line: 718, column: 9, scope: !932)
!936 = !DILocation(line: 718, column: 9, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 718, column: 9)
!938 = !DILocation(line: 719, column: 5, scope: !932)
!939 = !DILocation(line: 715, column: 25, scope: !929)
!940 = !DILocation(line: 715, column: 5, scope: !929)
!941 = distinct !{!941, !930, !942, !225}
!942 = !DILocation(line: 719, column: 5, scope: !926)
!943 = !DILocation(line: 721, column: 5, scope: !870)
!944 = !DILocation(line: 721, column: 5, scope: !945)
!945 = distinct !DILexicalBlock(scope: !870, file: !3, line: 721, column: 5)
!946 = !DILocation(line: 723, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 723, column: 5)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 723, column: 5)
!949 = distinct !DILexicalBlock(scope: !870, file: !3, line: 723, column: 5)
!950 = !DILocation(line: 724, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 724, column: 5)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 724, column: 5)
!953 = distinct !DILexicalBlock(scope: !870, file: !3, line: 724, column: 5)
!954 = !DILocation(line: 726, column: 5, scope: !870)
!955 = distinct !DISubprogram(name: "mbedtls_des3_crypt_cbc", scope: !3, file: !3, line: 734, type: !956, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!956 = !DISubroutineType(types: !957)
!957 = !{!82, !182, !82, !83, !104, !105, !104}
!958 = !DILocalVariable(name: "ctx", arg: 1, scope: !955, file: !3, line: 734, type: !182)
!959 = !DILocation(line: 0, scope: !955)
!960 = !DILocalVariable(name: "mode", arg: 2, scope: !955, file: !3, line: 735, type: !82)
!961 = !DILocalVariable(name: "length", arg: 3, scope: !955, file: !3, line: 736, type: !83)
!962 = !DILocalVariable(name: "iv", arg: 4, scope: !955, file: !3, line: 737, type: !104)
!963 = !DILocalVariable(name: "input", arg: 5, scope: !955, file: !3, line: 738, type: !105)
!964 = !DILocalVariable(name: "output", arg: 6, scope: !955, file: !3, line: 739, type: !104)
!965 = !DILocalVariable(name: "ret", scope: !955, file: !3, line: 741, type: !82)
!966 = !DILocalVariable(name: "temp", scope: !955, file: !3, line: 742, type: !822)
!967 = !DILocation(line: 742, column: 19, scope: !955)
!968 = !DILocation(line: 744, column: 16, scope: !969)
!969 = distinct !DILexicalBlock(scope: !955, file: !3, line: 744, column: 9)
!970 = !DILocation(line: 744, column: 9, scope: !955)
!971 = !DILocation(line: 745, column: 9, scope: !969)
!972 = !DILocation(line: 747, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !955, file: !3, line: 747, column: 9)
!974 = !DILocation(line: 747, column: 9, scope: !955)
!975 = !DILocation(line: 749, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 748, column: 5)
!977 = !DILocation(line: 749, column: 23, scope: !976)
!978 = !DILocation(line: 751, column: 13, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 750, column: 9)
!980 = !DILocation(line: 753, column: 19, scope: !979)
!981 = !DILocation(line: 754, column: 21, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 754, column: 17)
!983 = !DILocation(line: 754, column: 17, scope: !979)
!984 = !DILocation(line: 755, column: 17, scope: !982)
!985 = !DILocation(line: 756, column: 13, scope: !979)
!986 = !DILocation(line: 758, column: 20, scope: !979)
!987 = !DILocation(line: 759, column: 20, scope: !979)
!988 = !DILocation(line: 760, column: 20, scope: !979)
!989 = distinct !{!989, !975, !990, !225}
!990 = !DILocation(line: 761, column: 9, scope: !976)
!991 = !DILocation(line: 762, column: 5, scope: !976)
!992 = !DILocation(line: 765, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !973, file: !3, line: 764, column: 5)
!994 = !DILocation(line: 765, column: 23, scope: !993)
!995 = !DILocation(line: 767, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 766, column: 9)
!997 = !DILocation(line: 768, column: 19, scope: !996)
!998 = !DILocation(line: 769, column: 21, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 769, column: 17)
!1000 = !DILocation(line: 769, column: 17, scope: !996)
!1001 = !DILocation(line: 770, column: 17, scope: !999)
!1002 = !DILocation(line: 772, column: 13, scope: !996)
!1003 = !DILocation(line: 774, column: 13, scope: !996)
!1004 = !DILocation(line: 776, column: 20, scope: !996)
!1005 = !DILocation(line: 777, column: 20, scope: !996)
!1006 = !DILocation(line: 778, column: 20, scope: !996)
!1007 = distinct !{!1007, !992, !1008, !225}
!1008 = !DILocation(line: 779, column: 9, scope: !993)
!1009 = !DILocation(line: 781, column: 5, scope: !955)
!1010 = !DILabel(scope: !955, name: "exit", file: !3, line: 783)
!1011 = !DILocation(line: 783, column: 1, scope: !955)
!1012 = !DILocation(line: 784, column: 5, scope: !955)
!1013 = !DILocation(line: 785, column: 1, scope: !955)
!1014 = distinct !DISubprogram(name: "mbedtls_des_self_test", scope: !3, file: !3, line: 846, type: !1015, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!82, !82}
!1017 = !DILocalVariable(name: "verbose", arg: 1, scope: !1014, file: !3, line: 846, type: !82)
!1018 = !DILocation(line: 0, scope: !1014)
!1019 = !DILocalVariable(name: "ret", scope: !1014, file: !3, line: 848, type: !82)
!1020 = !DILocalVariable(name: "ctx", scope: !1014, file: !3, line: 849, type: !161)
!1021 = !DILocation(line: 849, column: 25, scope: !1014)
!1022 = !DILocalVariable(name: "ctx3", scope: !1014, file: !3, line: 850, type: !183)
!1023 = !DILocation(line: 850, column: 26, scope: !1014)
!1024 = !DILocalVariable(name: "buf", scope: !1014, file: !3, line: 851, type: !822)
!1025 = !DILocation(line: 851, column: 19, scope: !1014)
!1026 = !DILocalVariable(name: "prv", scope: !1014, file: !3, line: 853, type: !822)
!1027 = !DILocation(line: 853, column: 19, scope: !1014)
!1028 = !DILocalVariable(name: "iv", scope: !1014, file: !3, line: 854, type: !822)
!1029 = !DILocation(line: 854, column: 19, scope: !1014)
!1030 = !DILocation(line: 857, column: 5, scope: !1014)
!1031 = !DILocation(line: 858, column: 5, scope: !1014)
!1032 = !DILocalVariable(name: "i", scope: !1014, file: !3, line: 848, type: !82)
!1033 = !DILocation(line: 862, column: 10, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 862, column: 5)
!1035 = !DILocation(line: 0, scope: !1034)
!1036 = !DILocation(line: 862, column: 19, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 862, column: 5)
!1038 = !DILocation(line: 862, column: 5, scope: !1034)
!1039 = !DILocation(line: 864, column: 15, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 863, column: 5)
!1041 = !DILocalVariable(name: "u", scope: !1014, file: !3, line: 848, type: !82)
!1042 = !DILocation(line: 865, column: 16, scope: !1040)
!1043 = !DILocalVariable(name: "v", scope: !1014, file: !3, line: 848, type: !82)
!1044 = !DILocation(line: 867, column: 21, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 867, column: 13)
!1046 = !DILocation(line: 867, column: 13, scope: !1040)
!1047 = !DILocation(line: 869, column: 34, scope: !1045)
!1048 = !DILocation(line: 869, column: 30, scope: !1045)
!1049 = !DILocation(line: 869, column: 61, scope: !1045)
!1050 = !DILocation(line: 869, column: 57, scope: !1045)
!1051 = !DILocation(line: 870, column: 34, scope: !1045)
!1052 = !DILocation(line: 870, column: 30, scope: !1045)
!1053 = !DILocation(line: 868, column: 13, scope: !1045)
!1054 = !DILocation(line: 872, column: 9, scope: !1040)
!1055 = !DILocation(line: 874, column: 9, scope: !1040)
!1056 = !DILocation(line: 877, column: 19, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 875, column: 9)
!1058 = !DILocation(line: 878, column: 13, scope: !1057)
!1059 = !DILocation(line: 881, column: 19, scope: !1057)
!1060 = !DILocation(line: 882, column: 13, scope: !1057)
!1061 = !DILocation(line: 885, column: 19, scope: !1057)
!1062 = !DILocation(line: 886, column: 13, scope: !1057)
!1063 = !DILocation(line: 889, column: 19, scope: !1057)
!1064 = !DILocation(line: 890, column: 13, scope: !1057)
!1065 = !DILocation(line: 893, column: 19, scope: !1057)
!1066 = !DILocation(line: 894, column: 13, scope: !1057)
!1067 = !DILocation(line: 897, column: 19, scope: !1057)
!1068 = !DILocation(line: 898, column: 13, scope: !1057)
!1069 = !DILocation(line: 901, column: 13, scope: !1057)
!1070 = !DILocation(line: 0, scope: !1057)
!1071 = !DILocation(line: 903, column: 17, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 903, column: 13)
!1073 = !DILocation(line: 903, column: 13, scope: !1040)
!1074 = !DILocation(line: 904, column: 13, scope: !1072)
!1075 = !DILocalVariable(name: "j", scope: !1014, file: !3, line: 848, type: !82)
!1076 = !DILocation(line: 906, column: 14, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 906, column: 9)
!1078 = !DILocation(line: 0, scope: !1077)
!1079 = !DILocation(line: 0, scope: !1040)
!1080 = !DILocation(line: 906, column: 23, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 906, column: 9)
!1082 = !DILocation(line: 906, column: 9, scope: !1077)
!1083 = !DILocation(line: 908, column: 19, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 908, column: 17)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 907, column: 9)
!1086 = !DILocation(line: 908, column: 17, scope: !1085)
!1087 = !DILocation(line: 909, column: 52, scope: !1084)
!1088 = !DILocation(line: 909, column: 57, scope: !1084)
!1089 = !DILocation(line: 909, column: 23, scope: !1084)
!1090 = !DILocation(line: 909, column: 17, scope: !1084)
!1091 = !DILocation(line: 911, column: 54, scope: !1084)
!1092 = !DILocation(line: 911, column: 59, scope: !1084)
!1093 = !DILocation(line: 911, column: 23, scope: !1084)
!1094 = !DILocation(line: 0, scope: !1084)
!1095 = !DILocation(line: 912, column: 21, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 912, column: 17)
!1097 = !DILocation(line: 912, column: 17, scope: !1085)
!1098 = !DILocation(line: 913, column: 17, scope: !1096)
!1099 = !DILocation(line: 914, column: 9, scope: !1085)
!1100 = !DILocation(line: 906, column: 31, scope: !1081)
!1101 = !DILocation(line: 906, column: 9, scope: !1081)
!1102 = distinct !{!1102, !1082, !1103, !225}
!1103 = !DILocation(line: 914, column: 9, scope: !1077)
!1104 = !DILocation(line: 916, column: 17, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 916, column: 13)
!1106 = !DILocation(line: 916, column: 40, scope: !1105)
!1107 = !DILocation(line: 917, column: 25, scope: !1105)
!1108 = !DILocation(line: 917, column: 30, scope: !1105)
!1109 = !DILocation(line: 917, column: 17, scope: !1105)
!1110 = !DILocation(line: 917, column: 56, scope: !1105)
!1111 = !DILocation(line: 917, column: 63, scope: !1105)
!1112 = !DILocation(line: 918, column: 17, scope: !1105)
!1113 = !DILocation(line: 918, column: 40, scope: !1105)
!1114 = !DILocation(line: 919, column: 25, scope: !1105)
!1115 = !DILocation(line: 919, column: 30, scope: !1105)
!1116 = !DILocation(line: 919, column: 17, scope: !1105)
!1117 = !DILocation(line: 919, column: 56, scope: !1105)
!1118 = !DILocation(line: 916, column: 13, scope: !1040)
!1119 = !DILocation(line: 921, column: 25, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 921, column: 17)
!1121 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 920, column: 9)
!1122 = !DILocation(line: 921, column: 17, scope: !1121)
!1123 = !DILocation(line: 922, column: 17, scope: !1120)
!1124 = !DILocation(line: 925, column: 13, scope: !1121)
!1125 = !DILocation(line: 928, column: 21, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 928, column: 13)
!1127 = !DILocation(line: 928, column: 13, scope: !1040)
!1128 = !DILocation(line: 929, column: 13, scope: !1126)
!1129 = !DILocation(line: 930, column: 5, scope: !1040)
!1130 = !DILocation(line: 862, column: 25, scope: !1037)
!1131 = !DILocation(line: 862, column: 5, scope: !1037)
!1132 = distinct !{!1132, !1038, !1133, !225}
!1133 = !DILocation(line: 930, column: 5, scope: !1034)
!1134 = !DILocation(line: 932, column: 17, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 932, column: 9)
!1136 = !DILocation(line: 932, column: 9, scope: !1014)
!1137 = !DILocation(line: 933, column: 9, scope: !1135)
!1138 = !DILocation(line: 939, column: 10, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 939, column: 5)
!1140 = !DILocation(line: 0, scope: !1139)
!1141 = !DILocation(line: 939, column: 19, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 939, column: 5)
!1143 = !DILocation(line: 939, column: 5, scope: !1139)
!1144 = !DILocation(line: 941, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 940, column: 5)
!1146 = !DILocation(line: 942, column: 16, scope: !1145)
!1147 = !DILocation(line: 944, column: 21, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 944, column: 13)
!1149 = !DILocation(line: 944, column: 13, scope: !1145)
!1150 = !DILocation(line: 946, column: 34, scope: !1148)
!1151 = !DILocation(line: 946, column: 30, scope: !1148)
!1152 = !DILocation(line: 946, column: 61, scope: !1148)
!1153 = !DILocation(line: 946, column: 57, scope: !1148)
!1154 = !DILocation(line: 947, column: 34, scope: !1148)
!1155 = !DILocation(line: 947, column: 30, scope: !1148)
!1156 = !DILocation(line: 945, column: 13, scope: !1148)
!1157 = !DILocation(line: 949, column: 9, scope: !1145)
!1158 = !DILocation(line: 950, column: 9, scope: !1145)
!1159 = !DILocation(line: 951, column: 9, scope: !1145)
!1160 = !DILocation(line: 953, column: 9, scope: !1145)
!1161 = !DILocation(line: 956, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 954, column: 9)
!1163 = !DILocation(line: 957, column: 13, scope: !1162)
!1164 = !DILocation(line: 960, column: 19, scope: !1162)
!1165 = !DILocation(line: 961, column: 13, scope: !1162)
!1166 = !DILocation(line: 964, column: 19, scope: !1162)
!1167 = !DILocation(line: 965, column: 13, scope: !1162)
!1168 = !DILocation(line: 968, column: 19, scope: !1162)
!1169 = !DILocation(line: 969, column: 13, scope: !1162)
!1170 = !DILocation(line: 972, column: 19, scope: !1162)
!1171 = !DILocation(line: 973, column: 13, scope: !1162)
!1172 = !DILocation(line: 976, column: 19, scope: !1162)
!1173 = !DILocation(line: 977, column: 13, scope: !1162)
!1174 = !DILocation(line: 980, column: 13, scope: !1162)
!1175 = !DILocation(line: 0, scope: !1162)
!1176 = !DILocation(line: 982, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 982, column: 13)
!1178 = !DILocation(line: 982, column: 13, scope: !1145)
!1179 = !DILocation(line: 983, column: 13, scope: !1177)
!1180 = !DILocation(line: 985, column: 15, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 985, column: 13)
!1182 = !DILocation(line: 985, column: 13, scope: !1145)
!1183 = !DILocation(line: 987, column: 18, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 987, column: 13)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 986, column: 9)
!1186 = !DILocation(line: 0, scope: !1184)
!1187 = !DILocation(line: 0, scope: !1145)
!1188 = !DILocation(line: 987, column: 27, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 987, column: 13)
!1190 = !DILocation(line: 987, column: 13, scope: !1184)
!1191 = !DILocation(line: 989, column: 23, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 989, column: 21)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 988, column: 13)
!1194 = !DILocation(line: 989, column: 21, scope: !1193)
!1195 = !DILocation(line: 990, column: 62, scope: !1192)
!1196 = !DILocation(line: 990, column: 66, scope: !1192)
!1197 = !DILocation(line: 990, column: 71, scope: !1192)
!1198 = !DILocation(line: 990, column: 27, scope: !1192)
!1199 = !DILocation(line: 990, column: 21, scope: !1192)
!1200 = !DILocation(line: 992, column: 64, scope: !1192)
!1201 = !DILocation(line: 992, column: 68, scope: !1192)
!1202 = !DILocation(line: 992, column: 73, scope: !1192)
!1203 = !DILocation(line: 992, column: 27, scope: !1192)
!1204 = !DILocation(line: 0, scope: !1192)
!1205 = !DILocation(line: 993, column: 25, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 993, column: 21)
!1207 = !DILocation(line: 993, column: 21, scope: !1193)
!1208 = !DILocation(line: 994, column: 21, scope: !1206)
!1209 = !DILocation(line: 995, column: 13, scope: !1193)
!1210 = !DILocation(line: 987, column: 35, scope: !1189)
!1211 = !DILocation(line: 987, column: 13, scope: !1189)
!1212 = distinct !{!1212, !1190, !1213, !225}
!1213 = !DILocation(line: 995, column: 13, scope: !1184)
!1214 = !DILocation(line: 996, column: 9, scope: !1185)
!1215 = !DILocation(line: 999, column: 18, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 999, column: 13)
!1217 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 998, column: 9)
!1218 = !DILocation(line: 0, scope: !1216)
!1219 = !DILocation(line: 999, column: 27, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 999, column: 13)
!1221 = !DILocation(line: 999, column: 13, scope: !1216)
!1222 = !DILocalVariable(name: "tmp", scope: !1223, file: !3, line: 1001, type: !822)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1000, column: 13)
!1224 = !DILocation(line: 1001, column: 31, scope: !1223)
!1225 = !DILocation(line: 1003, column: 23, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1003, column: 21)
!1227 = !DILocation(line: 1003, column: 21, scope: !1223)
!1228 = !DILocation(line: 1004, column: 62, scope: !1226)
!1229 = !DILocation(line: 1004, column: 66, scope: !1226)
!1230 = !DILocation(line: 1004, column: 71, scope: !1226)
!1231 = !DILocation(line: 1004, column: 27, scope: !1226)
!1232 = !DILocation(line: 1004, column: 21, scope: !1226)
!1233 = !DILocation(line: 1006, column: 64, scope: !1226)
!1234 = !DILocation(line: 1006, column: 68, scope: !1226)
!1235 = !DILocation(line: 1006, column: 73, scope: !1226)
!1236 = !DILocation(line: 1006, column: 27, scope: !1226)
!1237 = !DILocation(line: 0, scope: !1226)
!1238 = !DILocation(line: 1007, column: 25, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1007, column: 21)
!1240 = !DILocation(line: 1007, column: 21, scope: !1223)
!1241 = !DILocation(line: 1008, column: 21, scope: !1239)
!1242 = !DILocation(line: 1010, column: 17, scope: !1223)
!1243 = !DILocation(line: 1011, column: 17, scope: !1223)
!1244 = !DILocation(line: 1012, column: 17, scope: !1223)
!1245 = !DILocation(line: 1013, column: 13, scope: !1223)
!1246 = !DILocation(line: 999, column: 35, scope: !1220)
!1247 = !DILocation(line: 999, column: 13, scope: !1220)
!1248 = distinct !{!1248, !1221, !1249, !225}
!1249 = !DILocation(line: 1013, column: 13, scope: !1216)
!1250 = !DILocation(line: 1015, column: 13, scope: !1217)
!1251 = !DILocation(line: 976, column: 17, scope: !1162)
!1252 = !DILocation(line: 1018, column: 17, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1018, column: 13)
!1254 = !DILocation(line: 1018, column: 40, scope: !1253)
!1255 = !DILocation(line: 1019, column: 25, scope: !1253)
!1256 = !DILocation(line: 1019, column: 30, scope: !1253)
!1257 = !DILocation(line: 1019, column: 17, scope: !1253)
!1258 = !DILocation(line: 1019, column: 56, scope: !1253)
!1259 = !DILocation(line: 1019, column: 63, scope: !1253)
!1260 = !DILocation(line: 1020, column: 17, scope: !1253)
!1261 = !DILocation(line: 1020, column: 40, scope: !1253)
!1262 = !DILocation(line: 1021, column: 25, scope: !1253)
!1263 = !DILocation(line: 1021, column: 30, scope: !1253)
!1264 = !DILocation(line: 1021, column: 17, scope: !1253)
!1265 = !DILocation(line: 1021, column: 56, scope: !1253)
!1266 = !DILocation(line: 1018, column: 13, scope: !1145)
!1267 = !DILocation(line: 1023, column: 25, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1023, column: 17)
!1269 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1022, column: 9)
!1270 = !DILocation(line: 1023, column: 17, scope: !1269)
!1271 = !DILocation(line: 1024, column: 17, scope: !1268)
!1272 = !DILocation(line: 1027, column: 13, scope: !1269)
!1273 = !DILocation(line: 1030, column: 21, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1030, column: 13)
!1275 = !DILocation(line: 1030, column: 13, scope: !1145)
!1276 = !DILocation(line: 1031, column: 13, scope: !1274)
!1277 = !DILocation(line: 1032, column: 5, scope: !1145)
!1278 = !DILocation(line: 939, column: 25, scope: !1142)
!1279 = !DILocation(line: 939, column: 5, scope: !1142)
!1280 = distinct !{!1280, !1143, !1281, !225}
!1281 = !DILocation(line: 1032, column: 5, scope: !1139)
!1282 = !DILocation(line: 1035, column: 17, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 1035, column: 9)
!1284 = !DILocation(line: 1035, column: 9, scope: !1014)
!1285 = !DILocation(line: 1036, column: 9, scope: !1283)
!1286 = !DILocation(line: 1035, column: 20, scope: !1283)
!1287 = !DILabel(scope: !1014, name: "exit", file: !3, line: 1038)
!1288 = !DILocation(line: 1038, column: 1, scope: !1014)
!1289 = !DILocation(line: 1039, column: 5, scope: !1014)
!1290 = !DILocation(line: 1040, column: 5, scope: !1014)
!1291 = !DILocation(line: 1042, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 1042, column: 9)
!1293 = !DILocation(line: 1042, column: 9, scope: !1014)
!1294 = !DILocation(line: 1043, column: 9, scope: !1292)
!1295 = !DILocation(line: 1044, column: 5, scope: !1014)
!1296 = !DILocation(line: 1045, column: 1, scope: !1014)
!1297 = distinct !DISubprogram(name: "mbedtls_platform_zeroize", scope: !75, file: !75, line: 67, type: !1298, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !6, !83}
!1300 = !DILocalVariable(name: "buf", arg: 1, scope: !1297, file: !75, line: 67, type: !6)
!1301 = !DILocation(line: 0, scope: !1297)
!1302 = !DILocalVariable(name: "len", arg: 2, scope: !1297, file: !75, line: 67, type: !83)
!1303 = !DILocation(line: 69, column: 5, scope: !1297)
!1304 = !DILocation(line: 69, column: 5, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !75, line: 69, column: 5)
!1306 = !DILocation(line: 71, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !75, line: 71, column: 9)
!1308 = !DILocation(line: 71, column: 9, scope: !1297)
!1309 = !DILocation(line: 72, column: 9, scope: !1307)
!1310 = !DILocation(line: 73, column: 1, scope: !1297)
!1311 = distinct !DISubprogram(name: "mbedtls_platform_gmtime_r", scope: !75, file: !75, line: 105, type: !1312, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314, !1333, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1316, line: 7, size: 448, elements: !1317)
!1316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1329}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1315, file: !1316, line: 9, baseType: !82, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1315, file: !1316, line: 10, baseType: !82, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1315, file: !1316, line: 11, baseType: !82, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1315, file: !1316, line: 12, baseType: !82, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1315, file: !1316, line: 13, baseType: !82, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1315, file: !1316, line: 14, baseType: !82, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1315, file: !1316, line: 15, baseType: !82, size: 32, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1315, file: !1316, line: 16, baseType: !82, size: 32, offset: 224)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1315, file: !1316, line: 17, baseType: !82, size: 32, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !1315, file: !1316, line: 23, baseType: !1328, size: 64, offset: 320)
!1328 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !1315, file: !1316, line: 24, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_time_t", file: !1336, line: 39, baseType: !1337)
!1336 = !DIFile(filename: "../mbedtls/include/mbedtls/platform_time.h", directory: "/home/luwei/bech/Mbed/des")
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1338, line: 7, baseType: !1339)
!1338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !1328)
!1340 = !DILocalVariable(name: "tt", arg: 1, scope: !1311, file: !75, line: 105, type: !1333)
!1341 = !DILocation(line: 0, scope: !1311)
!1342 = !DILocalVariable(name: "tm_buf", arg: 2, scope: !1311, file: !75, line: 106, type: !1314)
!1343 = !DILocation(line: 116, column: 13, scope: !1311)
!1344 = !DILocation(line: 116, column: 5, scope: !1311)
!1345 = distinct !DISubprogram(name: "mbedtls_xor", scope: !1346, file: !1346, line: 123, type: !1347, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1346 = !DIFile(filename: "../mbedtls/library/common.h", directory: "/home/luwei/bech/Mbed/des")
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !104, !105, !105, !83}
!1349 = !DILocalVariable(name: "r", arg: 1, scope: !1345, file: !1346, line: 123, type: !104)
!1350 = !DILocation(line: 0, scope: !1345)
!1351 = !DILocalVariable(name: "a", arg: 2, scope: !1345, file: !1346, line: 123, type: !105)
!1352 = !DILocalVariable(name: "b", arg: 3, scope: !1345, file: !1346, line: 123, type: !105)
!1353 = !DILocalVariable(name: "n", arg: 4, scope: !1345, file: !1346, line: 123, type: !83)
!1354 = !DILocalVariable(name: "i", scope: !1345, file: !1346, line: 125, type: !83)
!1355 = !DILocation(line: 126, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !1346, line: 126, column: 5)
!1357 = !DILocation(line: 0, scope: !1356)
!1358 = !DILocation(line: 126, column: 22, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !1346, line: 126, column: 5)
!1360 = !DILocation(line: 126, column: 28, scope: !1359)
!1361 = !DILocation(line: 126, column: 5, scope: !1356)
!1362 = !DILocation(line: 128, column: 54, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !1346, line: 127, column: 5)
!1364 = !DILocation(line: 128, column: 22, scope: !1363)
!1365 = !DILocation(line: 128, column: 94, scope: !1363)
!1366 = !DILocation(line: 128, column: 62, scope: !1363)
!1367 = !DILocation(line: 128, column: 60, scope: !1363)
!1368 = !DILocalVariable(name: "x", scope: !1363, file: !1346, line: 128, type: !7)
!1369 = !DILocation(line: 0, scope: !1363)
!1370 = !DILocation(line: 129, column: 41, scope: !1363)
!1371 = !DILocation(line: 129, column: 9, scope: !1363)
!1372 = !DILocation(line: 130, column: 5, scope: !1363)
!1373 = !DILocation(line: 126, column: 36, scope: !1359)
!1374 = !DILocation(line: 126, column: 5, scope: !1359)
!1375 = distinct !{!1375, !1361, !1376, !225}
!1376 = !DILocation(line: 130, column: 5, scope: !1356)
!1377 = !DILocation(line: 131, column: 5, scope: !1345)
!1378 = !DILocation(line: 131, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !1346, line: 131, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1345, file: !1346, line: 131, column: 5)
!1381 = !DILocation(line: 131, column: 5, scope: !1380)
!1382 = !DILocation(line: 133, column: 16, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !1346, line: 132, column: 5)
!1384 = !DILocation(line: 133, column: 23, scope: !1383)
!1385 = !DILocation(line: 133, column: 21, scope: !1383)
!1386 = !DILocation(line: 133, column: 9, scope: !1383)
!1387 = !DILocation(line: 133, column: 14, scope: !1383)
!1388 = !DILocation(line: 134, column: 5, scope: !1383)
!1389 = !DILocation(line: 131, column: 21, scope: !1379)
!1390 = !DILocation(line: 131, column: 5, scope: !1379)
!1391 = distinct !{!1391, !1381, !1392, !225}
!1392 = !DILocation(line: 134, column: 5, scope: !1380)
!1393 = !DILocation(line: 135, column: 1, scope: !1345)
!1394 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint32", scope: !1395, file: !1395, line: 65, type: !1396, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1395 = !DIFile(filename: "../mbedtls/library/alignment.h", directory: "/home/luwei/bech/Mbed/des")
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!7, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1400 = !DILocalVariable(name: "p", arg: 1, scope: !1394, file: !1395, line: 65, type: !1398)
!1401 = !DILocation(line: 0, scope: !1394)
!1402 = !DILocalVariable(name: "r", scope: !1394, file: !1395, line: 67, type: !7)
!1403 = !DILocation(line: 67, column: 14, scope: !1394)
!1404 = !DILocation(line: 68, column: 5, scope: !1394)
!1405 = !DILocation(line: 69, column: 12, scope: !1394)
!1406 = !DILocation(line: 69, column: 5, scope: !1394)
!1407 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint32", scope: !1395, file: !1395, line: 79, type: !1408, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !6, !7}
!1410 = !DILocalVariable(name: "p", arg: 1, scope: !1407, file: !1395, line: 79, type: !6)
!1411 = !DILocation(line: 0, scope: !1407)
!1412 = !DILocalVariable(name: "x", arg: 2, scope: !1407, file: !1395, line: 79, type: !7)
!1413 = !DILocation(line: 79, column: 61, scope: !1407)
!1414 = !DILocation(line: 81, column: 5, scope: !1407)
!1415 = !DILocation(line: 82, column: 1, scope: !1407)
!1416 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint16", scope: !1395, file: !1395, line: 39, type: !1417, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1419, !1398}
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 25, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 40, baseType: !1421)
!1421 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1422 = !DILocalVariable(name: "p", arg: 1, scope: !1416, file: !1395, line: 39, type: !1398)
!1423 = !DILocation(line: 0, scope: !1416)
!1424 = !DILocalVariable(name: "r", scope: !1416, file: !1395, line: 41, type: !1419)
!1425 = !DILocation(line: 41, column: 14, scope: !1416)
!1426 = !DILocation(line: 42, column: 5, scope: !1416)
!1427 = !DILocation(line: 43, column: 12, scope: !1416)
!1428 = !DILocation(line: 43, column: 5, scope: !1416)
!1429 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint16", scope: !1395, file: !1395, line: 53, type: !1430, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !6, !1419}
!1432 = !DILocalVariable(name: "p", arg: 1, scope: !1429, file: !1395, line: 53, type: !6)
!1433 = !DILocation(line: 0, scope: !1429)
!1434 = !DILocalVariable(name: "x", arg: 2, scope: !1429, file: !1395, line: 53, type: !1419)
!1435 = !DILocation(line: 53, column: 61, scope: !1429)
!1436 = !DILocation(line: 55, column: 5, scope: !1429)
!1437 = !DILocation(line: 56, column: 1, scope: !1429)
!1438 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint64", scope: !1395, file: !1395, line: 91, type: !1439, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1441, !1398}
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !85)
!1443 = !DILocalVariable(name: "p", arg: 1, scope: !1438, file: !1395, line: 91, type: !1398)
!1444 = !DILocation(line: 0, scope: !1438)
!1445 = !DILocalVariable(name: "r", scope: !1438, file: !1395, line: 93, type: !1441)
!1446 = !DILocation(line: 93, column: 14, scope: !1438)
!1447 = !DILocation(line: 94, column: 5, scope: !1438)
!1448 = !DILocation(line: 95, column: 12, scope: !1438)
!1449 = !DILocation(line: 95, column: 5, scope: !1438)
!1450 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint64", scope: !1395, file: !1395, line: 105, type: !1451, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !4)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !6, !1441}
!1453 = !DILocalVariable(name: "p", arg: 1, scope: !1450, file: !1395, line: 105, type: !6)
!1454 = !DILocation(line: 0, scope: !1450)
!1455 = !DILocalVariable(name: "x", arg: 2, scope: !1450, file: !1395, line: 105, type: !1441)
!1456 = !DILocation(line: 105, column: 61, scope: !1450)
!1457 = !DILocation(line: 107, column: 5, scope: !1450)
!1458 = !DILocation(line: 108, column: 1, scope: !1450)
