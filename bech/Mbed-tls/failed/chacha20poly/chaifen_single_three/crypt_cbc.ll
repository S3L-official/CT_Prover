; ModuleID = 'crypt_cbc.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [20 x i8] c"  ChaCha20 test %u \00", align 1
@test_keys = internal constant [2 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01"], align 16, !dbg !0
@test_nonces = internal constant [2 x [12 x i8]] [[12 x i8] zeroinitializer, [12 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\02"], align 16, !dbg !13
@test_counters = internal constant [2 x i32] [i32 0, i32 1], align 4, !dbg !21
@test_lengths = internal constant [2 x i64] [i64 64, i64 375], align 16, !dbg !26
@test_input = internal constant [2 x [375 x i8]] [[375 x i8] zeroinitializer, [375 x i8] c"Any submission to the IETF intended by the Contributor for publication as all or part of an IETF Internet-Draft or RFC and any statement made within the context of an IETF activity is considered an \22IETF Contribution\22. Such statements include oral statements in IETF sessions, as well as written and electronic communications made at any time or place, which are addressed to"], align 16, !dbg !33
@.str.1 = private unnamed_addr constant [16 x i8] c"error code: %i\0A\00", align 1
@test_output = internal constant <{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }> <{ <{ [64 x i8], [311 x i8] }> <{ [64 x i8] c"v\B8\E0\AD\A0\F1=\90@]j\E5S\86\BD(\BD\D2\19\B8\A0\8D\ED\1A\A86\EF\CC\8Bw\0D\C7\DAAY|QWH\8Dw$\E0?\B8\D8J7jC\B8\F4\15\18\A1\1C\C3\87\B6i\B2\EEe\86", [311 x i8] zeroinitializer }>, [375 x i8] c"\A3\FB\F0}\F3\FA/\DEO7l\A2>\82spA`]\9FOOW\BD\8C\FF,\1DKyU\EC*\97\94\8B\D3r)\15\C8\F3\D37\F7\D3p\05\0E\9E\96\D6G\B7\C3\9FV\E01\CA^\B6%\0D@B\E0'\85\EC\EC\FAKK\B5\E8\EA\D0D\0E \B6\E8\DB\09\D8\81\A7\C6\13/B\0ERyPB\BD\FAws\D8\A9\05\14G\B3)\1C\E1A\1Ch\04eU*\A6\C4\05\B7vM^\87\BE\A8Z\D0\0F\84I\ED\8Fr\D0\D6b\AB\05&\91\CAfBK\C8m-\F8\0E\A4\1FC\AB\F97\D3%\9D\C4\B2\D0\DF\B4\8Al\919\DD\D7\F7if\E9(\E65U;\A7l\\\87\9D{5\D4\9E\B2\E6+\08q\CD\ACc\899\E2^\8A\1E\0E\F9\D5(\0F\A8\CA2\8B5\1C<vY\89\CB\CF=\AA\8Bl\CC:\AF\9F9y\C9+7 \FC\88\DC\95\ED\84\A1\BE\05\9Cd\99\B9\FD\A26\E7\E8\18\B0K\0B\C3\9C\1E\87k\19;\FEUiu?\88\12\8C\C0\8A\AA\9Bc\D1\A1o\80\EF%T\D7\18\9CA\1FXi\CAR\C5\B8?\A3o\F2\16\B9\C1\D3\00b\BE\BC\FD-\C5\BC\E0\91\194\FD\A7\9A\86\F6\E6\98\CE\D7Y\C3\FF\9Bdw3\8F=\A4\F9\CD\85\14\EA\99\82\CC\AF\B3A\B28M\D9\02\F3\D1\ABz\C6\1D\D2\9Co!\BA[\86/70\E3|\FD\C4\FD\80l\22\F2!" }>, align 16, !dbg !38
@.str.2 = private unnamed_addr constant [17 x i8] c"failed (output)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"  ChaCha20-Poly1305 test %u \00", align 1
@test_key = internal constant [1 x [32 x i8]] [[32 x i8] c"\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F"], align 16, !dbg !43
@.str.1.6 = private unnamed_addr constant [25 x i8] c"setkey() error code: %i\0A\00", align 1
@test_input_len = internal constant [1 x i64] [i64 114], align 8, !dbg !57
@test_nonce = internal constant [1 x [12 x i8]] [[12 x i8] c"\07\00\00\00@ABCDEFG"], align 1, !dbg !62
@test_aad = internal constant [1 x [12 x i8]] [[12 x i8] c"PQRS\C0\C1\C2\C3\C4\C5\C6\C7"], align 1, !dbg !66
@test_aad_len = internal constant [1 x i64] [i64 12], align 8, !dbg !68
@test_input.7 = internal constant [1 x [114 x i8]] [[114 x i8] c"Ladies and Gentlemen of the class of '99: If I could offer you only one tip for the future, sunscreen would be it."], align 16, !dbg !70
@.str.2.8 = private unnamed_addr constant [32 x i8] c"crypt_and_tag() error code: %i\0A\00", align 1
@test_output.9 = internal constant [1 x [114 x i8]] [[114 x i8] c"\D3\1A\8D4d\8E`\DB{\86\AF\BCS\EF~\C2\A4\AD\EDQ)n\08\FE\A9\E2\B5\A76\EEb\D6=\BE\A4^\8C\A9g\12\82\FA\FBi\DA\92r\8B\1Aq\DE\0A\9E\06\0B)\05\D6\A5\B6~\CD;6\92\DD\BD\7F-w\8B\8C\98\03\AE\E3(\09\1BX\FA\B3$\E4\FA\D6u\94U\85\80\8BH1\D7\BC?\F4\DE\F0\8EKz\9D\E5v\D2e\86\CE\C6Ka\16"], align 16, !dbg !75
@.str.3.10 = private unnamed_addr constant [24 x i8] c"failure (wrong output)\0A\00", align 1
@test_mac = internal constant [1 x [16 x i8]] [[16 x i8] c"\1A\E1\0BYO\09\E2j~\90.\CB\D0`\06\91"], align 16, !dbg !77
@.str.4.11 = private unnamed_addr constant [21 x i8] c"failure (wrong MAC)\0A\00", align 1
@.str.5.12 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"  Poly1305 test %u \00", align 1
@test_keys.34 = internal constant [2 x [32 x i8]] [[32 x i8] c"\85\D6\BExWUm3\7FDR\FEB\D5\06\A8\01\03\80\8A\FB\0D\B2\FDJ\BF\F6\AFAI\F5\1B", [32 x i8] c"\1C\92@\A5\EBU\D3\8A\F33\88\86\04\F6\B5\F0G9\17\C1@+\80\09\9D\CA\\\BC pu\C0"], align 16, !dbg !84
@test_data = internal constant <{ <{ [34 x i8], [93 x i8] }>, [127 x i8] }> <{ <{ [34 x i8], [93 x i8] }> <{ [34 x i8] c"Cryptographic Forum Research Group", [93 x i8] zeroinitializer }>, [127 x i8] c"'Twas brillig, and the slithy toves\0ADid gyre and gimble in the wabe:\0AAll mimsy were the borogoves,\0AAnd the mome raths outgrabe." }>, align 16, !dbg !89
@test_data_len = internal constant [2 x i64] [i64 34, i64 127], align 16, !dbg !94
@.str.1.35 = private unnamed_addr constant [16 x i8] c"error code: %i\0A\00", align 1
@test_mac.36 = internal constant [2 x [16 x i8]] [[16 x i8] c"\A8\06\1D\C10Q6\C6\C2+\8B\AF\0C\01'\A9", [16 x i8] c"EAf\9A~\AA\EEa\E7\08\DC|\BC\C5\EBb"], align 16, !dbg !96
@.str.2.37 = private unnamed_addr constant [14 x i8] c"failed (mac)\0A\00", align 1
@.str.3.38 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.4.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* %0) #0 !dbg !106 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !124, metadata !DIExpression()), !dbg !125
  %2 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !126
  %3 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0, !dbg !127
  %4 = bitcast i32* %3 to i8*, !dbg !127
  call void @mbedtls_platform_zeroize(i8* %4, i64 64), !dbg !128
  %5 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !129
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !130
  call void @mbedtls_platform_zeroize(i8* %6, i64 64), !dbg !131
  %7 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !132
  store i64 64, i64* %7, align 8, !dbg !133
  ret void, !dbg !134
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* %0) #0 !dbg !135 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !136, metadata !DIExpression()), !dbg !137
  %2 = icmp ne %struct.mbedtls_chacha20_context* %0, null, !dbg !138
  br i1 %2, label %3, label %5, !dbg !140

3:                                                ; preds = %1
  %4 = bitcast %struct.mbedtls_chacha20_context* %0 to i8*, !dbg !141
  call void @mbedtls_platform_zeroize(i8* %4, i64 136), !dbg !143
  br label %5, !dbg !144

5:                                                ; preds = %3, %1
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* %0, i8* %1) #0 !dbg !146 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %1, metadata !153, metadata !DIExpression()), !dbg !152
  %3 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !154
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !155
  store i32 1634760805, i32* %4, align 8, !dbg !156
  %5 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !157
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1, !dbg !158
  store i32 857760878, i32* %6, align 4, !dbg !159
  %7 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !160
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2, !dbg !161
  store i32 2036477234, i32* %8, align 8, !dbg !162
  %9 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !163
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3, !dbg !164
  store i32 1797285236, i32* %10, align 4, !dbg !165
  %11 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !166
  %12 = call i32 @mbedtls_get_unaligned_uint32(i8* %11), !dbg !166
  %13 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !167
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 4, !dbg !168
  store i32 %12, i32* %14, align 8, !dbg !169
  %15 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !170
  %16 = call i32 @mbedtls_get_unaligned_uint32(i8* %15), !dbg !170
  %17 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !171
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 5, !dbg !172
  store i32 %16, i32* %18, align 4, !dbg !173
  %19 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !174
  %20 = call i32 @mbedtls_get_unaligned_uint32(i8* %19), !dbg !174
  %21 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !175
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 6, !dbg !176
  store i32 %20, i32* %22, align 8, !dbg !177
  %23 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !178
  %24 = call i32 @mbedtls_get_unaligned_uint32(i8* %23), !dbg !178
  %25 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !179
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 7, !dbg !180
  store i32 %24, i32* %26, align 4, !dbg !181
  %27 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !182
  %28 = call i32 @mbedtls_get_unaligned_uint32(i8* %27), !dbg !182
  %29 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !183
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %29, i64 0, i64 8, !dbg !184
  store i32 %28, i32* %30, align 8, !dbg !185
  %31 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !186
  %32 = call i32 @mbedtls_get_unaligned_uint32(i8* %31), !dbg !186
  %33 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !187
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %33, i64 0, i64 9, !dbg !188
  store i32 %32, i32* %34, align 4, !dbg !189
  %35 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !190
  %36 = call i32 @mbedtls_get_unaligned_uint32(i8* %35), !dbg !190
  %37 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !191
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 10, !dbg !192
  store i32 %36, i32* %38, align 8, !dbg !193
  %39 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !194
  %40 = call i32 @mbedtls_get_unaligned_uint32(i8* %39), !dbg !194
  %41 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !195
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 0, i64 11, !dbg !196
  store i32 %40, i32* %42, align 4, !dbg !197
  ret i32 0, !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* %0, i8* %1, i32 %2) #0 !dbg !199 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %1, metadata !204, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %2, metadata !205, metadata !DIExpression()), !dbg !203
  %4 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !206
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12, !dbg !207
  store i32 %2, i32* %5, align 8, !dbg !208
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !209
  %7 = call i32 @mbedtls_get_unaligned_uint32(i8* %6), !dbg !209
  %8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !210
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !211
  store i32 %7, i32* %9, align 4, !dbg !212
  %10 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !213
  %11 = call i32 @mbedtls_get_unaligned_uint32(i8* %10), !dbg !213
  %12 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !214
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 14, !dbg !215
  store i32 %11, i32* %13, align 8, !dbg !216
  %14 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !217
  %15 = call i32 @mbedtls_get_unaligned_uint32(i8* %14), !dbg !217
  %16 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !218
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 15, !dbg !219
  store i32 %15, i32* %17, align 4, !dbg !220
  %18 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !221
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0, !dbg !222
  call void @mbedtls_platform_zeroize(i8* %19, i64 64), !dbg !223
  %20 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !224
  store i64 64, i64* %20, align 8, !dbg !225
  ret i32 0, !dbg !226
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !227 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 %1, metadata !233, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %2, metadata !234, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %3, metadata !235, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 0, metadata !236, metadata !DIExpression()), !dbg !232
  br label %5, !dbg !237

5:                                                ; preds = %13, %4
  %.01 = phi i64 [ %1, %4 ], [ %30, %13 ]
  %.0 = phi i64 [ 0, %4 ], [ %29, %13 ], !dbg !232
  call void @llvm.dbg.value(metadata i64 %.0, metadata !236, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 %.01, metadata !233, metadata !DIExpression()), !dbg !232
  %6 = icmp ugt i64 %.01, 0, !dbg !238
  br i1 %6, label %7, label %11, !dbg !239

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !240
  %9 = load i64, i64* %8, align 8, !dbg !240
  %10 = icmp ult i64 %9, 64, !dbg !241
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i1 [ false, %5 ], [ %10, %7 ], !dbg !232
  br i1 %12, label %13, label %31, !dbg !237

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !242
  %15 = load i8, i8* %14, align 1, !dbg !242
  %16 = zext i8 %15 to i32, !dbg !242
  %17 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !244
  %18 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !245
  %19 = load i64, i64* %18, align 8, !dbg !245
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 %19, !dbg !246
  %21 = load i8, i8* %20, align 1, !dbg !246
  %22 = zext i8 %21 to i32, !dbg !246
  %23 = xor i32 %16, %22, !dbg !247
  %24 = trunc i32 %23 to i8, !dbg !242
  %25 = getelementptr inbounds i8, i8* %3, i64 %.0, !dbg !248
  store i8 %24, i8* %25, align 1, !dbg !249
  %26 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !250
  %27 = load i64, i64* %26, align 8, !dbg !251
  %28 = add i64 %27, 1, !dbg !251
  store i64 %28, i64* %26, align 8, !dbg !251
  %29 = add i64 %.0, 1, !dbg !252
  call void @llvm.dbg.value(metadata i64 %29, metadata !236, metadata !DIExpression()), !dbg !232
  %30 = add i64 %.01, -1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %30, metadata !233, metadata !DIExpression()), !dbg !232
  br label %5, !dbg !237, !llvm.loop !254

31:                                               ; preds = %11
  br label %32, !dbg !257

32:                                               ; preds = %34, %31
  %.12 = phi i64 [ %.01, %31 ], [ %48, %34 ]
  %.1 = phi i64 [ %.0, %31 ], [ %47, %34 ], !dbg !232
  call void @llvm.dbg.value(metadata i64 %.1, metadata !236, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 %.12, metadata !233, metadata !DIExpression()), !dbg !232
  %33 = icmp uge i64 %.12, 64, !dbg !258
  br i1 %33, label %34, label %49, !dbg !257

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !259
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %35, i64 0, i64 0, !dbg !261
  %37 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !262
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %37, i64 0, i64 0, !dbg !263
  call void @chacha20_block(i32* %36, i8* %38), !dbg !264
  %39 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !265
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 12, !dbg !266
  %41 = load i32, i32* %40, align 8, !dbg !267
  %42 = add i32 %41, 1, !dbg !267
  store i32 %42, i32* %40, align 8, !dbg !267
  %43 = getelementptr inbounds i8, i8* %3, i64 %.1, !dbg !268
  %44 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !269
  %45 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !270
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %45, i64 0, i64 0, !dbg !271
  call void @mbedtls_xor(i8* %43, i8* %44, i8* %46, i64 64), !dbg !272
  %47 = add i64 %.1, 64, !dbg !273
  call void @llvm.dbg.value(metadata i64 %47, metadata !236, metadata !DIExpression()), !dbg !232
  %48 = sub i64 %.12, 64, !dbg !274
  call void @llvm.dbg.value(metadata i64 %48, metadata !233, metadata !DIExpression()), !dbg !232
  br label %32, !dbg !257, !llvm.loop !275

49:                                               ; preds = %32
  %50 = icmp ugt i64 %.12, 0, !dbg !277
  br i1 %50, label %51, label %65, !dbg !279

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !280
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %52, i64 0, i64 0, !dbg !282
  %54 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !283
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %54, i64 0, i64 0, !dbg !284
  call void @chacha20_block(i32* %53, i8* %55), !dbg !285
  %56 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !286
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i64 0, i64 12, !dbg !287
  %58 = load i32, i32* %57, align 8, !dbg !288
  %59 = add i32 %58, 1, !dbg !288
  store i32 %59, i32* %57, align 8, !dbg !288
  %60 = getelementptr inbounds i8, i8* %3, i64 %.1, !dbg !289
  %61 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !290
  %62 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !291
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %62, i64 0, i64 0, !dbg !292
  call void @mbedtls_xor(i8* %60, i8* %61, i8* %63, i64 %.12), !dbg !293
  %64 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !294
  store i64 %.12, i64* %64, align 8, !dbg !295
  br label %65, !dbg !296

65:                                               ; preds = %51, %49
  ret i32 0, !dbg !297
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_block(i32* %0, i8* %1) #0 !dbg !298 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i8* %1, metadata !304, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [16 x i32]* %3, metadata !305, metadata !DIExpression()), !dbg !306
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !307
  %5 = bitcast i32* %4 to i8*, !dbg !307
  %6 = bitcast i32* %0 to i8*, !dbg !307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 4 %6, i64 64, i1 false), !dbg !307
  call void @llvm.dbg.value(metadata i64 0, metadata !308, metadata !DIExpression()), !dbg !303
  br label %7, !dbg !309

7:                                                ; preds = %11, %2
  %.0 = phi i64 [ 0, %2 ], [ %12, %11 ], !dbg !311
  call void @llvm.dbg.value(metadata i64 %.0, metadata !308, metadata !DIExpression()), !dbg !303
  %8 = icmp ult i64 %.0, 10, !dbg !312
  br i1 %8, label %9, label %13, !dbg !314

9:                                                ; preds = %7
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !315
  call void @chacha20_inner_block(i32* %10), !dbg !316
  br label %11, !dbg !316

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %12, metadata !308, metadata !DIExpression()), !dbg !303
  br label %7, !dbg !318, !llvm.loop !319

13:                                               ; preds = %7
  %14 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !321
  %15 = load i32, i32* %14, align 4, !dbg !321
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !322
  %17 = load i32, i32* %16, align 16, !dbg !323
  %18 = add i32 %17, %15, !dbg !323
  store i32 %18, i32* %16, align 16, !dbg !323
  %19 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !324
  %20 = load i32, i32* %19, align 4, !dbg !324
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1, !dbg !325
  %22 = load i32, i32* %21, align 4, !dbg !326
  %23 = add i32 %22, %20, !dbg !326
  store i32 %23, i32* %21, align 4, !dbg !326
  %24 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !327
  %25 = load i32, i32* %24, align 4, !dbg !327
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2, !dbg !328
  %27 = load i32, i32* %26, align 8, !dbg !329
  %28 = add i32 %27, %25, !dbg !329
  store i32 %28, i32* %26, align 8, !dbg !329
  %29 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !330
  %30 = load i32, i32* %29, align 4, !dbg !330
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3, !dbg !331
  %32 = load i32, i32* %31, align 4, !dbg !332
  %33 = add i32 %32, %30, !dbg !332
  store i32 %33, i32* %31, align 4, !dbg !332
  %34 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !333
  %35 = load i32, i32* %34, align 4, !dbg !333
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4, !dbg !334
  %37 = load i32, i32* %36, align 16, !dbg !335
  %38 = add i32 %37, %35, !dbg !335
  store i32 %38, i32* %36, align 16, !dbg !335
  %39 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !336
  %40 = load i32, i32* %39, align 4, !dbg !336
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5, !dbg !337
  %42 = load i32, i32* %41, align 4, !dbg !338
  %43 = add i32 %42, %40, !dbg !338
  store i32 %43, i32* %41, align 4, !dbg !338
  %44 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !339
  %45 = load i32, i32* %44, align 4, !dbg !339
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6, !dbg !340
  %47 = load i32, i32* %46, align 8, !dbg !341
  %48 = add i32 %47, %45, !dbg !341
  store i32 %48, i32* %46, align 8, !dbg !341
  %49 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !342
  %50 = load i32, i32* %49, align 4, !dbg !342
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7, !dbg !343
  %52 = load i32, i32* %51, align 4, !dbg !344
  %53 = add i32 %52, %50, !dbg !344
  store i32 %53, i32* %51, align 4, !dbg !344
  %54 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !345
  %55 = load i32, i32* %54, align 4, !dbg !345
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8, !dbg !346
  %57 = load i32, i32* %56, align 16, !dbg !347
  %58 = add i32 %57, %55, !dbg !347
  store i32 %58, i32* %56, align 16, !dbg !347
  %59 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !348
  %60 = load i32, i32* %59, align 4, !dbg !348
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9, !dbg !349
  %62 = load i32, i32* %61, align 4, !dbg !350
  %63 = add i32 %62, %60, !dbg !350
  store i32 %63, i32* %61, align 4, !dbg !350
  %64 = getelementptr inbounds i32, i32* %0, i64 10, !dbg !351
  %65 = load i32, i32* %64, align 4, !dbg !351
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10, !dbg !352
  %67 = load i32, i32* %66, align 8, !dbg !353
  %68 = add i32 %67, %65, !dbg !353
  store i32 %68, i32* %66, align 8, !dbg !353
  %69 = getelementptr inbounds i32, i32* %0, i64 11, !dbg !354
  %70 = load i32, i32* %69, align 4, !dbg !354
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 11, !dbg !355
  %72 = load i32, i32* %71, align 4, !dbg !356
  %73 = add i32 %72, %70, !dbg !356
  store i32 %73, i32* %71, align 4, !dbg !356
  %74 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !357
  %75 = load i32, i32* %74, align 4, !dbg !357
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 12, !dbg !358
  %77 = load i32, i32* %76, align 16, !dbg !359
  %78 = add i32 %77, %75, !dbg !359
  store i32 %78, i32* %76, align 16, !dbg !359
  %79 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !360
  %80 = load i32, i32* %79, align 4, !dbg !360
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 13, !dbg !361
  %82 = load i32, i32* %81, align 4, !dbg !362
  %83 = add i32 %82, %80, !dbg !362
  store i32 %83, i32* %81, align 4, !dbg !362
  %84 = getelementptr inbounds i32, i32* %0, i64 14, !dbg !363
  %85 = load i32, i32* %84, align 4, !dbg !363
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14, !dbg !364
  %87 = load i32, i32* %86, align 8, !dbg !365
  %88 = add i32 %87, %85, !dbg !365
  store i32 %88, i32* %86, align 8, !dbg !365
  %89 = getelementptr inbounds i32, i32* %0, i64 15, !dbg !366
  %90 = load i32, i32* %89, align 4, !dbg !366
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15, !dbg !367
  %92 = load i32, i32* %91, align 4, !dbg !368
  %93 = add i32 %92, %90, !dbg !368
  store i32 %93, i32* %91, align 4, !dbg !368
  call void @llvm.dbg.value(metadata i64 0, metadata !308, metadata !DIExpression()), !dbg !303
  br label %94, !dbg !369

94:                                               ; preds = %101, %13
  %.1 = phi i64 [ 0, %13 ], [ %102, %101 ], !dbg !371
  call void @llvm.dbg.value(metadata i64 %.1, metadata !308, metadata !DIExpression()), !dbg !303
  %95 = icmp ult i64 %.1, 16, !dbg !372
  br i1 %95, label %96, label %103, !dbg !374

96:                                               ; preds = %94
  %97 = mul i64 %.1, 4, !dbg !375
  call void @llvm.dbg.value(metadata i64 %97, metadata !377, metadata !DIExpression()), !dbg !378
  %98 = getelementptr inbounds i8, i8* %1, i64 %97, !dbg !379
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %.1, !dbg !379
  %100 = load i32, i32* %99, align 4, !dbg !379
  call void @mbedtls_put_unaligned_uint32(i8* %98, i32 %100), !dbg !379
  br label %101, !dbg !383

101:                                              ; preds = %96
  %102 = add i64 %.1, 1, !dbg !384
  call void @llvm.dbg.value(metadata i64 %102, metadata !308, metadata !DIExpression()), !dbg !303
  br label %94, !dbg !385, !llvm.loop !386

103:                                              ; preds = %94
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !388
  %105 = bitcast i32* %104 to i8*, !dbg !388
  call void @mbedtls_platform_zeroize(i8* %105, i64 64), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_inner_block(i32* %0) #0 !dbg !391 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !395, metadata !DIExpression()), !dbg !396
  call void @chacha20_quarter_round(i32* %0, i64 0, i64 4, i64 8, i64 12), !dbg !397
  call void @chacha20_quarter_round(i32* %0, i64 1, i64 5, i64 9, i64 13), !dbg !398
  call void @chacha20_quarter_round(i32* %0, i64 2, i64 6, i64 10, i64 14), !dbg !399
  call void @chacha20_quarter_round(i32* %0, i64 3, i64 7, i64 11, i64 15), !dbg !400
  call void @chacha20_quarter_round(i32* %0, i64 0, i64 5, i64 10, i64 15), !dbg !401
  call void @chacha20_quarter_round(i32* %0, i64 1, i64 6, i64 11, i64 12), !dbg !402
  call void @chacha20_quarter_round(i32* %0, i64 2, i64 7, i64 8, i64 13), !dbg !403
  call void @chacha20_quarter_round(i32* %0, i64 3, i64 4, i64 9, i64 14), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_quarter_round(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 !dbg !406 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 %1, metadata !411, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 %2, metadata !412, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 %3, metadata !413, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 %4, metadata !414, metadata !DIExpression()), !dbg !410
  %6 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !415
  %7 = load i32, i32* %6, align 4, !dbg !415
  %8 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !416
  %9 = load i32, i32* %8, align 4, !dbg !417
  %10 = add i32 %9, %7, !dbg !417
  store i32 %10, i32* %8, align 4, !dbg !417
  %11 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !418
  %12 = load i32, i32* %11, align 4, !dbg !418
  %13 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !419
  %14 = load i32, i32* %13, align 4, !dbg !420
  %15 = xor i32 %14, %12, !dbg !420
  store i32 %15, i32* %13, align 4, !dbg !420
  %16 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !421
  %17 = load i32, i32* %16, align 4, !dbg !421
  %18 = shl i32 %17, 16, !dbg !421
  %19 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !421
  %20 = load i32, i32* %19, align 4, !dbg !421
  %21 = lshr i32 %20, 16, !dbg !421
  %22 = or i32 %18, %21, !dbg !421
  %23 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !422
  store i32 %22, i32* %23, align 4, !dbg !423
  %24 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !424
  %25 = load i32, i32* %24, align 4, !dbg !424
  %26 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !425
  %27 = load i32, i32* %26, align 4, !dbg !426
  %28 = add i32 %27, %25, !dbg !426
  store i32 %28, i32* %26, align 4, !dbg !426
  %29 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !427
  %30 = load i32, i32* %29, align 4, !dbg !427
  %31 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !428
  %32 = load i32, i32* %31, align 4, !dbg !429
  %33 = xor i32 %32, %30, !dbg !429
  store i32 %33, i32* %31, align 4, !dbg !429
  %34 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !430
  %35 = load i32, i32* %34, align 4, !dbg !430
  %36 = shl i32 %35, 12, !dbg !430
  %37 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !430
  %38 = load i32, i32* %37, align 4, !dbg !430
  %39 = lshr i32 %38, 20, !dbg !430
  %40 = or i32 %36, %39, !dbg !430
  %41 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !431
  store i32 %40, i32* %41, align 4, !dbg !432
  %42 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !433
  %43 = load i32, i32* %42, align 4, !dbg !433
  %44 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !434
  %45 = load i32, i32* %44, align 4, !dbg !435
  %46 = add i32 %45, %43, !dbg !435
  store i32 %46, i32* %44, align 4, !dbg !435
  %47 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !436
  %48 = load i32, i32* %47, align 4, !dbg !436
  %49 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !437
  %50 = load i32, i32* %49, align 4, !dbg !438
  %51 = xor i32 %50, %48, !dbg !438
  store i32 %51, i32* %49, align 4, !dbg !438
  %52 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !439
  %53 = load i32, i32* %52, align 4, !dbg !439
  %54 = shl i32 %53, 8, !dbg !439
  %55 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !439
  %56 = load i32, i32* %55, align 4, !dbg !439
  %57 = lshr i32 %56, 24, !dbg !439
  %58 = or i32 %54, %57, !dbg !439
  %59 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !440
  store i32 %58, i32* %59, align 4, !dbg !441
  %60 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !442
  %61 = load i32, i32* %60, align 4, !dbg !442
  %62 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !443
  %63 = load i32, i32* %62, align 4, !dbg !444
  %64 = add i32 %63, %61, !dbg !444
  store i32 %64, i32* %62, align 4, !dbg !444
  %65 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !445
  %66 = load i32, i32* %65, align 4, !dbg !445
  %67 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !446
  %68 = load i32, i32* %67, align 4, !dbg !447
  %69 = xor i32 %68, %66, !dbg !447
  store i32 %69, i32* %67, align 4, !dbg !447
  %70 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !448
  %71 = load i32, i32* %70, align 4, !dbg !448
  %72 = shl i32 %71, 7, !dbg !448
  %73 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !448
  %74 = load i32, i32* %73, align 4, !dbg !448
  %75 = lshr i32 %74, 25, !dbg !448
  %76 = or i32 %72, %75, !dbg !448
  %77 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !449
  store i32 %76, i32* %77, align 4, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_crypt(i8* %0, i8* %1, i32 %2, i64 %3, i8* %4, i8* %5) #0 !dbg !452 {
  %7 = alloca %struct.mbedtls_chacha20_context, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %1, metadata !457, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %2, metadata !458, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %3, metadata !459, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %4, metadata !460, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %5, metadata !461, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata %struct.mbedtls_chacha20_context* %7, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i32 -110, metadata !464, metadata !DIExpression()), !dbg !456
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* %7), !dbg !465
  %8 = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* %7, i8* %0), !dbg !466
  call void @llvm.dbg.value(metadata i32 %8, metadata !464, metadata !DIExpression()), !dbg !456
  %9 = icmp ne i32 %8, 0, !dbg !467
  br i1 %9, label %10, label %11, !dbg !469

10:                                               ; preds = %6
  br label %17, !dbg !470

11:                                               ; preds = %6
  %12 = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* %7, i8* %1, i32 %2), !dbg !471
  call void @llvm.dbg.value(metadata i32 %12, metadata !464, metadata !DIExpression()), !dbg !456
  %13 = icmp ne i32 %12, 0, !dbg !472
  br i1 %13, label %14, label %15, !dbg !474

14:                                               ; preds = %11
  br label %17, !dbg !475

15:                                               ; preds = %11
  %16 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %7, i64 %3, i8* %4, i8* %5), !dbg !476
  call void @llvm.dbg.value(metadata i32 %16, metadata !464, metadata !DIExpression()), !dbg !456
  br label %17, !dbg !477

17:                                               ; preds = %15, %14, %10
  %.0 = phi i32 [ %8, %10 ], [ %12, %14 ], [ %16, %15 ], !dbg !456
  call void @llvm.dbg.value(metadata i32 %.0, metadata !464, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.label(metadata !478), !dbg !479
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* %7), !dbg !480
  ret i32 %.0, !dbg !481
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_self_test(i32 %0) #0 !dbg !482 {
  %2 = alloca [381 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata [381 x i8]* %2, metadata !487, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i32 -110, metadata !492, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()), !dbg !486
  br label %3, !dbg !494

3:                                                ; preds = %57, %1
  %.01 = phi i32 [ 0, %1 ], [ %58, %57 ], !dbg !496
  call void @llvm.dbg.value(metadata i32 %.01, metadata !493, metadata !DIExpression()), !dbg !486
  %4 = icmp ult i32 %.01, 2, !dbg !497
  br i1 %4, label %5, label %59, !dbg !499

5:                                                ; preds = %3
  %6 = icmp ne i32 %0, 0, !dbg !500
  br i1 %6, label %7, label %9, !dbg !503

7:                                                ; preds = %5
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %.01), !dbg !504
  br label %9, !dbg !504

9:                                                ; preds = %7, %5
  %10 = zext i32 %.01 to i64, !dbg !505
  %11 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* @test_keys, i64 0, i64 %10, !dbg !505
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !505
  %13 = zext i32 %.01 to i64, !dbg !506
  %14 = getelementptr inbounds [2 x [12 x i8]], [2 x [12 x i8]]* @test_nonces, i64 0, i64 %13, !dbg !506
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0, !dbg !506
  %16 = zext i32 %.01 to i64, !dbg !507
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @test_counters, i64 0, i64 %16, !dbg !507
  %18 = load i32, i32* %17, align 4, !dbg !507
  %19 = zext i32 %.01 to i64, !dbg !508
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* @test_lengths, i64 0, i64 %19, !dbg !508
  %21 = load i64, i64* %20, align 8, !dbg !508
  %22 = zext i32 %.01 to i64, !dbg !509
  %23 = getelementptr inbounds [2 x [375 x i8]], [2 x [375 x i8]]* @test_input, i64 0, i64 %22, !dbg !509
  %24 = getelementptr inbounds [375 x i8], [375 x i8]* %23, i64 0, i64 0, !dbg !509
  %25 = getelementptr inbounds [381 x i8], [381 x i8]* %2, i64 0, i64 0, !dbg !510
  %26 = call i32 @mbedtls_chacha20_crypt(i8* %12, i8* %15, i32 %18, i64 %21, i8* %24, i8* %25), !dbg !511
  call void @llvm.dbg.value(metadata i32 %26, metadata !492, metadata !DIExpression()), !dbg !486
  br label %27, !dbg !512

27:                                               ; preds = %9
  %28 = icmp eq i32 0, %26, !dbg !513
  br i1 %28, label %34, label %29, !dbg !516

29:                                               ; preds = %27
  %30 = icmp ne i32 %0, 0, !dbg !517
  br i1 %30, label %31, label %33, !dbg !520

31:                                               ; preds = %29
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %26), !dbg !517
  br label %33, !dbg !517

33:                                               ; preds = %31, %29
  br label %64, !dbg !520

34:                                               ; preds = %27
  br label %35, !dbg !516

35:                                               ; preds = %34
  br label %36, !dbg !521

36:                                               ; preds = %35
  %37 = getelementptr inbounds [381 x i8], [381 x i8]* %2, i64 0, i64 0, !dbg !522
  %38 = zext i32 %.01 to i64, !dbg !522
  %39 = getelementptr inbounds [2 x [375 x i8]], [2 x [375 x i8]]* bitcast (<{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }>* @test_output to [2 x [375 x i8]]*), i64 0, i64 %38, !dbg !522
  %40 = getelementptr inbounds [375 x i8], [375 x i8]* %39, i64 0, i64 0, !dbg !522
  %41 = zext i32 %.01 to i64, !dbg !522
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* @test_lengths, i64 0, i64 %41, !dbg !522
  %43 = load i64, i64* %42, align 8, !dbg !522
  %44 = call i32 @memcmp(i8* %37, i8* %40, i64 %43) #7, !dbg !522
  %45 = icmp eq i32 0, %44, !dbg !522
  br i1 %45, label %51, label %46, !dbg !525

46:                                               ; preds = %36
  %47 = icmp ne i32 %0, 0, !dbg !526
  br i1 %47, label %48, label %50, !dbg !529

48:                                               ; preds = %46
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)), !dbg !526
  br label %50, !dbg !526

50:                                               ; preds = %48, %46
  br label %64, !dbg !529

51:                                               ; preds = %36
  br label %52, !dbg !525

52:                                               ; preds = %51
  %53 = icmp ne i32 %0, 0, !dbg !530
  br i1 %53, label %54, label %56, !dbg !532

54:                                               ; preds = %52
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !533
  br label %56, !dbg !533

56:                                               ; preds = %54, %52
  br label %57, !dbg !534

57:                                               ; preds = %56
  %58 = add i32 %.01, 1, !dbg !535
  call void @llvm.dbg.value(metadata i32 %58, metadata !493, metadata !DIExpression()), !dbg !486
  br label %3, !dbg !536, !llvm.loop !537

59:                                               ; preds = %3
  %60 = icmp ne i32 %0, 0, !dbg !539
  br i1 %60, label %61, label %63, !dbg !541

61:                                               ; preds = %59
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !542
  br label %63, !dbg !542

63:                                               ; preds = %61, %59
  br label %64, !dbg !543

64:                                               ; preds = %63, %50, %33
  %.0 = phi i32 [ -1, %50 ], [ -1, %33 ], [ 0, %63 ], !dbg !486
  ret i32 %.0, !dbg !544
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* %0) #0 !dbg !545 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !581, metadata !DIExpression()), !dbg !582
  %2 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !583
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* %2), !dbg !584
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !585
  call void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* %3), !dbg !586
  %4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !587
  store i64 0, i64* %4, align 8, !dbg !588
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !589
  store i64 0, i64* %5, align 8, !dbg !590
  %6 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !591
  store i32 0, i32* %6, align 8, !dbg !592
  %7 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !593
  store i32 0, i32* %7, align 4, !dbg !594
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* %0) #0 !dbg !596 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !597, metadata !DIExpression()), !dbg !598
  %2 = icmp eq %struct.mbedtls_chachapoly_context* %0, null, !dbg !599
  br i1 %2, label %3, label %4, !dbg !601

3:                                                ; preds = %1
  br label %11, !dbg !602

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !603
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* %5), !dbg !604
  %6 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !605
  call void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* %6), !dbg !606
  %7 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !607
  store i64 0, i64* %7, align 8, !dbg !608
  %8 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !609
  store i64 0, i64* %8, align 8, !dbg !610
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !611
  store i32 0, i32* %9, align 8, !dbg !612
  %10 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !613
  store i32 0, i32* %10, align 4, !dbg !614
  br label %11, !dbg !615

11:                                               ; preds = %4, %3
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* %0, i8* %1) #0 !dbg !616 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !619, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i8* %1, metadata !621, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 -110, metadata !622, metadata !DIExpression()), !dbg !620
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !623
  %4 = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* %3, i8* %1), !dbg !624
  call void @llvm.dbg.value(metadata i32 %4, metadata !622, metadata !DIExpression()), !dbg !620
  ret i32 %4, !dbg !625
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* %0, i8* %1, i32 %2) #0 !dbg !626 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i8* %1, metadata !631, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i32 %2, metadata !632, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i32 -110, metadata !633, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata [64 x i8]* %4, metadata !634, metadata !DIExpression()), !dbg !636
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !637
  %6 = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* %5, i8* %1, i32 0), !dbg !638
  call void @llvm.dbg.value(metadata i32 %6, metadata !633, metadata !DIExpression()), !dbg !630
  %7 = icmp ne i32 %6, 0, !dbg !639
  br i1 %7, label %8, label %9, !dbg !641

8:                                                ; preds = %3
  br label %28, !dbg !642

9:                                                ; preds = %3
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !643
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false), !dbg !643
  %11 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !644
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !645
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !646
  %14 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %11, i64 64, i8* %12, i8* %13), !dbg !647
  call void @llvm.dbg.value(metadata i32 %14, metadata !633, metadata !DIExpression()), !dbg !630
  %15 = icmp ne i32 %14, 0, !dbg !648
  br i1 %15, label %16, label %17, !dbg !650

16:                                               ; preds = %9
  br label %28, !dbg !651

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !652
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !653
  %20 = call i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* %18, i8* %19), !dbg !654
  call void @llvm.dbg.value(metadata i32 %20, metadata !633, metadata !DIExpression()), !dbg !630
  %21 = icmp eq i32 %20, 0, !dbg !655
  br i1 %21, label %22, label %27, !dbg !657

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !658
  store i64 0, i64* %23, align 8, !dbg !660
  %24 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !661
  store i64 0, i64* %24, align 8, !dbg !662
  %25 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !663
  store i32 1, i32* %25, align 8, !dbg !664
  %26 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !665
  store i32 %2, i32* %26, align 4, !dbg !666
  br label %27, !dbg !667

27:                                               ; preds = %22, %17
  br label %28, !dbg !668

28:                                               ; preds = %27, %16, %8
  %.0 = phi i32 [ %6, %8 ], [ %14, %16 ], [ %20, %27 ], !dbg !630
  call void @llvm.dbg.value(metadata i32 %.0, metadata !633, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.label(metadata !669), !dbg !670
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !671
  call void @mbedtls_platform_zeroize(i8* %29, i64 64), !dbg !672
  ret i32 %.0, !dbg !673
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* %0, i8* %1, i64 %2) #0 !dbg !674 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i8* %1, metadata !679, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i64 %2, metadata !680, metadata !DIExpression()), !dbg !678
  %4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !681
  %5 = load i32, i32* %4, align 8, !dbg !681
  %6 = icmp ne i32 %5, 1, !dbg !683
  br i1 %6, label %7, label %8, !dbg !684

7:                                                ; preds = %3
  br label %14, !dbg !685

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !686
  %10 = load i64, i64* %9, align 8, !dbg !687
  %11 = add i64 %10, %2, !dbg !687
  store i64 %11, i64* %9, align 8, !dbg !687
  %12 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !688
  %13 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %12, i8* %1, i64 %2), !dbg !689
  br label %14, !dbg !690

14:                                               ; preds = %8, %7
  %.0 = phi i32 [ -84, %7 ], [ %13, %8 ], !dbg !678
  ret i32 %.0, !dbg !691
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !692 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %1, metadata !697, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %2, metadata !698, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %3, metadata !699, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 -110, metadata !700, metadata !DIExpression()), !dbg !696
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !701
  %6 = load i32, i32* %5, align 8, !dbg !701
  %7 = icmp ne i32 %6, 1, !dbg !703
  br i1 %7, label %8, label %13, !dbg !704

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !705
  %10 = load i32, i32* %9, align 8, !dbg !705
  %11 = icmp ne i32 %10, 2, !dbg !706
  br i1 %11, label %12, label %13, !dbg !707

12:                                               ; preds = %8
  br label %53, !dbg !708

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !710
  %15 = load i32, i32* %14, align 8, !dbg !710
  %16 = icmp eq i32 %15, 1, !dbg !712
  br i1 %16, label %17, label %23, !dbg !713

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !714
  store i32 2, i32* %18, align 8, !dbg !716
  %19 = call i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* %0), !dbg !717
  call void @llvm.dbg.value(metadata i32 %19, metadata !700, metadata !DIExpression()), !dbg !696
  %20 = icmp ne i32 %19, 0, !dbg !718
  br i1 %20, label %21, label %22, !dbg !720

21:                                               ; preds = %17
  br label %53, !dbg !721

22:                                               ; preds = %17
  br label %23, !dbg !722

23:                                               ; preds = %22, %13
  %24 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !723
  %25 = load i64, i64* %24, align 8, !dbg !724
  %26 = add i64 %25, %1, !dbg !724
  store i64 %26, i64* %24, align 8, !dbg !724
  %27 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !725
  %28 = load i32, i32* %27, align 4, !dbg !725
  %29 = icmp eq i32 %28, 0, !dbg !727
  br i1 %29, label %30, label %41, !dbg !728

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !729
  %32 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %31, i64 %1, i8* %2, i8* %3), !dbg !731
  call void @llvm.dbg.value(metadata i32 %32, metadata !700, metadata !DIExpression()), !dbg !696
  %33 = icmp ne i32 %32, 0, !dbg !732
  br i1 %33, label %34, label %35, !dbg !734

34:                                               ; preds = %30
  br label %53, !dbg !735

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !736
  %37 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %36, i8* %3, i64 %1), !dbg !737
  call void @llvm.dbg.value(metadata i32 %37, metadata !700, metadata !DIExpression()), !dbg !696
  %38 = icmp ne i32 %37, 0, !dbg !738
  br i1 %38, label %39, label %40, !dbg !740

39:                                               ; preds = %35
  br label %53, !dbg !741

40:                                               ; preds = %35
  br label %52, !dbg !742

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !743
  %43 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %42, i8* %2, i64 %1), !dbg !745
  call void @llvm.dbg.value(metadata i32 %43, metadata !700, metadata !DIExpression()), !dbg !696
  %44 = icmp ne i32 %43, 0, !dbg !746
  br i1 %44, label %45, label %46, !dbg !748

45:                                               ; preds = %41
  br label %53, !dbg !749

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !750
  %48 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %47, i64 %1, i8* %2, i8* %3), !dbg !751
  call void @llvm.dbg.value(metadata i32 %48, metadata !700, metadata !DIExpression()), !dbg !696
  %49 = icmp ne i32 %48, 0, !dbg !752
  br i1 %49, label %50, label %51, !dbg !754

50:                                               ; preds = %46
  br label %53, !dbg !755

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %40
  br label %53, !dbg !756

53:                                               ; preds = %52, %50, %45, %39, %34, %21, %12
  %.0 = phi i32 [ -84, %12 ], [ %19, %21 ], [ %32, %34 ], [ %37, %39 ], [ 0, %52 ], [ %43, %45 ], [ %48, %50 ], !dbg !696
  ret i32 %.0, !dbg !757
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* %0) #0 !dbg !758 {
  %2 = alloca [15 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !761, metadata !DIExpression()), !dbg !762
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !763
  %4 = load i64, i64* %3, align 8, !dbg !763
  %5 = urem i64 %4, 16, !dbg !764
  %6 = trunc i64 %5 to i32, !dbg !765
  call void @llvm.dbg.value(metadata i32 %6, metadata !766, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata [15 x i8]* %2, metadata !767, metadata !DIExpression()), !dbg !771
  %7 = icmp eq i32 %6, 0, !dbg !772
  br i1 %7, label %8, label %9, !dbg !774

8:                                                ; preds = %1
  br label %16, !dbg !775

9:                                                ; preds = %1
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !776
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 15, i1 false), !dbg !776
  %11 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !777
  %12 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !778
  %13 = sub i32 16, %6, !dbg !779
  %14 = zext i32 %13 to i64, !dbg !780
  %15 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %11, i8* %12, i64 %14), !dbg !781
  br label %16, !dbg !782

16:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %15, %9 ], !dbg !762
  ret i32 %.0, !dbg !783
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* %0, i8* %1) #0 !dbg !784 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !787, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8* %1, metadata !789, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 -110, metadata !790, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !791, metadata !DIExpression()), !dbg !793
  %4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !794
  %5 = load i32, i32* %4, align 8, !dbg !794
  %6 = icmp eq i32 %5, 0, !dbg !796
  br i1 %6, label %7, label %8, !dbg !797

7:                                                ; preds = %2
  br label %45, !dbg !798

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !800
  %10 = load i32, i32* %9, align 8, !dbg !800
  %11 = icmp eq i32 %10, 1, !dbg !802
  br i1 %11, label %12, label %17, !dbg !803

12:                                               ; preds = %8
  %13 = call i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* %0), !dbg !804
  call void @llvm.dbg.value(metadata i32 %13, metadata !790, metadata !DIExpression()), !dbg !788
  %14 = icmp ne i32 %13, 0, !dbg !806
  br i1 %14, label %15, label %16, !dbg !808

15:                                               ; preds = %12
  br label %45, !dbg !809

16:                                               ; preds = %12
  br label %27, !dbg !810

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !811
  %19 = load i32, i32* %18, align 8, !dbg !811
  %20 = icmp eq i32 %19, 2, !dbg !813
  br i1 %20, label %21, label %26, !dbg !814

21:                                               ; preds = %17
  %22 = call i32 @chachapoly_pad_ciphertext(%struct.mbedtls_chachapoly_context* %0), !dbg !815
  call void @llvm.dbg.value(metadata i32 %22, metadata !790, metadata !DIExpression()), !dbg !788
  %23 = icmp ne i32 %22, 0, !dbg !817
  br i1 %23, label %24, label %25, !dbg !819

24:                                               ; preds = %21
  br label %45, !dbg !820

25:                                               ; preds = %21
  br label %26, !dbg !821

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !822
  store i32 3, i32* %28, align 8, !dbg !823
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !824
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !824
  %31 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !824
  %32 = load i64, i64* %31, align 8, !dbg !824
  call void @mbedtls_put_unaligned_uint64(i8* %30, i64 %32), !dbg !824
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !828
  %34 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !828
  %35 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !828
  %36 = load i64, i64* %35, align 8, !dbg !828
  call void @mbedtls_put_unaligned_uint64(i8* %34, i64 %36), !dbg !828
  %37 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !832
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !833
  %39 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %37, i8* %38, i64 16), !dbg !834
  call void @llvm.dbg.value(metadata i32 %39, metadata !790, metadata !DIExpression()), !dbg !788
  %40 = icmp ne i32 %39, 0, !dbg !835
  br i1 %40, label %41, label %42, !dbg !837

41:                                               ; preds = %27
  br label %45, !dbg !838

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !839
  %44 = call i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* %43, i8* %1), !dbg !840
  call void @llvm.dbg.value(metadata i32 %44, metadata !790, metadata !DIExpression()), !dbg !788
  br label %45, !dbg !841

45:                                               ; preds = %42, %41, %24, %15, %7
  %.0 = phi i32 [ -84, %7 ], [ %13, %15 ], [ %39, %41 ], [ %44, %42 ], [ %22, %24 ], !dbg !788
  ret i32 %.0, !dbg !842
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chachapoly_pad_ciphertext(%struct.mbedtls_chachapoly_context* %0) #0 !dbg !843 {
  %2 = alloca [15 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !844, metadata !DIExpression()), !dbg !845
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !846
  %4 = load i64, i64* %3, align 8, !dbg !846
  %5 = urem i64 %4, 16, !dbg !847
  %6 = trunc i64 %5 to i32, !dbg !848
  call void @llvm.dbg.value(metadata i32 %6, metadata !849, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata [15 x i8]* %2, metadata !850, metadata !DIExpression()), !dbg !851
  %7 = icmp eq i32 %6, 0, !dbg !852
  br i1 %7, label %8, label %9, !dbg !854

8:                                                ; preds = %1
  br label %16, !dbg !855

9:                                                ; preds = %1
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !856
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 15, i1 false), !dbg !856
  %11 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !857
  %12 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !858
  %13 = sub i32 16, %6, !dbg !859
  %14 = zext i32 %13 to i64, !dbg !860
  %15 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %11, i8* %12, i64 %14), !dbg !861
  br label %16, !dbg !862

16:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %15, %9 ], !dbg !845
  ret i32 %.0, !dbg !863
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8* %7) #0 !dbg !864 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !867, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %1, metadata !869, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i8* %2, metadata !870, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i8* %3, metadata !871, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %4, metadata !872, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i8* %5, metadata !873, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i8* %6, metadata !874, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i8* %7, metadata !875, metadata !DIExpression()), !dbg !868
  %9 = call i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i32 0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8* %7), !dbg !876
  ret i32 %9, !dbg !877
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i32 %1, i64 %2, i8* %3, i8* %4, i64 %5, i8* %6, i8* %7, i8* %8) #0 !dbg !878 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 %1, metadata !883, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i64 %2, metadata !884, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %3, metadata !885, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %4, metadata !886, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i64 %5, metadata !887, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %6, metadata !888, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %7, metadata !889, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %8, metadata !890, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 -110, metadata !891, metadata !DIExpression()), !dbg !882
  %10 = call i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* %0, i8* %3, i32 %1), !dbg !892
  call void @llvm.dbg.value(metadata i32 %10, metadata !891, metadata !DIExpression()), !dbg !882
  %11 = icmp ne i32 %10, 0, !dbg !893
  br i1 %11, label %12, label %13, !dbg !895

12:                                               ; preds = %9
  br label %23, !dbg !896

13:                                               ; preds = %9
  %14 = call i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* %0, i8* %4, i64 %5), !dbg !897
  call void @llvm.dbg.value(metadata i32 %14, metadata !891, metadata !DIExpression()), !dbg !882
  %15 = icmp ne i32 %14, 0, !dbg !898
  br i1 %15, label %16, label %17, !dbg !900

16:                                               ; preds = %13
  br label %23, !dbg !901

17:                                               ; preds = %13
  %18 = call i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* %0, i64 %2, i8* %6, i8* %7), !dbg !902
  call void @llvm.dbg.value(metadata i32 %18, metadata !891, metadata !DIExpression()), !dbg !882
  %19 = icmp ne i32 %18, 0, !dbg !903
  br i1 %19, label %20, label %21, !dbg !905

20:                                               ; preds = %17
  br label %23, !dbg !906

21:                                               ; preds = %17
  %22 = call i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* %0, i8* %8), !dbg !907
  call void @llvm.dbg.value(metadata i32 %22, metadata !891, metadata !DIExpression()), !dbg !882
  br label %23, !dbg !908

23:                                               ; preds = %21, %20, %16, %12
  %.0 = phi i32 [ %10, %12 ], [ %14, %16 ], [ %18, %20 ], [ %22, %21 ], !dbg !882
  call void @llvm.dbg.value(metadata i32 %.0, metadata !891, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.label(metadata !909), !dbg !910
  ret i32 %.0, !dbg !911
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8* %7) #0 !dbg !912 {
  %9 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !915, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 %1, metadata !917, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8* %2, metadata !918, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8* %3, metadata !919, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 %4, metadata !920, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8* %5, metadata !921, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8* %6, metadata !922, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8* %7, metadata !923, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 -110, metadata !924, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !925, metadata !DIExpression()), !dbg !926
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !927
  %11 = call i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i32 1, i64 %1, i8* %2, i8* %3, i64 %4, i8* %6, i8* %7, i8* %10), !dbg !929
  call void @llvm.dbg.value(metadata i32 %11, metadata !924, metadata !DIExpression()), !dbg !916
  %12 = icmp ne i32 %11, 0, !dbg !930
  br i1 %12, label %13, label %14, !dbg !931

13:                                               ; preds = %8
  br label %32, !dbg !932

14:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !934, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 0, metadata !935, metadata !DIExpression()), !dbg !916
  br label %15, !dbg !936

15:                                               ; preds = %26, %14
  %.02 = phi i64 [ 0, %14 ], [ %27, %26 ], !dbg !938
  %.01 = phi i32 [ 0, %14 ], [ %25, %26 ], !dbg !938
  call void @llvm.dbg.value(metadata i32 %.01, metadata !934, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 %.02, metadata !935, metadata !DIExpression()), !dbg !916
  %16 = icmp ult i64 %.02, 16, !dbg !939
  br i1 %16, label %17, label %28, !dbg !941

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, i8* %5, i64 %.02, !dbg !942
  %19 = load i8, i8* %18, align 1, !dbg !942
  %20 = zext i8 %19 to i32, !dbg !942
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %.02, !dbg !943
  %22 = load i8, i8* %21, align 1, !dbg !943
  %23 = zext i8 %22 to i32, !dbg !943
  %24 = xor i32 %20, %23, !dbg !944
  %25 = or i32 %.01, %24, !dbg !945
  call void @llvm.dbg.value(metadata i32 %25, metadata !934, metadata !DIExpression()), !dbg !916
  br label %26, !dbg !946

26:                                               ; preds = %17
  %27 = add i64 %.02, 1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %27, metadata !935, metadata !DIExpression()), !dbg !916
  br label %15, !dbg !948, !llvm.loop !949

28:                                               ; preds = %15
  %29 = icmp ne i32 %.01, 0, !dbg !951
  br i1 %29, label %30, label %31, !dbg !953

30:                                               ; preds = %28
  call void @mbedtls_platform_zeroize(i8* %7, i64 %1), !dbg !954
  br label %32, !dbg !956

31:                                               ; preds = %28
  br label %32, !dbg !957

32:                                               ; preds = %31, %30, %13
  %.0 = phi i32 [ %11, %13 ], [ -86, %30 ], [ 0, %31 ], !dbg !916
  ret i32 %.0, !dbg !958
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_self_test(i32 %0) #0 !dbg !959 {
  %2 = alloca %struct.mbedtls_chachapoly_context, align 8
  %3 = alloca [200 x i8], align 16
  %4 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata %struct.mbedtls_chachapoly_context* %2, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i32 -110, metadata !964, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata [200 x i8]* %3, metadata !965, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !961
  br label %5, !dbg !973

5:                                                ; preds = %87, %1
  %.01 = phi i32 [ 0, %1 ], [ %88, %87 ], !dbg !975
  call void @llvm.dbg.value(metadata i32 %.01, metadata !972, metadata !DIExpression()), !dbg !961
  %6 = icmp ult i32 %.01, 1, !dbg !976
  br i1 %6, label %7, label %89, !dbg !978

7:                                                ; preds = %5
  %8 = icmp ne i32 %0, 0, !dbg !979
  br i1 %8, label %9, label %11, !dbg !982

9:                                                ; preds = %7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %.01), !dbg !983
  br label %11, !dbg !983

11:                                               ; preds = %9, %7
  call void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* %2), !dbg !984
  %12 = zext i32 %.01 to i64, !dbg !985
  %13 = getelementptr inbounds [1 x [32 x i8]], [1 x [32 x i8]]* @test_key, i64 0, i64 %12, !dbg !985
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0, !dbg !985
  %15 = call i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* %2, i8* %14), !dbg !986
  call void @llvm.dbg.value(metadata i32 %15, metadata !964, metadata !DIExpression()), !dbg !961
  br label %16, !dbg !987

16:                                               ; preds = %11
  %17 = icmp eq i32 0, %15, !dbg !988
  br i1 %17, label %23, label %18, !dbg !991

18:                                               ; preds = %16
  %19 = icmp ne i32 %0, 0, !dbg !992
  br i1 %19, label %20, label %22, !dbg !995

20:                                               ; preds = %18
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.6, i64 0, i64 0), i32 %15), !dbg !992
  br label %22, !dbg !992

22:                                               ; preds = %20, %18
  br label %94, !dbg !995

23:                                               ; preds = %16
  br label %24, !dbg !991

24:                                               ; preds = %23
  %25 = zext i32 %.01 to i64, !dbg !996
  %26 = getelementptr inbounds [1 x i64], [1 x i64]* @test_input_len, i64 0, i64 %25, !dbg !996
  %27 = load i64, i64* %26, align 8, !dbg !996
  %28 = zext i32 %.01 to i64, !dbg !997
  %29 = getelementptr inbounds [1 x [12 x i8]], [1 x [12 x i8]]* @test_nonce, i64 0, i64 %28, !dbg !997
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0, !dbg !997
  %31 = zext i32 %.01 to i64, !dbg !998
  %32 = getelementptr inbounds [1 x [12 x i8]], [1 x [12 x i8]]* @test_aad, i64 0, i64 %31, !dbg !998
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %32, i64 0, i64 0, !dbg !998
  %34 = zext i32 %.01 to i64, !dbg !999
  %35 = getelementptr inbounds [1 x i64], [1 x i64]* @test_aad_len, i64 0, i64 %34, !dbg !999
  %36 = load i64, i64* %35, align 8, !dbg !999
  %37 = zext i32 %.01 to i64, !dbg !1000
  %38 = getelementptr inbounds [1 x [114 x i8]], [1 x [114 x i8]]* @test_input.7, i64 0, i64 %37, !dbg !1000
  %39 = getelementptr inbounds [114 x i8], [114 x i8]* %38, i64 0, i64 0, !dbg !1000
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0, !dbg !1001
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !1002
  %42 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* %2, i64 %27, i8* %30, i8* %33, i64 %36, i8* %39, i8* %40, i8* %41), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %42, metadata !964, metadata !DIExpression()), !dbg !961
  br label %43, !dbg !1004

43:                                               ; preds = %24
  %44 = icmp eq i32 0, %42, !dbg !1005
  br i1 %44, label %50, label %45, !dbg !1008

45:                                               ; preds = %43
  %46 = icmp ne i32 %0, 0, !dbg !1009
  br i1 %46, label %47, label %49, !dbg !1012

47:                                               ; preds = %45
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.8, i64 0, i64 0), i32 %42), !dbg !1009
  br label %49, !dbg !1009

49:                                               ; preds = %47, %45
  br label %94, !dbg !1012

50:                                               ; preds = %43
  br label %51, !dbg !1008

51:                                               ; preds = %50
  br label %52, !dbg !1013

52:                                               ; preds = %51
  %53 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0, !dbg !1014
  %54 = zext i32 %.01 to i64, !dbg !1014
  %55 = getelementptr inbounds [1 x [114 x i8]], [1 x [114 x i8]]* @test_output.9, i64 0, i64 %54, !dbg !1014
  %56 = getelementptr inbounds [114 x i8], [114 x i8]* %55, i64 0, i64 0, !dbg !1014
  %57 = zext i32 %.01 to i64, !dbg !1014
  %58 = getelementptr inbounds [1 x i64], [1 x i64]* @test_input_len, i64 0, i64 %57, !dbg !1014
  %59 = load i64, i64* %58, align 8, !dbg !1014
  %60 = call i32 @memcmp(i8* %53, i8* %56, i64 %59) #7, !dbg !1014
  %61 = icmp eq i32 0, %60, !dbg !1014
  br i1 %61, label %67, label %62, !dbg !1017

62:                                               ; preds = %52
  %63 = icmp ne i32 %0, 0, !dbg !1018
  br i1 %63, label %64, label %66, !dbg !1021

64:                                               ; preds = %62
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.10, i64 0, i64 0)), !dbg !1018
  br label %66, !dbg !1018

66:                                               ; preds = %64, %62
  br label %94, !dbg !1021

67:                                               ; preds = %52
  br label %68, !dbg !1017

68:                                               ; preds = %67
  br label %69, !dbg !1022

69:                                               ; preds = %68
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !1023
  %71 = zext i32 %.01 to i64, !dbg !1023
  %72 = getelementptr inbounds [1 x [16 x i8]], [1 x [16 x i8]]* @test_mac, i64 0, i64 %71, !dbg !1023
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %72, i64 0, i64 0, !dbg !1023
  %74 = call i32 @memcmp(i8* %70, i8* %73, i64 16) #7, !dbg !1023
  %75 = icmp eq i32 0, %74, !dbg !1023
  br i1 %75, label %81, label %76, !dbg !1026

76:                                               ; preds = %69
  %77 = icmp ne i32 %0, 0, !dbg !1027
  br i1 %77, label %78, label %80, !dbg !1030

78:                                               ; preds = %76
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.11, i64 0, i64 0)), !dbg !1027
  br label %80, !dbg !1027

80:                                               ; preds = %78, %76
  br label %94, !dbg !1030

81:                                               ; preds = %69
  br label %82, !dbg !1026

82:                                               ; preds = %81
  call void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* %2), !dbg !1031
  %83 = icmp ne i32 %0, 0, !dbg !1032
  br i1 %83, label %84, label %86, !dbg !1034

84:                                               ; preds = %82
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.12, i64 0, i64 0)), !dbg !1035
  br label %86, !dbg !1035

86:                                               ; preds = %84, %82
  br label %87, !dbg !1036

87:                                               ; preds = %86
  %88 = add i32 %.01, 1, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %88, metadata !972, metadata !DIExpression()), !dbg !961
  br label %5, !dbg !1038, !llvm.loop !1039

89:                                               ; preds = %5
  %90 = icmp ne i32 %0, 0, !dbg !1041
  br i1 %90, label %91, label %93, !dbg !1043

91:                                               ; preds = %89
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !1044
  br label %93, !dbg !1044

93:                                               ; preds = %91, %89
  br label %94, !dbg !1045

94:                                               ; preds = %93, %80, %66, %49, %22
  %.0 = phi i32 [ -1, %80 ], [ -1, %66 ], [ -1, %49 ], [ -1, %22 ], [ 0, %93 ], !dbg !961
  ret i32 %.0, !dbg !1046
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_platform_zeroize(i8* %0, i64 %1) #0 !dbg !1047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %1, metadata !1052, metadata !DIExpression()), !dbg !1051
  br label %3, !dbg !1053

3:                                                ; preds = %2
  br label %4, !dbg !1054

4:                                                ; preds = %3
  %5 = icmp ugt i64 %1, 0, !dbg !1056
  br i1 %5, label %6, label %8, !dbg !1058

6:                                                ; preds = %4
  %7 = call i32 (i8*, i32, i64, ...) bitcast (i32 (...)* @menset to i32 (i8*, i32, i64, ...)*)(i8* %0, i32 0, i64 %1), !dbg !1059
  br label %8, !dbg !1059

8:                                                ; preds = %6, %4
  ret void, !dbg !1060
}

declare dso_local i32 @menset(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tm* @mbedtls_platform_gmtime_r(i64* %0, %struct.tm* %1) #0 !dbg !1061 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !1092, metadata !DIExpression()), !dbg !1091
  %3 = call %struct.tm* @gmtime_r(i64* %0, %struct.tm* %1) #8, !dbg !1093
  ret %struct.tm* %3, !dbg !1094
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_xor(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !1095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %1, metadata !1101, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %2, metadata !1102, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 %3, metadata !1103, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 0, metadata !1104, metadata !DIExpression()), !dbg !1100
  br label %5, !dbg !1105

5:                                                ; preds = %15, %4
  %.0 = phi i64 [ 0, %4 ], [ %16, %15 ], !dbg !1107
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1104, metadata !DIExpression()), !dbg !1100
  %6 = add i64 %.0, 4, !dbg !1108
  %7 = icmp ule i64 %6, %3, !dbg !1110
  br i1 %7, label %8, label %17, !dbg !1111

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !1112
  %10 = call i32 @mbedtls_get_unaligned_uint32(i8* %9), !dbg !1114
  %11 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1115
  %12 = call i32 @mbedtls_get_unaligned_uint32(i8* %11), !dbg !1116
  %13 = xor i32 %10, %12, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %13, metadata !1118, metadata !DIExpression()), !dbg !1119
  %14 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1120
  call void @mbedtls_put_unaligned_uint32(i8* %14, i32 %13), !dbg !1121
  br label %15, !dbg !1122

15:                                               ; preds = %8
  %16 = add i64 %.0, 4, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %16, metadata !1104, metadata !DIExpression()), !dbg !1100
  br label %5, !dbg !1124, !llvm.loop !1125

17:                                               ; preds = %5
  br label %18, !dbg !1127

18:                                               ; preds = %30, %17
  %.1 = phi i64 [ %.0, %17 ], [ %31, %30 ], !dbg !1100
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1104, metadata !DIExpression()), !dbg !1100
  %19 = icmp ult i64 %.1, %3, !dbg !1128
  br i1 %19, label %20, label %32, !dbg !1131

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, i8* %1, i64 %.1, !dbg !1132
  %22 = load i8, i8* %21, align 1, !dbg !1132
  %23 = zext i8 %22 to i32, !dbg !1132
  %24 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !1134
  %25 = load i8, i8* %24, align 1, !dbg !1134
  %26 = zext i8 %25 to i32, !dbg !1134
  %27 = xor i32 %23, %26, !dbg !1135
  %28 = trunc i32 %27 to i8, !dbg !1132
  %29 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1136
  store i8 %28, i8* %29, align 1, !dbg !1137
  br label %30, !dbg !1138

30:                                               ; preds = %20
  %31 = add i64 %.1, 1, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %31, metadata !1104, metadata !DIExpression()), !dbg !1100
  br label %18, !dbg !1140, !llvm.loop !1141

32:                                               ; preds = %18
  ret void, !dbg !1143
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_get_unaligned_uint32(i8* %0) #0 !dbg !1144 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1152, metadata !DIExpression()), !dbg !1153
  %3 = bitcast i32* %2 to i8*, !dbg !1154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 1 %0, i64 4, i1 false), !dbg !1154
  %4 = load i32, i32* %2, align 4, !dbg !1155
  ret i32 %4, !dbg !1156
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint32(i8* %0, i32 %1) #0 !dbg !1157 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1162, metadata !DIExpression()), !dbg !1163
  %4 = bitcast i32* %3 to i8*, !dbg !1164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %4, i64 4, i1 false), !dbg !1164
  ret void, !dbg !1165
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @mbedtls_get_unaligned_uint16(i8* %0) #0 !dbg !1166 {
  %2 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.declare(metadata i16* %2, metadata !1174, metadata !DIExpression()), !dbg !1175
  %3 = bitcast i16* %2 to i8*, !dbg !1176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %3, i8* align 1 %0, i64 2, i1 false), !dbg !1176
  %4 = load i16, i16* %2, align 2, !dbg !1177
  ret i16 %4, !dbg !1178
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint16(i8* %0, i16 zeroext %1) #0 !dbg !1179 {
  %3 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i16 %1, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1184, metadata !DIExpression()), !dbg !1185
  %4 = bitcast i16* %3 to i8*, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 2 %4, i64 2, i1 false), !dbg !1186
  ret void, !dbg !1187
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_get_unaligned_uint64(i8* %0) #0 !dbg !1188 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1191, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1193, metadata !DIExpression()), !dbg !1194
  %3 = bitcast i64* %2 to i8*, !dbg !1195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !1195
  %4 = load i64, i64* %2, align 8, !dbg !1196
  ret i64 %4, !dbg !1197
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint64(i8* %0, i64 %1) #0 !dbg !1198 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1203, metadata !DIExpression()), !dbg !1204
  %4 = bitcast i64* %3 to i8*, !dbg !1205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !1205
  ret void, !dbg !1206
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* %0) #0 !dbg !1207 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1219, metadata !DIExpression()), !dbg !1220
  %2 = bitcast %struct.mbedtls_poly1305_context* %0 to i8*, !dbg !1221
  call void @mbedtls_platform_zeroize(i8* %2, i64 80), !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* %0) #0 !dbg !1224 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1225, metadata !DIExpression()), !dbg !1226
  %2 = icmp eq %struct.mbedtls_poly1305_context* %0, null, !dbg !1227
  br i1 %2, label %3, label %4, !dbg !1229

3:                                                ; preds = %1
  br label %6, !dbg !1230

4:                                                ; preds = %1
  %5 = bitcast %struct.mbedtls_poly1305_context* %0 to i8*, !dbg !1231
  call void @mbedtls_platform_zeroize(i8* %5, i64 80), !dbg !1232
  br label %6, !dbg !1233

6:                                                ; preds = %4, %3
  ret void, !dbg !1233
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* %0, i8* %1) #0 !dbg !1234 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %1, metadata !1239, metadata !DIExpression()), !dbg !1238
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1240
  %4 = call i32 @mbedtls_get_unaligned_uint32(i8* %3), !dbg !1240
  %5 = and i32 %4, 268435455, !dbg !1241
  %6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1242
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1243
  store i32 %5, i32* %7, align 8, !dbg !1244
  %8 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1245
  %9 = call i32 @mbedtls_get_unaligned_uint32(i8* %8), !dbg !1245
  %10 = and i32 %9, 268435452, !dbg !1246
  %11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1247
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1, !dbg !1248
  store i32 %10, i32* %12, align 4, !dbg !1249
  %13 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1250
  %14 = call i32 @mbedtls_get_unaligned_uint32(i8* %13), !dbg !1250
  %15 = and i32 %14, 268435452, !dbg !1251
  %16 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1252
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2, !dbg !1253
  store i32 %15, i32* %17, align 8, !dbg !1254
  %18 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1255
  %19 = call i32 @mbedtls_get_unaligned_uint32(i8* %18), !dbg !1255
  %20 = and i32 %19, 268435452, !dbg !1256
  %21 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1257
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3, !dbg !1258
  store i32 %20, i32* %22, align 4, !dbg !1259
  %23 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1260
  %24 = call i32 @mbedtls_get_unaligned_uint32(i8* %23), !dbg !1260
  %25 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1261
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !1262
  store i32 %24, i32* %26, align 8, !dbg !1263
  %27 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1264
  %28 = call i32 @mbedtls_get_unaligned_uint32(i8* %27), !dbg !1264
  %29 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1265
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1, !dbg !1266
  store i32 %28, i32* %30, align 4, !dbg !1267
  %31 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1268
  %32 = call i32 @mbedtls_get_unaligned_uint32(i8* %31), !dbg !1268
  %33 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1269
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 2, !dbg !1270
  store i32 %32, i32* %34, align 8, !dbg !1271
  %35 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !1272
  %36 = call i32 @mbedtls_get_unaligned_uint32(i8* %35), !dbg !1272
  %37 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1273
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 3, !dbg !1274
  store i32 %36, i32* %38, align 4, !dbg !1275
  %39 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1276
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 0, !dbg !1277
  store i32 0, i32* %40, align 8, !dbg !1278
  %41 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1279
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %41, i64 0, i64 1, !dbg !1280
  store i32 0, i32* %42, align 4, !dbg !1281
  %43 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1282
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 2, !dbg !1283
  store i32 0, i32* %44, align 8, !dbg !1284
  %45 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1285
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %45, i64 0, i64 3, !dbg !1286
  store i32 0, i32* %46, align 4, !dbg !1287
  %47 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1288
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 4, !dbg !1289
  store i32 0, i32* %48, align 8, !dbg !1290
  %49 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1291
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %49, i64 0, i64 0, !dbg !1292
  call void @mbedtls_platform_zeroize(i8* %50, i64 16), !dbg !1293
  %51 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1294
  store i64 0, i64* %51, align 8, !dbg !1295
  ret i32 0, !dbg !1296
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %0, i8* %1, i64 %2) #0 !dbg !1297 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8* %1, metadata !1302, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %2, metadata !1303, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 0, metadata !1304, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %2, metadata !1305, metadata !DIExpression()), !dbg !1301
  %4 = icmp ugt i64 %2, 0, !dbg !1306
  br i1 %4, label %5, label %33, !dbg !1308

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1309
  %7 = load i64, i64* %6, align 8, !dbg !1309
  %8 = icmp ugt i64 %7, 0, !dbg !1310
  br i1 %8, label %9, label %33, !dbg !1311

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1312
  %11 = load i64, i64* %10, align 8, !dbg !1312
  %12 = sub i64 16, %11, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %12, metadata !1315, metadata !DIExpression()), !dbg !1301
  %13 = icmp ult i64 %2, %12, !dbg !1316
  br i1 %13, label %14, label %22, !dbg !1318

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1319
  %16 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1321
  %17 = load i64, i64* %16, align 8, !dbg !1321
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 %17, !dbg !1322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %1, i64 %2, i1 false), !dbg !1323
  %19 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1324
  %20 = load i64, i64* %19, align 8, !dbg !1325
  %21 = add i64 %20, %2, !dbg !1325
  store i64 %21, i64* %19, align 8, !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1305, metadata !DIExpression()), !dbg !1301
  br label %32, !dbg !1326

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1327
  %24 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1329
  %25 = load i64, i64* %24, align 8, !dbg !1329
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %25, !dbg !1330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %1, i64 %12, i1 false), !dbg !1331
  %27 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1332
  store i64 0, i64* %27, align 8, !dbg !1333
  %28 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1334
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 0, !dbg !1335
  call void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 1, i8* %29, i32 1), !dbg !1336
  %30 = add i64 0, %12, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %30, metadata !1304, metadata !DIExpression()), !dbg !1301
  %31 = sub i64 %2, %12, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %31, metadata !1305, metadata !DIExpression()), !dbg !1301
  br label %32

32:                                               ; preds = %22, %14
  %.01 = phi i64 [ 0, %14 ], [ %30, %22 ], !dbg !1301
  %.0 = phi i64 [ 0, %14 ], [ %31, %22 ], !dbg !1339
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1305, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1304, metadata !DIExpression()), !dbg !1301
  br label %33, !dbg !1340

33:                                               ; preds = %32, %5, %3
  %.12 = phi i64 [ %.01, %32 ], [ 0, %5 ], [ 0, %3 ], !dbg !1341
  %.1 = phi i64 [ %.0, %32 ], [ %2, %5 ], [ %2, %3 ], !dbg !1301
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1305, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %.12, metadata !1304, metadata !DIExpression()), !dbg !1301
  %34 = icmp uge i64 %.1, 16, !dbg !1342
  br i1 %34, label %35, label %41, !dbg !1344

35:                                               ; preds = %33
  %36 = udiv i64 %.1, 16, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %36, metadata !1347, metadata !DIExpression()), !dbg !1301
  %37 = getelementptr inbounds i8, i8* %1, i64 %.12, !dbg !1348
  call void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 %36, i8* %37, i32 1), !dbg !1349
  %38 = mul i64 %36, 16, !dbg !1350
  %39 = add i64 %.12, %38, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %39, metadata !1304, metadata !DIExpression()), !dbg !1301
  %40 = urem i64 %.1, 16, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %40, metadata !1305, metadata !DIExpression()), !dbg !1301
  br label %41, !dbg !1353

41:                                               ; preds = %35, %33
  %.23 = phi i64 [ %39, %35 ], [ %.12, %33 ], !dbg !1301
  %.2 = phi i64 [ %40, %35 ], [ %.1, %33 ], !dbg !1301
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1305, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %.23, metadata !1304, metadata !DIExpression()), !dbg !1301
  %42 = icmp ugt i64 %.2, 0, !dbg !1354
  br i1 %42, label %43, label %48, !dbg !1356

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1357
  store i64 %.2, i64* %44, align 8, !dbg !1359
  %45 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1360
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0, !dbg !1361
  %47 = getelementptr inbounds i8, i8* %1, i64 %.23, !dbg !1362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 1 %47, i64 %.2, i1 false), !dbg !1361
  br label %48, !dbg !1363

48:                                               ; preds = %43, %41
  ret i32 0, !dbg !1364
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 %1, i8* %2, i32 %3) #0 !dbg !1365 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %1, metadata !1370, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %2, metadata !1371, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %3, metadata !1372, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()), !dbg !1369
  %5 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1374
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1375
  %7 = load i32, i32* %6, align 8, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %7, metadata !1376, metadata !DIExpression()), !dbg !1369
  %8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1377
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1, !dbg !1378
  %10 = load i32, i32* %9, align 4, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %10, metadata !1379, metadata !DIExpression()), !dbg !1369
  %11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1380
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2, !dbg !1381
  %13 = load i32, i32* %12, align 8, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %13, metadata !1382, metadata !DIExpression()), !dbg !1369
  %14 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1383
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3, !dbg !1384
  %16 = load i32, i32* %15, align 4, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %16, metadata !1385, metadata !DIExpression()), !dbg !1369
  %17 = lshr i32 %10, 2, !dbg !1386
  %18 = add i32 %10, %17, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %18, metadata !1388, metadata !DIExpression()), !dbg !1369
  %19 = lshr i32 %13, 2, !dbg !1389
  %20 = add i32 %13, %19, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %20, metadata !1391, metadata !DIExpression()), !dbg !1369
  %21 = lshr i32 %16, 2, !dbg !1392
  %22 = add i32 %16, %21, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %22, metadata !1394, metadata !DIExpression()), !dbg !1369
  %23 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1395
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !1396
  %25 = load i32, i32* %24, align 8, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %25, metadata !1397, metadata !DIExpression()), !dbg !1369
  %26 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1398
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1, !dbg !1399
  %28 = load i32, i32* %27, align 4, !dbg !1399
  call void @llvm.dbg.value(metadata i32 %28, metadata !1400, metadata !DIExpression()), !dbg !1369
  %29 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1401
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %29, i64 0, i64 2, !dbg !1402
  %31 = load i32, i32* %30, align 8, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %31, metadata !1403, metadata !DIExpression()), !dbg !1369
  %32 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1404
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %32, i64 0, i64 3, !dbg !1405
  %34 = load i32, i32* %33, align 4, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %34, metadata !1406, metadata !DIExpression()), !dbg !1369
  %35 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1407
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %35, i64 0, i64 4, !dbg !1408
  %37 = load i32, i32* %36, align 8, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %37, metadata !1409, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !1410, metadata !DIExpression()), !dbg !1369
  br label %38, !dbg !1411

38:                                               ; preds = %153, %4
  %.06 = phi i32 [ %25, %4 ], [ %135, %153 ], !dbg !1369
  %.05 = phi i32 [ %28, %4 ], [ %139, %153 ], !dbg !1369
  %.04 = phi i32 [ %31, %4 ], [ %143, %153 ], !dbg !1369
  %.03 = phi i32 [ %34, %4 ], [ %147, %153 ], !dbg !1369
  %.02 = phi i32 [ %37, %4 ], [ %151, %153 ], !dbg !1369
  %.01 = phi i64 [ 0, %4 ], [ %152, %153 ], !dbg !1369
  %.0 = phi i64 [ 0, %4 ], [ %154, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1410, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1373, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1409, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1406, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1403, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1400, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1397, metadata !DIExpression()), !dbg !1369
  %39 = icmp ult i64 %.0, %1, !dbg !1414
  br i1 %39, label %40, label %155, !dbg !1416

40:                                               ; preds = %38
  %41 = add i64 %.01, 0, !dbg !1417
  %42 = getelementptr inbounds i8, i8* %2, i64 %41, !dbg !1417
  %43 = call i32 @mbedtls_get_unaligned_uint32(i8* %42), !dbg !1417
  %44 = zext i32 %43 to i64, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %44, metadata !1419, metadata !DIExpression()), !dbg !1369
  %45 = add i64 %.01, 4, !dbg !1420
  %46 = getelementptr inbounds i8, i8* %2, i64 %45, !dbg !1420
  %47 = call i32 @mbedtls_get_unaligned_uint32(i8* %46), !dbg !1420
  %48 = zext i32 %47 to i64, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %48, metadata !1421, metadata !DIExpression()), !dbg !1369
  %49 = add i64 %.01, 8, !dbg !1422
  %50 = getelementptr inbounds i8, i8* %2, i64 %49, !dbg !1422
  %51 = call i32 @mbedtls_get_unaligned_uint32(i8* %50), !dbg !1422
  %52 = zext i32 %51 to i64, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %52, metadata !1423, metadata !DIExpression()), !dbg !1369
  %53 = add i64 %.01, 12, !dbg !1424
  %54 = getelementptr inbounds i8, i8* %2, i64 %53, !dbg !1424
  %55 = call i32 @mbedtls_get_unaligned_uint32(i8* %54), !dbg !1424
  %56 = zext i32 %55 to i64, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %56, metadata !1425, metadata !DIExpression()), !dbg !1369
  %57 = zext i32 %.06 to i64, !dbg !1426
  %58 = add i64 %44, %57, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %58, metadata !1419, metadata !DIExpression()), !dbg !1369
  %59 = zext i32 %.05 to i64, !dbg !1428
  %60 = lshr i64 %58, 32, !dbg !1429
  %61 = add i64 %59, %60, !dbg !1430
  %62 = add i64 %48, %61, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %62, metadata !1421, metadata !DIExpression()), !dbg !1369
  %63 = zext i32 %.04 to i64, !dbg !1432
  %64 = lshr i64 %62, 32, !dbg !1433
  %65 = add i64 %63, %64, !dbg !1434
  %66 = add i64 %52, %65, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %66, metadata !1423, metadata !DIExpression()), !dbg !1369
  %67 = zext i32 %.03 to i64, !dbg !1436
  %68 = lshr i64 %66, 32, !dbg !1437
  %69 = add i64 %67, %68, !dbg !1438
  %70 = add i64 %56, %69, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %70, metadata !1425, metadata !DIExpression()), !dbg !1369
  %71 = trunc i64 %58 to i32, !dbg !1440
  call void @llvm.dbg.value(metadata i32 %71, metadata !1397, metadata !DIExpression()), !dbg !1369
  %72 = trunc i64 %62 to i32, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %72, metadata !1400, metadata !DIExpression()), !dbg !1369
  %73 = trunc i64 %66 to i32, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %73, metadata !1403, metadata !DIExpression()), !dbg !1369
  %74 = trunc i64 %70 to i32, !dbg !1443
  call void @llvm.dbg.value(metadata i32 %74, metadata !1406, metadata !DIExpression()), !dbg !1369
  %75 = lshr i64 %70, 32, !dbg !1444
  %76 = trunc i64 %75 to i32, !dbg !1445
  %77 = add i32 %76, %3, !dbg !1446
  %78 = add i32 %.02, %77, !dbg !1447
  call void @llvm.dbg.value(metadata i32 %78, metadata !1409, metadata !DIExpression()), !dbg !1369
  %79 = call i64 @mul64(i32 %71, i32 %7), !dbg !1448
  %80 = call i64 @mul64(i32 %72, i32 %22), !dbg !1449
  %81 = add i64 %79, %80, !dbg !1450
  %82 = call i64 @mul64(i32 %73, i32 %20), !dbg !1451
  %83 = add i64 %81, %82, !dbg !1452
  %84 = call i64 @mul64(i32 %74, i32 %18), !dbg !1453
  %85 = add i64 %83, %84, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %85, metadata !1419, metadata !DIExpression()), !dbg !1369
  %86 = call i64 @mul64(i32 %71, i32 %10), !dbg !1455
  %87 = call i64 @mul64(i32 %72, i32 %7), !dbg !1456
  %88 = add i64 %86, %87, !dbg !1457
  %89 = call i64 @mul64(i32 %73, i32 %22), !dbg !1458
  %90 = add i64 %88, %89, !dbg !1459
  %91 = call i64 @mul64(i32 %74, i32 %20), !dbg !1460
  %92 = add i64 %90, %91, !dbg !1461
  %93 = call i64 @mul64(i32 %78, i32 %18), !dbg !1462
  %94 = add i64 %92, %93, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %94, metadata !1421, metadata !DIExpression()), !dbg !1369
  %95 = call i64 @mul64(i32 %71, i32 %13), !dbg !1464
  %96 = call i64 @mul64(i32 %72, i32 %10), !dbg !1465
  %97 = add i64 %95, %96, !dbg !1466
  %98 = call i64 @mul64(i32 %73, i32 %7), !dbg !1467
  %99 = add i64 %97, %98, !dbg !1468
  %100 = call i64 @mul64(i32 %74, i32 %22), !dbg !1469
  %101 = add i64 %99, %100, !dbg !1470
  %102 = call i64 @mul64(i32 %78, i32 %20), !dbg !1471
  %103 = add i64 %101, %102, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %103, metadata !1423, metadata !DIExpression()), !dbg !1369
  %104 = call i64 @mul64(i32 %71, i32 %16), !dbg !1473
  %105 = call i64 @mul64(i32 %72, i32 %13), !dbg !1474
  %106 = add i64 %104, %105, !dbg !1475
  %107 = call i64 @mul64(i32 %73, i32 %10), !dbg !1476
  %108 = add i64 %106, %107, !dbg !1477
  %109 = call i64 @mul64(i32 %74, i32 %7), !dbg !1478
  %110 = add i64 %108, %109, !dbg !1479
  %111 = call i64 @mul64(i32 %78, i32 %22), !dbg !1480
  %112 = add i64 %110, %111, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %112, metadata !1425, metadata !DIExpression()), !dbg !1369
  %113 = mul i32 %78, %7, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %113, metadata !1409, metadata !DIExpression()), !dbg !1369
  %114 = lshr i64 %85, 32, !dbg !1483
  %115 = add i64 %94, %114, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %115, metadata !1421, metadata !DIExpression()), !dbg !1369
  %116 = lshr i64 %115, 32, !dbg !1485
  %117 = add i64 %103, %116, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %117, metadata !1423, metadata !DIExpression()), !dbg !1369
  %118 = lshr i64 %117, 32, !dbg !1487
  %119 = add i64 %112, %118, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %119, metadata !1425, metadata !DIExpression()), !dbg !1369
  %120 = trunc i64 %85 to i32, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %120, metadata !1397, metadata !DIExpression()), !dbg !1369
  %121 = trunc i64 %115 to i32, !dbg !1490
  call void @llvm.dbg.value(metadata i32 %121, metadata !1400, metadata !DIExpression()), !dbg !1369
  %122 = trunc i64 %117 to i32, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %122, metadata !1403, metadata !DIExpression()), !dbg !1369
  %123 = trunc i64 %119 to i32, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %123, metadata !1406, metadata !DIExpression()), !dbg !1369
  %124 = lshr i64 %119, 32, !dbg !1493
  %125 = trunc i64 %124 to i32, !dbg !1494
  %126 = add i32 %125, %113, !dbg !1495
  call void @llvm.dbg.value(metadata i32 %126, metadata !1409, metadata !DIExpression()), !dbg !1369
  %127 = zext i32 %120 to i64, !dbg !1496
  %128 = lshr i32 %126, 2, !dbg !1497
  %129 = zext i32 %128 to i64, !dbg !1498
  %130 = add i64 %127, %129, !dbg !1499
  %131 = and i32 %126, -4, !dbg !1500
  %132 = zext i32 %131 to i64, !dbg !1501
  %133 = add i64 %130, %132, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %133, metadata !1419, metadata !DIExpression()), !dbg !1369
  %134 = and i32 %126, 3, !dbg !1503
  call void @llvm.dbg.value(metadata i32 %134, metadata !1409, metadata !DIExpression()), !dbg !1369
  %135 = trunc i64 %133 to i32, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %135, metadata !1397, metadata !DIExpression()), !dbg !1369
  %136 = zext i32 %121 to i64, !dbg !1505
  %137 = lshr i64 %133, 32, !dbg !1506
  %138 = add i64 %136, %137, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %138, metadata !1419, metadata !DIExpression()), !dbg !1369
  %139 = trunc i64 %138 to i32, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %139, metadata !1400, metadata !DIExpression()), !dbg !1369
  %140 = zext i32 %122 to i64, !dbg !1509
  %141 = lshr i64 %138, 32, !dbg !1510
  %142 = add i64 %140, %141, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %142, metadata !1419, metadata !DIExpression()), !dbg !1369
  %143 = trunc i64 %142 to i32, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %143, metadata !1403, metadata !DIExpression()), !dbg !1369
  %144 = zext i32 %123 to i64, !dbg !1513
  %145 = lshr i64 %142, 32, !dbg !1514
  %146 = add i64 %144, %145, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %146, metadata !1419, metadata !DIExpression()), !dbg !1369
  %147 = trunc i64 %146 to i32, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %147, metadata !1406, metadata !DIExpression()), !dbg !1369
  %148 = zext i32 %134 to i64, !dbg !1517
  %149 = lshr i64 %146, 32, !dbg !1518
  %150 = add i64 %148, %149, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %150, metadata !1419, metadata !DIExpression()), !dbg !1369
  %151 = trunc i64 %150 to i32, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %151, metadata !1409, metadata !DIExpression()), !dbg !1369
  %152 = add i64 %.01, 16, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %152, metadata !1373, metadata !DIExpression()), !dbg !1369
  br label %153, !dbg !1522

153:                                              ; preds = %40
  %154 = add i64 %.0, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %154, metadata !1410, metadata !DIExpression()), !dbg !1369
  br label %38, !dbg !1524, !llvm.loop !1525

155:                                              ; preds = %38
  %156 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1527
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %156, i64 0, i64 0, !dbg !1528
  store i32 %.06, i32* %157, align 8, !dbg !1529
  %158 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1530
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %158, i64 0, i64 1, !dbg !1531
  store i32 %.05, i32* %159, align 4, !dbg !1532
  %160 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1533
  %161 = getelementptr inbounds [5 x i32], [5 x i32]* %160, i64 0, i64 2, !dbg !1534
  store i32 %.04, i32* %161, align 8, !dbg !1535
  %162 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1536
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %162, i64 0, i64 3, !dbg !1537
  store i32 %.03, i32* %163, align 4, !dbg !1538
  %164 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1539
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %164, i64 0, i64 4, !dbg !1540
  store i32 %.02, i32* %165, align 8, !dbg !1541
  ret void, !dbg !1542
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mul64(i32 %0, i32 %1) #0 !dbg !1543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %1, metadata !1548, metadata !DIExpression()), !dbg !1547
  %3 = zext i32 %0 to i64, !dbg !1549
  %4 = zext i32 %1 to i64, !dbg !1550
  %5 = mul i64 %3, %4, !dbg !1551
  ret i64 %5, !dbg !1552
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* %0, i8* %1) #0 !dbg !1553 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1556, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8* %1, metadata !1558, metadata !DIExpression()), !dbg !1557
  %3 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1559
  %4 = load i64, i64* %3, align 8, !dbg !1559
  %5 = icmp ugt i64 %4, 0, !dbg !1561
  br i1 %5, label %6, label %23, !dbg !1562

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1563
  %8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1565
  %9 = load i64, i64* %8, align 8, !dbg !1565
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %9, !dbg !1566
  store i8 1, i8* %10, align 1, !dbg !1567
  %11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1568
  %12 = load i64, i64* %11, align 8, !dbg !1569
  %13 = add i64 %12, 1, !dbg !1569
  store i64 %13, i64* %11, align 8, !dbg !1569
  %14 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1570
  %15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1571
  %16 = load i64, i64* %15, align 8, !dbg !1571
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %16, !dbg !1572
  %18 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1573
  %19 = load i64, i64* %18, align 8, !dbg !1573
  %20 = sub i64 16, %19, !dbg !1574
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 %20, i1 false), !dbg !1575
  %21 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1576
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0, !dbg !1577
  call void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 1, i8* %22, i32 0), !dbg !1578
  br label %23, !dbg !1579

23:                                               ; preds = %6, %2
  call void @poly1305_compute_mac(%struct.mbedtls_poly1305_context* %0, i8* %1), !dbg !1580
  ret i32 0, !dbg !1581
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_compute_mac(%struct.mbedtls_poly1305_context* %0, i8* %1) #0 !dbg !1582 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1587, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i8* %1, metadata !1589, metadata !DIExpression()), !dbg !1588
  %3 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1590
  %4 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0, !dbg !1591
  %5 = load i32, i32* %4, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %5, metadata !1592, metadata !DIExpression()), !dbg !1588
  %6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1593
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1, !dbg !1594
  %8 = load i32, i32* %7, align 4, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %8, metadata !1595, metadata !DIExpression()), !dbg !1588
  %9 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1596
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2, !dbg !1597
  %11 = load i32, i32* %10, align 8, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %11, metadata !1598, metadata !DIExpression()), !dbg !1588
  %12 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1599
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3, !dbg !1600
  %14 = load i32, i32* %13, align 4, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %14, metadata !1601, metadata !DIExpression()), !dbg !1588
  %15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1602
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4, !dbg !1603
  %17 = load i32, i32* %16, align 8, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %17, metadata !1604, metadata !DIExpression()), !dbg !1588
  %18 = zext i32 %5 to i64, !dbg !1605
  %19 = add i64 %18, 5, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %19, metadata !1607, metadata !DIExpression()), !dbg !1588
  %20 = trunc i64 %19 to i32, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %20, metadata !1609, metadata !DIExpression()), !dbg !1588
  %21 = zext i32 %8 to i64, !dbg !1610
  %22 = lshr i64 %19, 32, !dbg !1611
  %23 = add i64 %21, %22, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %23, metadata !1607, metadata !DIExpression()), !dbg !1588
  %24 = trunc i64 %23 to i32, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %24, metadata !1614, metadata !DIExpression()), !dbg !1588
  %25 = zext i32 %11 to i64, !dbg !1615
  %26 = lshr i64 %23, 32, !dbg !1616
  %27 = add i64 %25, %26, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %27, metadata !1607, metadata !DIExpression()), !dbg !1588
  %28 = trunc i64 %27 to i32, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %28, metadata !1619, metadata !DIExpression()), !dbg !1588
  %29 = zext i32 %14 to i64, !dbg !1620
  %30 = lshr i64 %27, 32, !dbg !1621
  %31 = add i64 %29, %30, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %31, metadata !1607, metadata !DIExpression()), !dbg !1588
  %32 = trunc i64 %31 to i32, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %32, metadata !1624, metadata !DIExpression()), !dbg !1588
  %33 = lshr i64 %31, 32, !dbg !1625
  %34 = trunc i64 %33 to i32, !dbg !1626
  %35 = add i32 %17, %34, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %35, metadata !1628, metadata !DIExpression()), !dbg !1588
  %36 = lshr i32 %35, 2, !dbg !1629
  %37 = sub i32 0, %36, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %37, metadata !1631, metadata !DIExpression()), !dbg !1588
  %38 = xor i32 %37, -1, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %38, metadata !1633, metadata !DIExpression()), !dbg !1588
  %39 = and i32 %5, %38, !dbg !1634
  %40 = and i32 %20, %37, !dbg !1635
  %41 = or i32 %39, %40, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %41, metadata !1592, metadata !DIExpression()), !dbg !1588
  %42 = and i32 %8, %38, !dbg !1637
  %43 = and i32 %24, %37, !dbg !1638
  %44 = or i32 %42, %43, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %44, metadata !1595, metadata !DIExpression()), !dbg !1588
  %45 = and i32 %11, %38, !dbg !1640
  %46 = and i32 %28, %37, !dbg !1641
  %47 = or i32 %45, %46, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %47, metadata !1598, metadata !DIExpression()), !dbg !1588
  %48 = and i32 %14, %38, !dbg !1643
  %49 = and i32 %32, %37, !dbg !1644
  %50 = or i32 %48, %49, !dbg !1645
  call void @llvm.dbg.value(metadata i32 %50, metadata !1601, metadata !DIExpression()), !dbg !1588
  %51 = zext i32 %41 to i64, !dbg !1646
  %52 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1647
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i64 0, i64 0, !dbg !1648
  %54 = load i32, i32* %53, align 8, !dbg !1648
  %55 = zext i32 %54 to i64, !dbg !1648
  %56 = add i64 %51, %55, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %56, metadata !1607, metadata !DIExpression()), !dbg !1588
  %57 = trunc i64 %56 to i32, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %57, metadata !1592, metadata !DIExpression()), !dbg !1588
  %58 = zext i32 %44 to i64, !dbg !1651
  %59 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1652
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 0, i64 1, !dbg !1653
  %61 = load i32, i32* %60, align 4, !dbg !1653
  %62 = zext i32 %61 to i64, !dbg !1653
  %63 = add i64 %58, %62, !dbg !1654
  %64 = lshr i64 %56, 32, !dbg !1655
  %65 = add i64 %63, %64, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %65, metadata !1607, metadata !DIExpression()), !dbg !1588
  %66 = trunc i64 %65 to i32, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %66, metadata !1595, metadata !DIExpression()), !dbg !1588
  %67 = zext i32 %47 to i64, !dbg !1658
  %68 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1659
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i64 0, i64 2, !dbg !1660
  %70 = load i32, i32* %69, align 8, !dbg !1660
  %71 = zext i32 %70 to i64, !dbg !1660
  %72 = add i64 %67, %71, !dbg !1661
  %73 = lshr i64 %65, 32, !dbg !1662
  %74 = add i64 %72, %73, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %74, metadata !1607, metadata !DIExpression()), !dbg !1588
  %75 = trunc i64 %74 to i32, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %75, metadata !1598, metadata !DIExpression()), !dbg !1588
  %76 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1665
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 3, !dbg !1666
  %78 = load i32, i32* %77, align 4, !dbg !1666
  %79 = lshr i64 %74, 32, !dbg !1667
  %80 = trunc i64 %79 to i32, !dbg !1668
  %81 = add i32 %78, %80, !dbg !1669
  %82 = add i32 %50, %81, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %82, metadata !1601, metadata !DIExpression()), !dbg !1588
  %83 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1671
  call void @mbedtls_put_unaligned_uint32(i8* %83, i32 %57), !dbg !1671
  %84 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1675
  call void @mbedtls_put_unaligned_uint32(i8* %84, i32 %66), !dbg !1675
  %85 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1679
  call void @mbedtls_put_unaligned_uint32(i8* %85, i32 %75), !dbg !1679
  %86 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1683
  call void @mbedtls_put_unaligned_uint32(i8* %86, i32 %82), !dbg !1683
  ret void, !dbg !1687
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_mac(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1688 {
  %5 = alloca %struct.mbedtls_poly1305_context, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8* %1, metadata !1693, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %2, metadata !1694, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8* %3, metadata !1695, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.declare(metadata %struct.mbedtls_poly1305_context* %5, metadata !1696, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 -110, metadata !1698, metadata !DIExpression()), !dbg !1692
  call void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* %5), !dbg !1699
  %6 = call i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* %5, i8* %0), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %6, metadata !1698, metadata !DIExpression()), !dbg !1692
  %7 = icmp ne i32 %6, 0, !dbg !1701
  br i1 %7, label %8, label %9, !dbg !1703

8:                                                ; preds = %4
  br label %15, !dbg !1704

9:                                                ; preds = %4
  %10 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %5, i8* %1, i64 %2), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %10, metadata !1698, metadata !DIExpression()), !dbg !1692
  %11 = icmp ne i32 %10, 0, !dbg !1706
  br i1 %11, label %12, label %13, !dbg !1708

12:                                               ; preds = %9
  br label %15, !dbg !1709

13:                                               ; preds = %9
  %14 = call i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* %5, i8* %3), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %14, metadata !1698, metadata !DIExpression()), !dbg !1692
  br label %15, !dbg !1711

15:                                               ; preds = %13, %12, %8
  %.0 = phi i32 [ %6, %8 ], [ %10, %12 ], [ %14, %13 ], !dbg !1692
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1698, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.label(metadata !1712), !dbg !1713
  call void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* %5), !dbg !1714
  ret i32 %.0, !dbg !1715
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_self_test(i32 %0) #0 !dbg !1716 {
  %2 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1717, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !1719, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 -110, metadata !1721, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 0, metadata !1722, metadata !DIExpression()), !dbg !1718
  br label %3, !dbg !1723

3:                                                ; preds = %48, %1
  %.01 = phi i32 [ 0, %1 ], [ %49, %48 ], !dbg !1725
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1722, metadata !DIExpression()), !dbg !1718
  %4 = icmp ult i32 %.01, 2, !dbg !1726
  br i1 %4, label %5, label %50, !dbg !1728

5:                                                ; preds = %3
  %6 = icmp ne i32 %0, 0, !dbg !1729
  br i1 %6, label %7, label %9, !dbg !1732

7:                                                ; preds = %5
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 %.01), !dbg !1733
  br label %9, !dbg !1733

9:                                                ; preds = %7, %5
  %10 = zext i32 %.01 to i64, !dbg !1734
  %11 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* @test_keys.34, i64 0, i64 %10, !dbg !1734
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !1734
  %13 = zext i32 %.01 to i64, !dbg !1735
  %14 = getelementptr inbounds [2 x [127 x i8]], [2 x [127 x i8]]* bitcast (<{ <{ [34 x i8], [93 x i8] }>, [127 x i8] }>* @test_data to [2 x [127 x i8]]*), i64 0, i64 %13, !dbg !1735
  %15 = getelementptr inbounds [127 x i8], [127 x i8]* %14, i64 0, i64 0, !dbg !1735
  %16 = zext i32 %.01 to i64, !dbg !1736
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* @test_data_len, i64 0, i64 %16, !dbg !1736
  %18 = load i64, i64* %17, align 8, !dbg !1736
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !1737
  %20 = call i32 @mbedtls_poly1305_mac(i8* %12, i8* %15, i64 %18, i8* %19), !dbg !1738
  call void @llvm.dbg.value(metadata i32 %20, metadata !1721, metadata !DIExpression()), !dbg !1718
  br label %21, !dbg !1739

21:                                               ; preds = %9
  %22 = icmp eq i32 0, %20, !dbg !1740
  br i1 %22, label %28, label %23, !dbg !1743

23:                                               ; preds = %21
  %24 = icmp ne i32 %0, 0, !dbg !1744
  br i1 %24, label %25, label %27, !dbg !1747

25:                                               ; preds = %23
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.35, i64 0, i64 0), i32 %20), !dbg !1744
  br label %27, !dbg !1744

27:                                               ; preds = %25, %23
  br label %55, !dbg !1747

28:                                               ; preds = %21
  br label %29, !dbg !1743

29:                                               ; preds = %28
  br label %30, !dbg !1748

30:                                               ; preds = %29
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !1749
  %32 = zext i32 %.01 to i64, !dbg !1749
  %33 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* @test_mac.36, i64 0, i64 %32, !dbg !1749
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i64 0, i64 0, !dbg !1749
  %35 = call i32 @memcmp(i8* %31, i8* %34, i64 16) #7, !dbg !1749
  %36 = icmp eq i32 0, %35, !dbg !1749
  br i1 %36, label %42, label %37, !dbg !1752

37:                                               ; preds = %30
  %38 = icmp ne i32 %0, 0, !dbg !1753
  br i1 %38, label %39, label %41, !dbg !1756

39:                                               ; preds = %37
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.37, i64 0, i64 0)), !dbg !1753
  br label %41, !dbg !1753

41:                                               ; preds = %39, %37
  br label %55, !dbg !1756

42:                                               ; preds = %30
  br label %43, !dbg !1752

43:                                               ; preds = %42
  %44 = icmp ne i32 %0, 0, !dbg !1757
  br i1 %44, label %45, label %47, !dbg !1759

45:                                               ; preds = %43
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.38, i64 0, i64 0)), !dbg !1760
  br label %47, !dbg !1760

47:                                               ; preds = %45, %43
  br label %48, !dbg !1761

48:                                               ; preds = %47
  %49 = add i32 %.01, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %49, metadata !1722, metadata !DIExpression()), !dbg !1718
  br label %3, !dbg !1763, !llvm.loop !1764

50:                                               ; preds = %3
  %51 = icmp ne i32 %0, 0, !dbg !1766
  br i1 %51, label %52, label %54, !dbg !1768

52:                                               ; preds = %50
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.39, i64 0, i64 0)), !dbg !1769
  br label %54, !dbg !1769

54:                                               ; preds = %52, %50
  br label %55, !dbg !1770

55:                                               ; preds = %54, %41, %27
  %.0 = phi i32 [ -1, %41 ], [ -1, %27 ], [ 0, %54 ], !dbg !1718
  ret i32 %.0, !dbg !1771
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2, !45, !100, !86}
!llvm.ident = !{!102, !102, !102, !102}
!llvm.module.flags = !{!103, !104, !105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "test_keys", scope: !2, file: !3, line: 292, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../mbedtls/library/chacha20.c", directory: "/home/luwei/bech/Mbed/chacha20poly")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!0, !13, !21, !26, !33, !38}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "test_nonces", scope: !2, file: !3, line: 308, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19, !20}
!19 = !DISubrange(count: 2)
!20 = !DISubrange(count: 12)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "test_counters", scope: !2, file: !3, line: 320, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !25)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!25 = !{!19}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "test_lengths", scope: !2, file: !3, line: 452, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !25)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "test_input", scope: !2, file: !3, line: 326, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 6000, elements: !36)
!36 = !{!19, !37}
!37 = !DISubrange(count: 375)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "test_output", scope: !2, file: !3, line: 389, type: !35, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !41)
!41 = !{!19, !42}
!42 = !DISubrange(count: 32)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "test_key", scope: !45, file: !46, line: 333, type: !82, isLocal: true, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !53, globals: !56, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "../mbedtls/library/chachapoly.c", directory: "/home/luwei/bech/Mbed/chacha20poly")
!47 = !{!48}
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 50, baseType: !11, size: 32, elements: !50)
!49 = !DIFile(filename: "../mbedtls/include/mbedtls/chachapoly.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "MBEDTLS_CHACHAPOLY_ENCRYPT", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "MBEDTLS_CHACHAPOLY_DECRYPT", value: 1, isUnsigned: true)
!53 = !{!6, !54, !7}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !32)
!56 = !{!43, !57, !62, !66, !68, !70, !75, !77}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "test_input_len", scope: !45, file: !46, line: 406, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "test_nonce", scope: !45, file: !46, line: 343, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 96, elements: !65)
!65 = !{!61, !20}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "test_aad", scope: !45, file: !46, line: 351, type: !64, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "test_aad_len", scope: !45, file: !46, line: 359, type: !59, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "test_input", scope: !45, file: !46, line: 364, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 912, elements: !73)
!73 = !{!61, !74}
!74 = !DISubrange(count: 114)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "test_output", scope: !45, file: !46, line: 385, type: !72, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "test_mac", scope: !45, file: !46, line: 411, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !80)
!80 = !{!61, !81}
!81 = !DISubrange(count: 16)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !83)
!83 = !{!61, !42}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "test_keys", scope: !86, file: !87, line: 397, type: !40, isLocal: true, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !53, globals: !88, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../mbedtls/library/poly1305.c", directory: "/home/luwei/bech/Mbed/chacha20poly")
!88 = !{!84, !89, !94, !96}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "test_data", scope: !86, file: !87, line: 413, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2032, elements: !92)
!92 = !{!19, !93}
!93 = !DISubrange(count: 127)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "test_data_len", scope: !86, file: !87, line: 442, type: !28, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "test_mac", scope: !86, file: !87, line: 448, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !99)
!99 = !{!19, !81}
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../mbedtls/library/platform_util.c", directory: "/home/luwei/bech/Mbed/chacha20poly")
!102 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!103 = !{i32 7, !"Dwarf Version", i32 4}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 4}
!106 = distinct !DISubprogram(name: "mbedtls_chacha20_init", scope: !3, file: !3, line: 155, type: !107, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chacha20_context", file: !111, line: 56, baseType: !112)
!111 = !DIFile(filename: "../mbedtls/include/mbedtls/chacha20.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chacha20_context", file: !111, line: 50, size: 1088, elements: !113)
!113 = !{!114, !117, !123}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !112, file: !111, line: 52, baseType: !115, size: 512)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !116)
!116 = !{!81}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "keystream8", scope: !112, file: !111, line: 53, baseType: !118, size: 512, offset: 512)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 512, elements: !121)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !17)
!121 = !{!122}
!122 = !DISubrange(count: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "keystream_bytes_used", scope: !112, file: !111, line: 54, baseType: !30, size: 64, offset: 1024)
!124 = !DILocalVariable(name: "ctx", arg: 1, scope: !106, file: !3, line: 155, type: !109)
!125 = !DILocation(line: 0, scope: !106)
!126 = !DILocation(line: 157, column: 36, scope: !106)
!127 = !DILocation(line: 157, column: 31, scope: !106)
!128 = !DILocation(line: 157, column: 5, scope: !106)
!129 = !DILocation(line: 158, column: 36, scope: !106)
!130 = !DILocation(line: 158, column: 31, scope: !106)
!131 = !DILocation(line: 158, column: 5, scope: !106)
!132 = !DILocation(line: 161, column: 10, scope: !106)
!133 = !DILocation(line: 161, column: 31, scope: !106)
!134 = !DILocation(line: 162, column: 1, scope: !106)
!135 = distinct !DISubprogram(name: "mbedtls_chacha20_free", scope: !3, file: !3, line: 164, type: !107, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!136 = !DILocalVariable(name: "ctx", arg: 1, scope: !135, file: !3, line: 164, type: !109)
!137 = !DILocation(line: 0, scope: !135)
!138 = !DILocation(line: 166, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !3, line: 166, column: 9)
!140 = !DILocation(line: 166, column: 9, scope: !135)
!141 = !DILocation(line: 168, column: 35, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 167, column: 5)
!143 = !DILocation(line: 168, column: 9, scope: !142)
!144 = !DILocation(line: 169, column: 5, scope: !142)
!145 = !DILocation(line: 170, column: 1, scope: !135)
!146 = distinct !DISubprogram(name: "mbedtls_chacha20_setkey", scope: !3, file: !3, line: 172, type: !147, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !109, !150}
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!151 = !DILocalVariable(name: "ctx", arg: 1, scope: !146, file: !3, line: 172, type: !109)
!152 = !DILocation(line: 0, scope: !146)
!153 = !DILocalVariable(name: "key", arg: 2, scope: !146, file: !3, line: 173, type: !150)
!154 = !DILocation(line: 176, column: 10, scope: !146)
!155 = !DILocation(line: 176, column: 5, scope: !146)
!156 = !DILocation(line: 176, column: 19, scope: !146)
!157 = !DILocation(line: 177, column: 10, scope: !146)
!158 = !DILocation(line: 177, column: 5, scope: !146)
!159 = !DILocation(line: 177, column: 19, scope: !146)
!160 = !DILocation(line: 178, column: 10, scope: !146)
!161 = !DILocation(line: 178, column: 5, scope: !146)
!162 = !DILocation(line: 178, column: 19, scope: !146)
!163 = !DILocation(line: 179, column: 10, scope: !146)
!164 = !DILocation(line: 179, column: 5, scope: !146)
!165 = !DILocation(line: 179, column: 19, scope: !146)
!166 = !DILocation(line: 182, column: 22, scope: !146)
!167 = !DILocation(line: 182, column: 10, scope: !146)
!168 = !DILocation(line: 182, column: 5, scope: !146)
!169 = !DILocation(line: 182, column: 20, scope: !146)
!170 = !DILocation(line: 183, column: 22, scope: !146)
!171 = !DILocation(line: 183, column: 10, scope: !146)
!172 = !DILocation(line: 183, column: 5, scope: !146)
!173 = !DILocation(line: 183, column: 20, scope: !146)
!174 = !DILocation(line: 184, column: 22, scope: !146)
!175 = !DILocation(line: 184, column: 10, scope: !146)
!176 = !DILocation(line: 184, column: 5, scope: !146)
!177 = !DILocation(line: 184, column: 20, scope: !146)
!178 = !DILocation(line: 185, column: 22, scope: !146)
!179 = !DILocation(line: 185, column: 10, scope: !146)
!180 = !DILocation(line: 185, column: 5, scope: !146)
!181 = !DILocation(line: 185, column: 20, scope: !146)
!182 = !DILocation(line: 186, column: 22, scope: !146)
!183 = !DILocation(line: 186, column: 10, scope: !146)
!184 = !DILocation(line: 186, column: 5, scope: !146)
!185 = !DILocation(line: 186, column: 20, scope: !146)
!186 = !DILocation(line: 187, column: 22, scope: !146)
!187 = !DILocation(line: 187, column: 10, scope: !146)
!188 = !DILocation(line: 187, column: 5, scope: !146)
!189 = !DILocation(line: 187, column: 20, scope: !146)
!190 = !DILocation(line: 188, column: 22, scope: !146)
!191 = !DILocation(line: 188, column: 10, scope: !146)
!192 = !DILocation(line: 188, column: 5, scope: !146)
!193 = !DILocation(line: 188, column: 20, scope: !146)
!194 = !DILocation(line: 189, column: 22, scope: !146)
!195 = !DILocation(line: 189, column: 10, scope: !146)
!196 = !DILocation(line: 189, column: 5, scope: !146)
!197 = !DILocation(line: 189, column: 20, scope: !146)
!198 = !DILocation(line: 191, column: 5, scope: !146)
!199 = distinct !DISubprogram(name: "mbedtls_chacha20_starts", scope: !3, file: !3, line: 194, type: !200, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DISubroutineType(types: !201)
!201 = !{!149, !109, !150, !7}
!202 = !DILocalVariable(name: "ctx", arg: 1, scope: !199, file: !3, line: 194, type: !109)
!203 = !DILocation(line: 0, scope: !199)
!204 = !DILocalVariable(name: "nonce", arg: 2, scope: !199, file: !3, line: 195, type: !150)
!205 = !DILocalVariable(name: "counter", arg: 3, scope: !199, file: !3, line: 196, type: !7)
!206 = !DILocation(line: 199, column: 10, scope: !199)
!207 = !DILocation(line: 199, column: 5, scope: !199)
!208 = !DILocation(line: 199, column: 20, scope: !199)
!209 = !DILocation(line: 202, column: 22, scope: !199)
!210 = !DILocation(line: 202, column: 10, scope: !199)
!211 = !DILocation(line: 202, column: 5, scope: !199)
!212 = !DILocation(line: 202, column: 20, scope: !199)
!213 = !DILocation(line: 203, column: 22, scope: !199)
!214 = !DILocation(line: 203, column: 10, scope: !199)
!215 = !DILocation(line: 203, column: 5, scope: !199)
!216 = !DILocation(line: 203, column: 20, scope: !199)
!217 = !DILocation(line: 204, column: 22, scope: !199)
!218 = !DILocation(line: 204, column: 10, scope: !199)
!219 = !DILocation(line: 204, column: 5, scope: !199)
!220 = !DILocation(line: 204, column: 20, scope: !199)
!221 = !DILocation(line: 206, column: 36, scope: !199)
!222 = !DILocation(line: 206, column: 31, scope: !199)
!223 = !DILocation(line: 206, column: 5, scope: !199)
!224 = !DILocation(line: 209, column: 10, scope: !199)
!225 = !DILocation(line: 209, column: 31, scope: !199)
!226 = !DILocation(line: 211, column: 5, scope: !199)
!227 = distinct !DISubprogram(name: "mbedtls_chacha20_update", scope: !3, file: !3, line: 214, type: !228, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!228 = !DISubroutineType(types: !229)
!229 = !{!149, !109, !30, !150, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!231 = !DILocalVariable(name: "ctx", arg: 1, scope: !227, file: !3, line: 214, type: !109)
!232 = !DILocation(line: 0, scope: !227)
!233 = !DILocalVariable(name: "size", arg: 2, scope: !227, file: !3, line: 215, type: !30)
!234 = !DILocalVariable(name: "input", arg: 3, scope: !227, file: !3, line: 216, type: !150)
!235 = !DILocalVariable(name: "output", arg: 4, scope: !227, file: !3, line: 217, type: !230)
!236 = !DILocalVariable(name: "offset", scope: !227, file: !3, line: 219, type: !30)
!237 = !DILocation(line: 222, column: 5, scope: !227)
!238 = !DILocation(line: 222, column: 17, scope: !227)
!239 = !DILocation(line: 222, column: 22, scope: !227)
!240 = !DILocation(line: 222, column: 30, scope: !227)
!241 = !DILocation(line: 222, column: 51, scope: !227)
!242 = !DILocation(line: 224, column: 26, scope: !243)
!243 = distinct !DILexicalBlock(scope: !227, file: !3, line: 223, column: 5)
!244 = !DILocation(line: 225, column: 31, scope: !243)
!245 = !DILocation(line: 225, column: 47, scope: !243)
!246 = !DILocation(line: 225, column: 26, scope: !243)
!247 = !DILocation(line: 225, column: 24, scope: !243)
!248 = !DILocation(line: 224, column: 9, scope: !243)
!249 = !DILocation(line: 224, column: 24, scope: !243)
!250 = !DILocation(line: 227, column: 14, scope: !243)
!251 = !DILocation(line: 227, column: 34, scope: !243)
!252 = !DILocation(line: 228, column: 15, scope: !243)
!253 = !DILocation(line: 229, column: 13, scope: !243)
!254 = distinct !{!254, !237, !255, !256}
!255 = !DILocation(line: 230, column: 5, scope: !227)
!256 = !{!"llvm.loop.mustprogress"}
!257 = !DILocation(line: 233, column: 5, scope: !227)
!258 = !DILocation(line: 233, column: 17, scope: !227)
!259 = !DILocation(line: 236, column: 30, scope: !260)
!260 = distinct !DILexicalBlock(scope: !227, file: !3, line: 234, column: 5)
!261 = !DILocation(line: 236, column: 25, scope: !260)
!262 = !DILocation(line: 236, column: 42, scope: !260)
!263 = !DILocation(line: 236, column: 37, scope: !260)
!264 = !DILocation(line: 236, column: 9, scope: !260)
!265 = !DILocation(line: 237, column: 14, scope: !260)
!266 = !DILocation(line: 237, column: 9, scope: !260)
!267 = !DILocation(line: 237, column: 39, scope: !260)
!268 = !DILocation(line: 239, column: 29, scope: !260)
!269 = !DILocation(line: 239, column: 45, scope: !260)
!270 = !DILocation(line: 239, column: 60, scope: !260)
!271 = !DILocation(line: 239, column: 55, scope: !260)
!272 = !DILocation(line: 239, column: 9, scope: !260)
!273 = !DILocation(line: 241, column: 16, scope: !260)
!274 = !DILocation(line: 242, column: 16, scope: !260)
!275 = distinct !{!275, !257, !276, !256}
!276 = !DILocation(line: 243, column: 5, scope: !227)
!277 = !DILocation(line: 246, column: 14, scope: !278)
!278 = distinct !DILexicalBlock(scope: !227, file: !3, line: 246, column: 9)
!279 = !DILocation(line: 246, column: 9, scope: !227)
!280 = !DILocation(line: 249, column: 30, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 247, column: 5)
!282 = !DILocation(line: 249, column: 25, scope: !281)
!283 = !DILocation(line: 249, column: 42, scope: !281)
!284 = !DILocation(line: 249, column: 37, scope: !281)
!285 = !DILocation(line: 249, column: 9, scope: !281)
!286 = !DILocation(line: 250, column: 14, scope: !281)
!287 = !DILocation(line: 250, column: 9, scope: !281)
!288 = !DILocation(line: 250, column: 39, scope: !281)
!289 = !DILocation(line: 252, column: 29, scope: !281)
!290 = !DILocation(line: 252, column: 45, scope: !281)
!291 = !DILocation(line: 252, column: 60, scope: !281)
!292 = !DILocation(line: 252, column: 55, scope: !281)
!293 = !DILocation(line: 252, column: 9, scope: !281)
!294 = !DILocation(line: 254, column: 14, scope: !281)
!295 = !DILocation(line: 254, column: 35, scope: !281)
!296 = !DILocation(line: 256, column: 5, scope: !281)
!297 = !DILocation(line: 258, column: 5, scope: !227)
!298 = distinct !DISubprogram(name: "chacha20_block", scope: !3, file: !3, line: 115, type: !299, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301, !230}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!302 = !DILocalVariable(name: "initial_state", arg: 1, scope: !298, file: !3, line: 115, type: !301)
!303 = !DILocation(line: 0, scope: !298)
!304 = !DILocalVariable(name: "keystream", arg: 2, scope: !298, file: !3, line: 116, type: !230)
!305 = !DILocalVariable(name: "working_state", scope: !298, file: !3, line: 118, type: !115)
!306 = !DILocation(line: 118, column: 14, scope: !298)
!307 = !DILocation(line: 121, column: 5, scope: !298)
!308 = !DILocalVariable(name: "i", scope: !298, file: !3, line: 119, type: !30)
!309 = !DILocation(line: 125, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !298, file: !3, line: 125, column: 5)
!311 = !DILocation(line: 0, scope: !310)
!312 = !DILocation(line: 125, column: 20, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 125, column: 5)
!314 = !DILocation(line: 125, column: 5, scope: !310)
!315 = !DILocation(line: 126, column: 31, scope: !313)
!316 = !DILocation(line: 126, column: 9, scope: !313)
!317 = !DILocation(line: 125, column: 28, scope: !313)
!318 = !DILocation(line: 125, column: 5, scope: !313)
!319 = distinct !{!319, !314, !320, !256}
!320 = !DILocation(line: 126, column: 45, scope: !310)
!321 = !DILocation(line: 128, column: 26, scope: !298)
!322 = !DILocation(line: 128, column: 5, scope: !298)
!323 = !DILocation(line: 128, column: 23, scope: !298)
!324 = !DILocation(line: 129, column: 26, scope: !298)
!325 = !DILocation(line: 129, column: 5, scope: !298)
!326 = !DILocation(line: 129, column: 23, scope: !298)
!327 = !DILocation(line: 130, column: 26, scope: !298)
!328 = !DILocation(line: 130, column: 5, scope: !298)
!329 = !DILocation(line: 130, column: 23, scope: !298)
!330 = !DILocation(line: 131, column: 26, scope: !298)
!331 = !DILocation(line: 131, column: 5, scope: !298)
!332 = !DILocation(line: 131, column: 23, scope: !298)
!333 = !DILocation(line: 132, column: 26, scope: !298)
!334 = !DILocation(line: 132, column: 5, scope: !298)
!335 = !DILocation(line: 132, column: 23, scope: !298)
!336 = !DILocation(line: 133, column: 26, scope: !298)
!337 = !DILocation(line: 133, column: 5, scope: !298)
!338 = !DILocation(line: 133, column: 23, scope: !298)
!339 = !DILocation(line: 134, column: 26, scope: !298)
!340 = !DILocation(line: 134, column: 5, scope: !298)
!341 = !DILocation(line: 134, column: 23, scope: !298)
!342 = !DILocation(line: 135, column: 26, scope: !298)
!343 = !DILocation(line: 135, column: 5, scope: !298)
!344 = !DILocation(line: 135, column: 23, scope: !298)
!345 = !DILocation(line: 136, column: 26, scope: !298)
!346 = !DILocation(line: 136, column: 5, scope: !298)
!347 = !DILocation(line: 136, column: 23, scope: !298)
!348 = !DILocation(line: 137, column: 26, scope: !298)
!349 = !DILocation(line: 137, column: 5, scope: !298)
!350 = !DILocation(line: 137, column: 23, scope: !298)
!351 = !DILocation(line: 138, column: 26, scope: !298)
!352 = !DILocation(line: 138, column: 5, scope: !298)
!353 = !DILocation(line: 138, column: 23, scope: !298)
!354 = !DILocation(line: 139, column: 26, scope: !298)
!355 = !DILocation(line: 139, column: 5, scope: !298)
!356 = !DILocation(line: 139, column: 23, scope: !298)
!357 = !DILocation(line: 140, column: 26, scope: !298)
!358 = !DILocation(line: 140, column: 5, scope: !298)
!359 = !DILocation(line: 140, column: 23, scope: !298)
!360 = !DILocation(line: 141, column: 26, scope: !298)
!361 = !DILocation(line: 141, column: 5, scope: !298)
!362 = !DILocation(line: 141, column: 23, scope: !298)
!363 = !DILocation(line: 142, column: 26, scope: !298)
!364 = !DILocation(line: 142, column: 5, scope: !298)
!365 = !DILocation(line: 142, column: 23, scope: !298)
!366 = !DILocation(line: 143, column: 26, scope: !298)
!367 = !DILocation(line: 143, column: 5, scope: !298)
!368 = !DILocation(line: 143, column: 23, scope: !298)
!369 = !DILocation(line: 145, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !298, file: !3, line: 145, column: 5)
!371 = !DILocation(line: 0, scope: !370)
!372 = !DILocation(line: 145, column: 20, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !3, line: 145, column: 5)
!374 = !DILocation(line: 145, column: 5, scope: !370)
!375 = !DILocation(line: 147, column: 27, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !3, line: 146, column: 5)
!377 = !DILocalVariable(name: "offset", scope: !376, file: !3, line: 147, type: !30)
!378 = !DILocation(line: 0, scope: !376)
!379 = !DILocation(line: 149, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 149, column: 9)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 149, column: 9)
!382 = distinct !DILexicalBlock(scope: !376, file: !3, line: 149, column: 9)
!383 = !DILocation(line: 150, column: 5, scope: !376)
!384 = !DILocation(line: 145, column: 27, scope: !373)
!385 = !DILocation(line: 145, column: 5, scope: !373)
!386 = distinct !{!386, !374, !387, !256}
!387 = !DILocation(line: 150, column: 5, scope: !370)
!388 = !DILocation(line: 152, column: 31, scope: !298)
!389 = !DILocation(line: 152, column: 5, scope: !298)
!390 = !DILocation(line: 153, column: 1, scope: !298)
!391 = distinct !DISubprogram(name: "chacha20_inner_block", scope: !3, file: !3, line: 96, type: !392, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!395 = !DILocalVariable(name: "state", arg: 1, scope: !391, file: !3, line: 96, type: !394)
!396 = !DILocation(line: 0, scope: !391)
!397 = !DILocation(line: 98, column: 5, scope: !391)
!398 = !DILocation(line: 99, column: 5, scope: !391)
!399 = !DILocation(line: 100, column: 5, scope: !391)
!400 = !DILocation(line: 101, column: 5, scope: !391)
!401 = !DILocation(line: 103, column: 5, scope: !391)
!402 = !DILocation(line: 104, column: 5, scope: !391)
!403 = !DILocation(line: 105, column: 5, scope: !391)
!404 = !DILocation(line: 106, column: 5, scope: !391)
!405 = !DILocation(line: 107, column: 1, scope: !391)
!406 = distinct !DISubprogram(name: "chacha20_quarter_round", scope: !3, file: !3, line: 61, type: !407, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !394, !30, !30, !30, !30}
!409 = !DILocalVariable(name: "state", arg: 1, scope: !406, file: !3, line: 61, type: !394)
!410 = !DILocation(line: 0, scope: !406)
!411 = !DILocalVariable(name: "a", arg: 2, scope: !406, file: !3, line: 62, type: !30)
!412 = !DILocalVariable(name: "b", arg: 3, scope: !406, file: !3, line: 63, type: !30)
!413 = !DILocalVariable(name: "c", arg: 4, scope: !406, file: !3, line: 64, type: !30)
!414 = !DILocalVariable(name: "d", arg: 5, scope: !406, file: !3, line: 65, type: !30)
!415 = !DILocation(line: 68, column: 17, scope: !406)
!416 = !DILocation(line: 68, column: 5, scope: !406)
!417 = !DILocation(line: 68, column: 14, scope: !406)
!418 = !DILocation(line: 69, column: 17, scope: !406)
!419 = !DILocation(line: 69, column: 5, scope: !406)
!420 = !DILocation(line: 69, column: 14, scope: !406)
!421 = !DILocation(line: 70, column: 16, scope: !406)
!422 = !DILocation(line: 70, column: 5, scope: !406)
!423 = !DILocation(line: 70, column: 14, scope: !406)
!424 = !DILocation(line: 73, column: 17, scope: !406)
!425 = !DILocation(line: 73, column: 5, scope: !406)
!426 = !DILocation(line: 73, column: 14, scope: !406)
!427 = !DILocation(line: 74, column: 17, scope: !406)
!428 = !DILocation(line: 74, column: 5, scope: !406)
!429 = !DILocation(line: 74, column: 14, scope: !406)
!430 = !DILocation(line: 75, column: 16, scope: !406)
!431 = !DILocation(line: 75, column: 5, scope: !406)
!432 = !DILocation(line: 75, column: 14, scope: !406)
!433 = !DILocation(line: 78, column: 17, scope: !406)
!434 = !DILocation(line: 78, column: 5, scope: !406)
!435 = !DILocation(line: 78, column: 14, scope: !406)
!436 = !DILocation(line: 79, column: 17, scope: !406)
!437 = !DILocation(line: 79, column: 5, scope: !406)
!438 = !DILocation(line: 79, column: 14, scope: !406)
!439 = !DILocation(line: 80, column: 16, scope: !406)
!440 = !DILocation(line: 80, column: 5, scope: !406)
!441 = !DILocation(line: 80, column: 14, scope: !406)
!442 = !DILocation(line: 83, column: 17, scope: !406)
!443 = !DILocation(line: 83, column: 5, scope: !406)
!444 = !DILocation(line: 83, column: 14, scope: !406)
!445 = !DILocation(line: 84, column: 17, scope: !406)
!446 = !DILocation(line: 84, column: 5, scope: !406)
!447 = !DILocation(line: 84, column: 14, scope: !406)
!448 = !DILocation(line: 85, column: 16, scope: !406)
!449 = !DILocation(line: 85, column: 5, scope: !406)
!450 = !DILocation(line: 85, column: 14, scope: !406)
!451 = !DILocation(line: 86, column: 1, scope: !406)
!452 = distinct !DISubprogram(name: "mbedtls_chacha20_crypt", scope: !3, file: !3, line: 261, type: !453, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!453 = !DISubroutineType(types: !454)
!454 = !{!149, !150, !150, !7, !30, !150, !230}
!455 = !DILocalVariable(name: "key", arg: 1, scope: !452, file: !3, line: 261, type: !150)
!456 = !DILocation(line: 0, scope: !452)
!457 = !DILocalVariable(name: "nonce", arg: 2, scope: !452, file: !3, line: 262, type: !150)
!458 = !DILocalVariable(name: "counter", arg: 3, scope: !452, file: !3, line: 263, type: !7)
!459 = !DILocalVariable(name: "data_len", arg: 4, scope: !452, file: !3, line: 264, type: !30)
!460 = !DILocalVariable(name: "input", arg: 5, scope: !452, file: !3, line: 265, type: !150)
!461 = !DILocalVariable(name: "output", arg: 6, scope: !452, file: !3, line: 266, type: !230)
!462 = !DILocalVariable(name: "ctx", scope: !452, file: !3, line: 268, type: !110)
!463 = !DILocation(line: 268, column: 30, scope: !452)
!464 = !DILocalVariable(name: "ret", scope: !452, file: !3, line: 269, type: !149)
!465 = !DILocation(line: 271, column: 5, scope: !452)
!466 = !DILocation(line: 273, column: 11, scope: !452)
!467 = !DILocation(line: 274, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !452, file: !3, line: 274, column: 9)
!469 = !DILocation(line: 274, column: 9, scope: !452)
!470 = !DILocation(line: 275, column: 9, scope: !468)
!471 = !DILocation(line: 277, column: 11, scope: !452)
!472 = !DILocation(line: 278, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !452, file: !3, line: 278, column: 9)
!474 = !DILocation(line: 278, column: 9, scope: !452)
!475 = !DILocation(line: 279, column: 9, scope: !473)
!476 = !DILocation(line: 281, column: 11, scope: !452)
!477 = !DILocation(line: 281, column: 5, scope: !452)
!478 = !DILabel(scope: !452, name: "cleanup", file: !3, line: 283)
!479 = !DILocation(line: 283, column: 1, scope: !452)
!480 = !DILocation(line: 284, column: 5, scope: !452)
!481 = !DILocation(line: 285, column: 5, scope: !452)
!482 = distinct !DISubprogram(name: "mbedtls_chacha20_self_test", scope: !3, file: !3, line: 474, type: !483, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!483 = !DISubroutineType(types: !484)
!484 = !{!149, !149}
!485 = !DILocalVariable(name: "verbose", arg: 1, scope: !482, file: !3, line: 474, type: !149)
!486 = !DILocation(line: 0, scope: !482)
!487 = !DILocalVariable(name: "output", scope: !482, file: !3, line: 476, type: !488)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 3048, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 381)
!491 = !DILocation(line: 476, column: 19, scope: !482)
!492 = !DILocalVariable(name: "ret", scope: !482, file: !3, line: 478, type: !149)
!493 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 477, type: !11)
!494 = !DILocation(line: 480, column: 10, scope: !495)
!495 = distinct !DILexicalBlock(scope: !482, file: !3, line: 480, column: 5)
!496 = !DILocation(line: 0, scope: !495)
!497 = !DILocation(line: 480, column: 20, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 480, column: 5)
!499 = !DILocation(line: 480, column: 5, scope: !495)
!500 = !DILocation(line: 482, column: 21, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 482, column: 13)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 481, column: 5)
!503 = !DILocation(line: 482, column: 13, scope: !502)
!504 = !DILocation(line: 483, column: 13, scope: !501)
!505 = !DILocation(line: 485, column: 39, scope: !502)
!506 = !DILocation(line: 486, column: 39, scope: !502)
!507 = !DILocation(line: 487, column: 39, scope: !502)
!508 = !DILocation(line: 488, column: 39, scope: !502)
!509 = !DILocation(line: 489, column: 39, scope: !502)
!510 = !DILocation(line: 490, column: 39, scope: !502)
!511 = !DILocation(line: 485, column: 15, scope: !502)
!512 = !DILocation(line: 492, column: 9, scope: !502)
!513 = !DILocation(line: 492, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 492, column: 9)
!515 = distinct !DILexicalBlock(scope: !502, file: !3, line: 492, column: 9)
!516 = !DILocation(line: 492, column: 9, scope: !515)
!517 = !DILocation(line: 492, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 492, column: 9)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 492, column: 9)
!520 = !DILocation(line: 492, column: 9, scope: !519)
!521 = !DILocation(line: 494, column: 9, scope: !502)
!522 = !DILocation(line: 494, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 494, column: 9)
!524 = distinct !DILexicalBlock(scope: !502, file: !3, line: 494, column: 9)
!525 = !DILocation(line: 494, column: 9, scope: !524)
!526 = !DILocation(line: 494, column: 9, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 494, column: 9)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 494, column: 9)
!529 = !DILocation(line: 494, column: 9, scope: !528)
!530 = !DILocation(line: 497, column: 21, scope: !531)
!531 = distinct !DILexicalBlock(scope: !502, file: !3, line: 497, column: 13)
!532 = !DILocation(line: 497, column: 13, scope: !502)
!533 = !DILocation(line: 498, column: 13, scope: !531)
!534 = !DILocation(line: 499, column: 5, scope: !502)
!535 = !DILocation(line: 480, column: 27, scope: !498)
!536 = !DILocation(line: 480, column: 5, scope: !498)
!537 = distinct !{!537, !499, !538, !256}
!538 = !DILocation(line: 499, column: 5, scope: !495)
!539 = !DILocation(line: 501, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !482, file: !3, line: 501, column: 9)
!541 = !DILocation(line: 501, column: 9, scope: !482)
!542 = !DILocation(line: 502, column: 9, scope: !540)
!543 = !DILocation(line: 504, column: 5, scope: !482)
!544 = !DILocation(line: 505, column: 1, scope: !482)
!545 = distinct !DISubprogram(name: "mbedtls_chachapoly_init", scope: !46, file: !46, line: 79, type: !546, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chachapoly_context", file: !49, line: 70, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chachapoly_context", file: !49, line: 61, size: 1920, elements: !551)
!551 = !{!552, !559, !576, !577, !578, !579}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "chacha20_ctx", scope: !550, file: !49, line: 63, baseType: !553, size: 1088)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chacha20_context", file: !111, line: 56, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chacha20_context", file: !111, line: 50, size: 1088, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !554, file: !111, line: 52, baseType: !115, size: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "keystream8", scope: !554, file: !111, line: 53, baseType: !118, size: 512, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "keystream_bytes_used", scope: !554, file: !111, line: 54, baseType: !30, size: 64, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "poly1305_ctx", scope: !550, file: !49, line: 64, baseType: !560, size: 640, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_poly1305_context", file: !561, line: 58, baseType: !562)
!561 = !DIFile(filename: "../mbedtls/include/mbedtls/poly1305.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_poly1305_context", file: !561, line: 50, size: 640, elements: !563)
!563 = !{!564, !568, !569, !573, !575}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !562, file: !561, line: 52, baseType: !565, size: 128)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 4)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !562, file: !561, line: 53, baseType: !565, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !562, file: !561, line: 54, baseType: !570, size: 160, offset: 256)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 5)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !562, file: !561, line: 55, baseType: !574, size: 128, offset: 416)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, elements: !116)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "queue_len", scope: !562, file: !561, line: 56, baseType: !30, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "aad_len", scope: !550, file: !49, line: 65, baseType: !54, size: 64, offset: 1728)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ciphertext_len", scope: !550, file: !49, line: 66, baseType: !54, size: 64, offset: 1792)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !550, file: !49, line: 67, baseType: !149, size: 32, offset: 1856)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !550, file: !49, line: 68, baseType: !580, size: 32, offset: 1888)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chachapoly_mode_t", file: !49, line: 55, baseType: !48)
!581 = !DILocalVariable(name: "ctx", arg: 1, scope: !545, file: !46, line: 79, type: !548)
!582 = !DILocation(line: 0, scope: !545)
!583 = !DILocation(line: 81, column: 34, scope: !545)
!584 = !DILocation(line: 81, column: 5, scope: !545)
!585 = !DILocation(line: 82, column: 34, scope: !545)
!586 = !DILocation(line: 82, column: 5, scope: !545)
!587 = !DILocation(line: 83, column: 10, scope: !545)
!588 = !DILocation(line: 83, column: 25, scope: !545)
!589 = !DILocation(line: 84, column: 10, scope: !545)
!590 = !DILocation(line: 84, column: 25, scope: !545)
!591 = !DILocation(line: 85, column: 10, scope: !545)
!592 = !DILocation(line: 85, column: 25, scope: !545)
!593 = !DILocation(line: 86, column: 10, scope: !545)
!594 = !DILocation(line: 86, column: 25, scope: !545)
!595 = !DILocation(line: 87, column: 1, scope: !545)
!596 = distinct !DISubprogram(name: "mbedtls_chachapoly_free", scope: !46, file: !46, line: 89, type: !546, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!597 = !DILocalVariable(name: "ctx", arg: 1, scope: !596, file: !46, line: 89, type: !548)
!598 = !DILocation(line: 0, scope: !596)
!599 = !DILocation(line: 91, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !46, line: 91, column: 9)
!601 = !DILocation(line: 91, column: 9, scope: !596)
!602 = !DILocation(line: 92, column: 9, scope: !600)
!603 = !DILocation(line: 94, column: 34, scope: !596)
!604 = !DILocation(line: 94, column: 5, scope: !596)
!605 = !DILocation(line: 95, column: 34, scope: !596)
!606 = !DILocation(line: 95, column: 5, scope: !596)
!607 = !DILocation(line: 96, column: 10, scope: !596)
!608 = !DILocation(line: 96, column: 25, scope: !596)
!609 = !DILocation(line: 97, column: 10, scope: !596)
!610 = !DILocation(line: 97, column: 25, scope: !596)
!611 = !DILocation(line: 98, column: 10, scope: !596)
!612 = !DILocation(line: 98, column: 25, scope: !596)
!613 = !DILocation(line: 99, column: 10, scope: !596)
!614 = !DILocation(line: 99, column: 25, scope: !596)
!615 = !DILocation(line: 100, column: 1, scope: !596)
!616 = distinct !DISubprogram(name: "mbedtls_chachapoly_setkey", scope: !46, file: !46, line: 102, type: !617, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!617 = !DISubroutineType(types: !618)
!618 = !{!149, !548, !150}
!619 = !DILocalVariable(name: "ctx", arg: 1, scope: !616, file: !46, line: 102, type: !548)
!620 = !DILocation(line: 0, scope: !616)
!621 = !DILocalVariable(name: "key", arg: 2, scope: !616, file: !46, line: 103, type: !150)
!622 = !DILocalVariable(name: "ret", scope: !616, file: !46, line: 105, type: !149)
!623 = !DILocation(line: 107, column: 42, scope: !616)
!624 = !DILocation(line: 107, column: 11, scope: !616)
!625 = !DILocation(line: 109, column: 5, scope: !616)
!626 = distinct !DISubprogram(name: "mbedtls_chachapoly_starts", scope: !46, file: !46, line: 112, type: !627, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!627 = !DISubroutineType(types: !628)
!628 = !{!149, !548, !150, !580}
!629 = !DILocalVariable(name: "ctx", arg: 1, scope: !626, file: !46, line: 112, type: !548)
!630 = !DILocation(line: 0, scope: !626)
!631 = !DILocalVariable(name: "nonce", arg: 2, scope: !626, file: !46, line: 113, type: !150)
!632 = !DILocalVariable(name: "mode", arg: 3, scope: !626, file: !46, line: 114, type: !580)
!633 = !DILocalVariable(name: "ret", scope: !626, file: !46, line: 116, type: !149)
!634 = !DILocalVariable(name: "poly1305_key", scope: !626, file: !46, line: 117, type: !635)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !121)
!636 = !DILocation(line: 117, column: 19, scope: !626)
!637 = !DILocation(line: 120, column: 42, scope: !626)
!638 = !DILocation(line: 120, column: 11, scope: !626)
!639 = !DILocation(line: 121, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !626, file: !46, line: 121, column: 9)
!641 = !DILocation(line: 121, column: 9, scope: !626)
!642 = !DILocation(line: 122, column: 9, scope: !640)
!643 = !DILocation(line: 129, column: 5, scope: !626)
!644 = !DILocation(line: 130, column: 42, scope: !626)
!645 = !DILocation(line: 131, column: 39, scope: !626)
!646 = !DILocation(line: 131, column: 53, scope: !626)
!647 = !DILocation(line: 130, column: 11, scope: !626)
!648 = !DILocation(line: 132, column: 13, scope: !649)
!649 = distinct !DILexicalBlock(scope: !626, file: !46, line: 132, column: 9)
!650 = !DILocation(line: 132, column: 9, scope: !626)
!651 = !DILocation(line: 133, column: 9, scope: !649)
!652 = !DILocation(line: 135, column: 42, scope: !626)
!653 = !DILocation(line: 135, column: 56, scope: !626)
!654 = !DILocation(line: 135, column: 11, scope: !626)
!655 = !DILocation(line: 137, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !626, file: !46, line: 137, column: 9)
!657 = !DILocation(line: 137, column: 9, scope: !626)
!658 = !DILocation(line: 139, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !46, line: 138, column: 5)
!660 = !DILocation(line: 139, column: 29, scope: !659)
!661 = !DILocation(line: 140, column: 14, scope: !659)
!662 = !DILocation(line: 140, column: 29, scope: !659)
!663 = !DILocation(line: 141, column: 14, scope: !659)
!664 = !DILocation(line: 141, column: 29, scope: !659)
!665 = !DILocation(line: 142, column: 14, scope: !659)
!666 = !DILocation(line: 142, column: 29, scope: !659)
!667 = !DILocation(line: 143, column: 5, scope: !659)
!668 = !DILocation(line: 137, column: 16, scope: !656)
!669 = !DILabel(scope: !626, name: "cleanup", file: !46, line: 145)
!670 = !DILocation(line: 145, column: 1, scope: !626)
!671 = !DILocation(line: 146, column: 31, scope: !626)
!672 = !DILocation(line: 146, column: 5, scope: !626)
!673 = !DILocation(line: 147, column: 5, scope: !626)
!674 = distinct !DISubprogram(name: "mbedtls_chachapoly_update_aad", scope: !46, file: !46, line: 150, type: !675, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!675 = !DISubroutineType(types: !676)
!676 = !{!149, !548, !150, !30}
!677 = !DILocalVariable(name: "ctx", arg: 1, scope: !674, file: !46, line: 150, type: !548)
!678 = !DILocation(line: 0, scope: !674)
!679 = !DILocalVariable(name: "aad", arg: 2, scope: !674, file: !46, line: 151, type: !150)
!680 = !DILocalVariable(name: "aad_len", arg: 3, scope: !674, file: !46, line: 152, type: !30)
!681 = !DILocation(line: 154, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !674, file: !46, line: 154, column: 9)
!683 = !DILocation(line: 154, column: 20, scope: !682)
!684 = !DILocation(line: 154, column: 9, scope: !674)
!685 = !DILocation(line: 155, column: 9, scope: !682)
!686 = !DILocation(line: 157, column: 10, scope: !674)
!687 = !DILocation(line: 157, column: 18, scope: !674)
!688 = !DILocation(line: 159, column: 44, scope: !674)
!689 = !DILocation(line: 159, column: 13, scope: !674)
!690 = !DILocation(line: 159, column: 5, scope: !674)
!691 = !DILocation(line: 160, column: 1, scope: !674)
!692 = distinct !DISubprogram(name: "mbedtls_chachapoly_update", scope: !46, file: !46, line: 162, type: !693, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!693 = !DISubroutineType(types: !694)
!694 = !{!149, !548, !30, !150, !230}
!695 = !DILocalVariable(name: "ctx", arg: 1, scope: !692, file: !46, line: 162, type: !548)
!696 = !DILocation(line: 0, scope: !692)
!697 = !DILocalVariable(name: "len", arg: 2, scope: !692, file: !46, line: 163, type: !30)
!698 = !DILocalVariable(name: "input", arg: 3, scope: !692, file: !46, line: 164, type: !150)
!699 = !DILocalVariable(name: "output", arg: 4, scope: !692, file: !46, line: 165, type: !230)
!700 = !DILocalVariable(name: "ret", scope: !692, file: !46, line: 167, type: !149)
!701 = !DILocation(line: 169, column: 16, scope: !702)
!702 = distinct !DILexicalBlock(scope: !692, file: !46, line: 169, column: 9)
!703 = !DILocation(line: 169, column: 22, scope: !702)
!704 = !DILocation(line: 169, column: 48, scope: !702)
!705 = !DILocation(line: 170, column: 16, scope: !702)
!706 = !DILocation(line: 170, column: 22, scope: !702)
!707 = !DILocation(line: 169, column: 9, scope: !692)
!708 = !DILocation(line: 172, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !702, file: !46, line: 171, column: 5)
!710 = !DILocation(line: 175, column: 14, scope: !711)
!711 = distinct !DILexicalBlock(scope: !692, file: !46, line: 175, column: 9)
!712 = !DILocation(line: 175, column: 20, scope: !711)
!713 = !DILocation(line: 175, column: 9, scope: !692)
!714 = !DILocation(line: 177, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !46, line: 176, column: 5)
!716 = !DILocation(line: 177, column: 20, scope: !715)
!717 = !DILocation(line: 179, column: 15, scope: !715)
!718 = !DILocation(line: 180, column: 17, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !46, line: 180, column: 13)
!720 = !DILocation(line: 180, column: 13, scope: !715)
!721 = !DILocation(line: 181, column: 13, scope: !719)
!722 = !DILocation(line: 182, column: 5, scope: !715)
!723 = !DILocation(line: 184, column: 10, scope: !692)
!724 = !DILocation(line: 184, column: 25, scope: !692)
!725 = !DILocation(line: 186, column: 14, scope: !726)
!726 = distinct !DILexicalBlock(scope: !692, file: !46, line: 186, column: 9)
!727 = !DILocation(line: 186, column: 19, scope: !726)
!728 = !DILocation(line: 186, column: 9, scope: !692)
!729 = !DILocation(line: 188, column: 46, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !46, line: 187, column: 5)
!731 = !DILocation(line: 188, column: 15, scope: !730)
!732 = !DILocation(line: 189, column: 17, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !46, line: 189, column: 13)
!734 = !DILocation(line: 189, column: 13, scope: !730)
!735 = !DILocation(line: 190, column: 13, scope: !733)
!736 = !DILocation(line: 192, column: 46, scope: !730)
!737 = !DILocation(line: 192, column: 15, scope: !730)
!738 = !DILocation(line: 193, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !46, line: 193, column: 13)
!740 = !DILocation(line: 193, column: 13, scope: !730)
!741 = !DILocation(line: 194, column: 13, scope: !739)
!742 = !DILocation(line: 195, column: 5, scope: !730)
!743 = !DILocation(line: 198, column: 46, scope: !744)
!744 = distinct !DILexicalBlock(scope: !726, file: !46, line: 197, column: 5)
!745 = !DILocation(line: 198, column: 15, scope: !744)
!746 = !DILocation(line: 199, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !46, line: 199, column: 13)
!748 = !DILocation(line: 199, column: 13, scope: !744)
!749 = !DILocation(line: 200, column: 13, scope: !747)
!750 = !DILocation(line: 202, column: 46, scope: !744)
!751 = !DILocation(line: 202, column: 15, scope: !744)
!752 = !DILocation(line: 203, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !744, file: !46, line: 203, column: 13)
!754 = !DILocation(line: 203, column: 13, scope: !744)
!755 = !DILocation(line: 204, column: 13, scope: !753)
!756 = !DILocation(line: 207, column: 5, scope: !692)
!757 = !DILocation(line: 208, column: 1, scope: !692)
!758 = distinct !DISubprogram(name: "chachapoly_pad_aad", scope: !46, file: !46, line: 45, type: !759, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !4)
!759 = !DISubroutineType(types: !760)
!760 = !{!149, !548}
!761 = !DILocalVariable(name: "ctx", arg: 1, scope: !758, file: !46, line: 45, type: !548)
!762 = !DILocation(line: 0, scope: !758)
!763 = !DILocation(line: 47, column: 52, scope: !758)
!764 = !DILocation(line: 47, column: 60, scope: !758)
!765 = !DILocation(line: 47, column: 34, scope: !758)
!766 = !DILocalVariable(name: "partial_block_len", scope: !758, file: !46, line: 47, type: !7)
!767 = !DILocalVariable(name: "zeroes", scope: !758, file: !46, line: 48, type: !768)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 120, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 15)
!771 = !DILocation(line: 48, column: 19, scope: !758)
!772 = !DILocation(line: 50, column: 27, scope: !773)
!773 = distinct !DILexicalBlock(scope: !758, file: !46, line: 50, column: 9)
!774 = !DILocation(line: 50, column: 9, scope: !758)
!775 = !DILocation(line: 51, column: 9, scope: !773)
!776 = !DILocation(line: 53, column: 5, scope: !758)
!777 = !DILocation(line: 55, column: 44, scope: !758)
!778 = !DILocation(line: 56, column: 38, scope: !758)
!779 = !DILocation(line: 57, column: 42, scope: !758)
!780 = !DILocation(line: 57, column: 38, scope: !758)
!781 = !DILocation(line: 55, column: 13, scope: !758)
!782 = !DILocation(line: 55, column: 5, scope: !758)
!783 = !DILocation(line: 58, column: 1, scope: !758)
!784 = distinct !DISubprogram(name: "mbedtls_chachapoly_finish", scope: !46, file: !46, line: 210, type: !785, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!785 = !DISubroutineType(types: !786)
!786 = !{!149, !548, !230}
!787 = !DILocalVariable(name: "ctx", arg: 1, scope: !784, file: !46, line: 210, type: !548)
!788 = !DILocation(line: 0, scope: !784)
!789 = !DILocalVariable(name: "mac", arg: 2, scope: !784, file: !46, line: 211, type: !230)
!790 = !DILocalVariable(name: "ret", scope: !784, file: !46, line: 213, type: !149)
!791 = !DILocalVariable(name: "len_block", scope: !784, file: !46, line: 214, type: !792)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !116)
!793 = !DILocation(line: 214, column: 19, scope: !784)
!794 = !DILocation(line: 216, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !784, file: !46, line: 216, column: 9)
!796 = !DILocation(line: 216, column: 20, scope: !795)
!797 = !DILocation(line: 216, column: 9, scope: !784)
!798 = !DILocation(line: 218, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !46, line: 217, column: 5)
!800 = !DILocation(line: 221, column: 14, scope: !801)
!801 = distinct !DILexicalBlock(scope: !784, file: !46, line: 221, column: 9)
!802 = !DILocation(line: 221, column: 20, scope: !801)
!803 = !DILocation(line: 221, column: 9, scope: !784)
!804 = !DILocation(line: 223, column: 15, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !46, line: 222, column: 5)
!806 = !DILocation(line: 224, column: 17, scope: !807)
!807 = distinct !DILexicalBlock(scope: !805, file: !46, line: 224, column: 13)
!808 = !DILocation(line: 224, column: 13, scope: !805)
!809 = !DILocation(line: 225, column: 13, scope: !807)
!810 = !DILocation(line: 226, column: 5, scope: !805)
!811 = !DILocation(line: 227, column: 19, scope: !812)
!812 = distinct !DILexicalBlock(scope: !801, file: !46, line: 227, column: 14)
!813 = !DILocation(line: 227, column: 25, scope: !812)
!814 = !DILocation(line: 227, column: 14, scope: !801)
!815 = !DILocation(line: 229, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !46, line: 228, column: 5)
!817 = !DILocation(line: 230, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !816, file: !46, line: 230, column: 13)
!819 = !DILocation(line: 230, column: 13, scope: !816)
!820 = !DILocation(line: 231, column: 13, scope: !818)
!821 = !DILocation(line: 232, column: 5, scope: !816)
!822 = !DILocation(line: 234, column: 10, scope: !784)
!823 = !DILocation(line: 234, column: 16, scope: !784)
!824 = !DILocation(line: 239, column: 5, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !46, line: 239, column: 5)
!826 = distinct !DILexicalBlock(scope: !827, file: !46, line: 239, column: 5)
!827 = distinct !DILexicalBlock(scope: !784, file: !46, line: 239, column: 5)
!828 = !DILocation(line: 240, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !46, line: 240, column: 5)
!830 = distinct !DILexicalBlock(scope: !831, file: !46, line: 240, column: 5)
!831 = distinct !DILexicalBlock(scope: !784, file: !46, line: 240, column: 5)
!832 = !DILocation(line: 242, column: 42, scope: !784)
!833 = !DILocation(line: 242, column: 56, scope: !784)
!834 = !DILocation(line: 242, column: 11, scope: !784)
!835 = !DILocation(line: 243, column: 13, scope: !836)
!836 = distinct !DILexicalBlock(scope: !784, file: !46, line: 243, column: 9)
!837 = !DILocation(line: 243, column: 9, scope: !784)
!838 = !DILocation(line: 244, column: 9, scope: !836)
!839 = !DILocation(line: 246, column: 42, scope: !784)
!840 = !DILocation(line: 246, column: 11, scope: !784)
!841 = !DILocation(line: 248, column: 5, scope: !784)
!842 = !DILocation(line: 249, column: 1, scope: !784)
!843 = distinct !DISubprogram(name: "chachapoly_pad_ciphertext", scope: !46, file: !46, line: 65, type: !759, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !4)
!844 = !DILocalVariable(name: "ctx", arg: 1, scope: !843, file: !46, line: 65, type: !548)
!845 = !DILocation(line: 0, scope: !843)
!846 = !DILocation(line: 67, column: 52, scope: !843)
!847 = !DILocation(line: 67, column: 67, scope: !843)
!848 = !DILocation(line: 67, column: 34, scope: !843)
!849 = !DILocalVariable(name: "partial_block_len", scope: !843, file: !46, line: 67, type: !7)
!850 = !DILocalVariable(name: "zeroes", scope: !843, file: !46, line: 68, type: !768)
!851 = !DILocation(line: 68, column: 19, scope: !843)
!852 = !DILocation(line: 70, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !843, file: !46, line: 70, column: 9)
!854 = !DILocation(line: 70, column: 9, scope: !843)
!855 = !DILocation(line: 71, column: 9, scope: !853)
!856 = !DILocation(line: 73, column: 5, scope: !843)
!857 = !DILocation(line: 74, column: 44, scope: !843)
!858 = !DILocation(line: 75, column: 38, scope: !843)
!859 = !DILocation(line: 76, column: 42, scope: !843)
!860 = !DILocation(line: 76, column: 38, scope: !843)
!861 = !DILocation(line: 74, column: 13, scope: !843)
!862 = !DILocation(line: 74, column: 5, scope: !843)
!863 = !DILocation(line: 77, column: 1, scope: !843)
!864 = distinct !DISubprogram(name: "mbedtls_chachapoly_encrypt_and_tag", scope: !46, file: !46, line: 281, type: !865, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!865 = !DISubroutineType(types: !866)
!866 = !{!149, !548, !30, !150, !150, !30, !150, !230, !230}
!867 = !DILocalVariable(name: "ctx", arg: 1, scope: !864, file: !46, line: 281, type: !548)
!868 = !DILocation(line: 0, scope: !864)
!869 = !DILocalVariable(name: "length", arg: 2, scope: !864, file: !46, line: 282, type: !30)
!870 = !DILocalVariable(name: "nonce", arg: 3, scope: !864, file: !46, line: 283, type: !150)
!871 = !DILocalVariable(name: "aad", arg: 4, scope: !864, file: !46, line: 284, type: !150)
!872 = !DILocalVariable(name: "aad_len", arg: 5, scope: !864, file: !46, line: 285, type: !30)
!873 = !DILocalVariable(name: "input", arg: 6, scope: !864, file: !46, line: 286, type: !150)
!874 = !DILocalVariable(name: "output", arg: 7, scope: !864, file: !46, line: 287, type: !230)
!875 = !DILocalVariable(name: "tag", arg: 8, scope: !864, file: !46, line: 288, type: !230)
!876 = !DILocation(line: 290, column: 13, scope: !864)
!877 = !DILocation(line: 290, column: 5, scope: !864)
!878 = distinct !DISubprogram(name: "chachapoly_crypt_and_tag", scope: !46, file: !46, line: 251, type: !879, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !4)
!879 = !DISubroutineType(types: !880)
!880 = !{!149, !548, !580, !30, !150, !150, !30, !150, !230, !230}
!881 = !DILocalVariable(name: "ctx", arg: 1, scope: !878, file: !46, line: 251, type: !548)
!882 = !DILocation(line: 0, scope: !878)
!883 = !DILocalVariable(name: "mode", arg: 2, scope: !878, file: !46, line: 252, type: !580)
!884 = !DILocalVariable(name: "length", arg: 3, scope: !878, file: !46, line: 253, type: !30)
!885 = !DILocalVariable(name: "nonce", arg: 4, scope: !878, file: !46, line: 254, type: !150)
!886 = !DILocalVariable(name: "aad", arg: 5, scope: !878, file: !46, line: 255, type: !150)
!887 = !DILocalVariable(name: "aad_len", arg: 6, scope: !878, file: !46, line: 256, type: !30)
!888 = !DILocalVariable(name: "input", arg: 7, scope: !878, file: !46, line: 257, type: !150)
!889 = !DILocalVariable(name: "output", arg: 8, scope: !878, file: !46, line: 258, type: !230)
!890 = !DILocalVariable(name: "tag", arg: 9, scope: !878, file: !46, line: 259, type: !230)
!891 = !DILocalVariable(name: "ret", scope: !878, file: !46, line: 261, type: !149)
!892 = !DILocation(line: 263, column: 11, scope: !878)
!893 = !DILocation(line: 264, column: 13, scope: !894)
!894 = distinct !DILexicalBlock(scope: !878, file: !46, line: 264, column: 9)
!895 = !DILocation(line: 264, column: 9, scope: !878)
!896 = !DILocation(line: 265, column: 9, scope: !894)
!897 = !DILocation(line: 267, column: 11, scope: !878)
!898 = !DILocation(line: 268, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !878, file: !46, line: 268, column: 9)
!900 = !DILocation(line: 268, column: 9, scope: !878)
!901 = !DILocation(line: 269, column: 9, scope: !899)
!902 = !DILocation(line: 271, column: 11, scope: !878)
!903 = !DILocation(line: 272, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !878, file: !46, line: 272, column: 9)
!905 = !DILocation(line: 272, column: 9, scope: !878)
!906 = !DILocation(line: 273, column: 9, scope: !904)
!907 = !DILocation(line: 275, column: 11, scope: !878)
!908 = !DILocation(line: 275, column: 5, scope: !878)
!909 = !DILabel(scope: !878, name: "cleanup", file: !46, line: 277)
!910 = !DILocation(line: 277, column: 1, scope: !878)
!911 = !DILocation(line: 278, column: 5, scope: !878)
!912 = distinct !DISubprogram(name: "mbedtls_chachapoly_auth_decrypt", scope: !46, file: !46, line: 295, type: !913, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!913 = !DISubroutineType(types: !914)
!914 = !{!149, !548, !30, !150, !150, !30, !150, !150, !230}
!915 = !DILocalVariable(name: "ctx", arg: 1, scope: !912, file: !46, line: 295, type: !548)
!916 = !DILocation(line: 0, scope: !912)
!917 = !DILocalVariable(name: "length", arg: 2, scope: !912, file: !46, line: 296, type: !30)
!918 = !DILocalVariable(name: "nonce", arg: 3, scope: !912, file: !46, line: 297, type: !150)
!919 = !DILocalVariable(name: "aad", arg: 4, scope: !912, file: !46, line: 298, type: !150)
!920 = !DILocalVariable(name: "aad_len", arg: 5, scope: !912, file: !46, line: 299, type: !30)
!921 = !DILocalVariable(name: "tag", arg: 6, scope: !912, file: !46, line: 300, type: !150)
!922 = !DILocalVariable(name: "input", arg: 7, scope: !912, file: !46, line: 301, type: !150)
!923 = !DILocalVariable(name: "output", arg: 8, scope: !912, file: !46, line: 302, type: !230)
!924 = !DILocalVariable(name: "ret", scope: !912, file: !46, line: 304, type: !149)
!925 = !DILocalVariable(name: "check_tag", scope: !912, file: !46, line: 305, type: !792)
!926 = !DILocation(line: 305, column: 19, scope: !912)
!927 = !DILocation(line: 311, column: 54, scope: !928)
!928 = distinct !DILexicalBlock(scope: !912, file: !46, line: 309, column: 9)
!929 = !DILocation(line: 309, column: 17, scope: !928)
!930 = !DILocation(line: 311, column: 68, scope: !928)
!931 = !DILocation(line: 309, column: 9, scope: !912)
!932 = !DILocation(line: 313, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !46, line: 312, column: 5)
!934 = !DILocalVariable(name: "diff", scope: !912, file: !46, line: 307, type: !149)
!935 = !DILocalVariable(name: "i", scope: !912, file: !46, line: 306, type: !30)
!936 = !DILocation(line: 317, column: 10, scope: !937)
!937 = distinct !DILexicalBlock(scope: !912, file: !46, line: 317, column: 5)
!938 = !DILocation(line: 0, scope: !937)
!939 = !DILocation(line: 317, column: 29, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !46, line: 317, column: 5)
!941 = !DILocation(line: 317, column: 5, scope: !937)
!942 = !DILocation(line: 318, column: 17, scope: !940)
!943 = !DILocation(line: 318, column: 26, scope: !940)
!944 = !DILocation(line: 318, column: 24, scope: !940)
!945 = !DILocation(line: 318, column: 14, scope: !940)
!946 = !DILocation(line: 318, column: 9, scope: !940)
!947 = !DILocation(line: 317, column: 53, scope: !940)
!948 = !DILocation(line: 317, column: 5, scope: !940)
!949 = distinct !{!949, !941, !950, !256}
!950 = !DILocation(line: 318, column: 37, scope: !937)
!951 = !DILocation(line: 320, column: 14, scope: !952)
!952 = distinct !DILexicalBlock(scope: !912, file: !46, line: 320, column: 9)
!953 = !DILocation(line: 320, column: 9, scope: !912)
!954 = !DILocation(line: 322, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !46, line: 321, column: 5)
!956 = !DILocation(line: 323, column: 9, scope: !955)
!957 = !DILocation(line: 326, column: 5, scope: !912)
!958 = !DILocation(line: 327, column: 1, scope: !912)
!959 = distinct !DISubprogram(name: "mbedtls_chachapoly_self_test", scope: !46, file: !46, line: 435, type: !483, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!960 = !DILocalVariable(name: "verbose", arg: 1, scope: !959, file: !46, line: 435, type: !149)
!961 = !DILocation(line: 0, scope: !959)
!962 = !DILocalVariable(name: "ctx", scope: !959, file: !46, line: 437, type: !549)
!963 = !DILocation(line: 437, column: 32, scope: !959)
!964 = !DILocalVariable(name: "ret", scope: !959, file: !46, line: 439, type: !149)
!965 = !DILocalVariable(name: "output", scope: !959, file: !46, line: 440, type: !966)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1600, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 200)
!969 = !DILocation(line: 440, column: 19, scope: !959)
!970 = !DILocalVariable(name: "mac", scope: !959, file: !46, line: 441, type: !792)
!971 = !DILocation(line: 441, column: 19, scope: !959)
!972 = !DILocalVariable(name: "i", scope: !959, file: !46, line: 438, type: !11)
!973 = !DILocation(line: 443, column: 10, scope: !974)
!974 = distinct !DILexicalBlock(scope: !959, file: !46, line: 443, column: 5)
!975 = !DILocation(line: 0, scope: !974)
!976 = !DILocation(line: 443, column: 20, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !46, line: 443, column: 5)
!978 = !DILocation(line: 443, column: 5, scope: !974)
!979 = !DILocation(line: 445, column: 21, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !46, line: 445, column: 13)
!981 = distinct !DILexicalBlock(scope: !977, file: !46, line: 444, column: 5)
!982 = !DILocation(line: 445, column: 13, scope: !981)
!983 = !DILocation(line: 446, column: 13, scope: !980)
!984 = !DILocation(line: 448, column: 9, scope: !981)
!985 = !DILocation(line: 450, column: 48, scope: !981)
!986 = !DILocation(line: 450, column: 15, scope: !981)
!987 = !DILocation(line: 451, column: 9, scope: !981)
!988 = !DILocation(line: 451, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !46, line: 451, column: 9)
!990 = distinct !DILexicalBlock(scope: !981, file: !46, line: 451, column: 9)
!991 = !DILocation(line: 451, column: 9, scope: !990)
!992 = !DILocation(line: 451, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !46, line: 451, column: 9)
!994 = distinct !DILexicalBlock(scope: !989, file: !46, line: 451, column: 9)
!995 = !DILocation(line: 451, column: 9, scope: !994)
!996 = !DILocation(line: 454, column: 51, scope: !981)
!997 = !DILocation(line: 455, column: 51, scope: !981)
!998 = !DILocation(line: 456, column: 51, scope: !981)
!999 = !DILocation(line: 457, column: 51, scope: !981)
!1000 = !DILocation(line: 458, column: 51, scope: !981)
!1001 = !DILocation(line: 459, column: 51, scope: !981)
!1002 = !DILocation(line: 460, column: 51, scope: !981)
!1003 = !DILocation(line: 453, column: 15, scope: !981)
!1004 = !DILocation(line: 462, column: 9, scope: !981)
!1005 = !DILocation(line: 462, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !46, line: 462, column: 9)
!1007 = distinct !DILexicalBlock(scope: !981, file: !46, line: 462, column: 9)
!1008 = !DILocation(line: 462, column: 9, scope: !1007)
!1009 = !DILocation(line: 462, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !46, line: 462, column: 9)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !46, line: 462, column: 9)
!1012 = !DILocation(line: 462, column: 9, scope: !1011)
!1013 = !DILocation(line: 464, column: 9, scope: !981)
!1014 = !DILocation(line: 464, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !46, line: 464, column: 9)
!1016 = distinct !DILexicalBlock(scope: !981, file: !46, line: 464, column: 9)
!1017 = !DILocation(line: 464, column: 9, scope: !1016)
!1018 = !DILocation(line: 464, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !46, line: 464, column: 9)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !46, line: 464, column: 9)
!1021 = !DILocation(line: 464, column: 9, scope: !1020)
!1022 = !DILocation(line: 467, column: 9, scope: !981)
!1023 = !DILocation(line: 467, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !46, line: 467, column: 9)
!1025 = distinct !DILexicalBlock(scope: !981, file: !46, line: 467, column: 9)
!1026 = !DILocation(line: 467, column: 9, scope: !1025)
!1027 = !DILocation(line: 467, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !46, line: 467, column: 9)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !46, line: 467, column: 9)
!1030 = !DILocation(line: 467, column: 9, scope: !1029)
!1031 = !DILocation(line: 470, column: 9, scope: !981)
!1032 = !DILocation(line: 472, column: 21, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !981, file: !46, line: 472, column: 13)
!1034 = !DILocation(line: 472, column: 13, scope: !981)
!1035 = !DILocation(line: 473, column: 13, scope: !1033)
!1036 = !DILocation(line: 474, column: 5, scope: !981)
!1037 = !DILocation(line: 443, column: 27, scope: !977)
!1038 = !DILocation(line: 443, column: 5, scope: !977)
!1039 = distinct !{!1039, !978, !1040, !256}
!1040 = !DILocation(line: 474, column: 5, scope: !974)
!1041 = !DILocation(line: 476, column: 17, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !959, file: !46, line: 476, column: 9)
!1043 = !DILocation(line: 476, column: 9, scope: !959)
!1044 = !DILocation(line: 477, column: 9, scope: !1042)
!1045 = !DILocation(line: 479, column: 5, scope: !959)
!1046 = !DILocation(line: 480, column: 1, scope: !959)
!1047 = distinct !DISubprogram(name: "mbedtls_platform_zeroize", scope: !101, file: !101, line: 67, type: !1048, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !6, !30}
!1050 = !DILocalVariable(name: "buf", arg: 1, scope: !1047, file: !101, line: 67, type: !6)
!1051 = !DILocation(line: 0, scope: !1047)
!1052 = !DILocalVariable(name: "len", arg: 2, scope: !1047, file: !101, line: 67, type: !30)
!1053 = !DILocation(line: 69, column: 5, scope: !1047)
!1054 = !DILocation(line: 69, column: 5, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !101, line: 69, column: 5)
!1056 = !DILocation(line: 71, column: 13, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1047, file: !101, line: 71, column: 9)
!1058 = !DILocation(line: 71, column: 9, scope: !1047)
!1059 = !DILocation(line: 72, column: 9, scope: !1057)
!1060 = !DILocation(line: 75, column: 1, scope: !1047)
!1061 = distinct !DISubprogram(name: "mbedtls_platform_gmtime_r", scope: !101, file: !101, line: 107, type: !1062, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1064, !1083, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1066, line: 7, size: 448, elements: !1067)
!1066 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1079}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1065, file: !1066, line: 9, baseType: !149, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1065, file: !1066, line: 10, baseType: !149, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1065, file: !1066, line: 11, baseType: !149, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1065, file: !1066, line: 12, baseType: !149, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1065, file: !1066, line: 13, baseType: !149, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1065, file: !1066, line: 14, baseType: !149, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1065, file: !1066, line: 15, baseType: !149, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1065, file: !1066, line: 16, baseType: !149, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1065, file: !1066, line: 17, baseType: !149, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !1065, file: !1066, line: 23, baseType: !1078, size: 64, offset: 320)
!1078 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !1065, file: !1066, line: 24, baseType: !1080, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_time_t", file: !1086, line: 39, baseType: !1087)
!1086 = !DIFile(filename: "../mbedtls/include/mbedtls/platform_time.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1088, line: 7, baseType: !1089)
!1088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !1078)
!1090 = !DILocalVariable(name: "tt", arg: 1, scope: !1061, file: !101, line: 107, type: !1083)
!1091 = !DILocation(line: 0, scope: !1061)
!1092 = !DILocalVariable(name: "tm_buf", arg: 2, scope: !1061, file: !101, line: 108, type: !1064)
!1093 = !DILocation(line: 118, column: 13, scope: !1061)
!1094 = !DILocation(line: 118, column: 5, scope: !1061)
!1095 = distinct !DISubprogram(name: "mbedtls_xor", scope: !1096, file: !1096, line: 123, type: !1097, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1096 = !DIFile(filename: "../mbedtls/library/common.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !230, !150, !150, !30}
!1099 = !DILocalVariable(name: "r", arg: 1, scope: !1095, file: !1096, line: 123, type: !230)
!1100 = !DILocation(line: 0, scope: !1095)
!1101 = !DILocalVariable(name: "a", arg: 2, scope: !1095, file: !1096, line: 123, type: !150)
!1102 = !DILocalVariable(name: "b", arg: 3, scope: !1095, file: !1096, line: 123, type: !150)
!1103 = !DILocalVariable(name: "n", arg: 4, scope: !1095, file: !1096, line: 123, type: !30)
!1104 = !DILocalVariable(name: "i", scope: !1095, file: !1096, line: 125, type: !30)
!1105 = !DILocation(line: 126, column: 11, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1095, file: !1096, line: 126, column: 5)
!1107 = !DILocation(line: 0, scope: !1106)
!1108 = !DILocation(line: 126, column: 22, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !1096, line: 126, column: 5)
!1110 = !DILocation(line: 126, column: 28, scope: !1109)
!1111 = !DILocation(line: 126, column: 5, scope: !1106)
!1112 = !DILocation(line: 128, column: 54, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !1096, line: 127, column: 5)
!1114 = !DILocation(line: 128, column: 22, scope: !1113)
!1115 = !DILocation(line: 128, column: 94, scope: !1113)
!1116 = !DILocation(line: 128, column: 62, scope: !1113)
!1117 = !DILocation(line: 128, column: 60, scope: !1113)
!1118 = !DILocalVariable(name: "x", scope: !1113, file: !1096, line: 128, type: !7)
!1119 = !DILocation(line: 0, scope: !1113)
!1120 = !DILocation(line: 129, column: 41, scope: !1113)
!1121 = !DILocation(line: 129, column: 9, scope: !1113)
!1122 = !DILocation(line: 130, column: 5, scope: !1113)
!1123 = !DILocation(line: 126, column: 36, scope: !1109)
!1124 = !DILocation(line: 126, column: 5, scope: !1109)
!1125 = distinct !{!1125, !1111, !1126, !256}
!1126 = !DILocation(line: 130, column: 5, scope: !1106)
!1127 = !DILocation(line: 131, column: 5, scope: !1095)
!1128 = !DILocation(line: 131, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !1096, line: 131, column: 5)
!1130 = distinct !DILexicalBlock(scope: !1095, file: !1096, line: 131, column: 5)
!1131 = !DILocation(line: 131, column: 5, scope: !1130)
!1132 = !DILocation(line: 133, column: 16, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !1096, line: 132, column: 5)
!1134 = !DILocation(line: 133, column: 23, scope: !1133)
!1135 = !DILocation(line: 133, column: 21, scope: !1133)
!1136 = !DILocation(line: 133, column: 9, scope: !1133)
!1137 = !DILocation(line: 133, column: 14, scope: !1133)
!1138 = !DILocation(line: 134, column: 5, scope: !1133)
!1139 = !DILocation(line: 131, column: 21, scope: !1129)
!1140 = !DILocation(line: 131, column: 5, scope: !1129)
!1141 = distinct !{!1141, !1131, !1142, !256}
!1142 = !DILocation(line: 134, column: 5, scope: !1130)
!1143 = !DILocation(line: 135, column: 1, scope: !1095)
!1144 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint32", scope: !1145, file: !1145, line: 65, type: !1146, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1145 = !DIFile(filename: "../mbedtls/library/alignment.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!7, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1150 = !DILocalVariable(name: "p", arg: 1, scope: !1144, file: !1145, line: 65, type: !1148)
!1151 = !DILocation(line: 0, scope: !1144)
!1152 = !DILocalVariable(name: "r", scope: !1144, file: !1145, line: 67, type: !7)
!1153 = !DILocation(line: 67, column: 14, scope: !1144)
!1154 = !DILocation(line: 68, column: 5, scope: !1144)
!1155 = !DILocation(line: 69, column: 12, scope: !1144)
!1156 = !DILocation(line: 69, column: 5, scope: !1144)
!1157 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint32", scope: !1145, file: !1145, line: 79, type: !1158, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !6, !7}
!1160 = !DILocalVariable(name: "p", arg: 1, scope: !1157, file: !1145, line: 79, type: !6)
!1161 = !DILocation(line: 0, scope: !1157)
!1162 = !DILocalVariable(name: "x", arg: 2, scope: !1157, file: !1145, line: 79, type: !7)
!1163 = !DILocation(line: 79, column: 61, scope: !1157)
!1164 = !DILocation(line: 81, column: 5, scope: !1157)
!1165 = !DILocation(line: 82, column: 1, scope: !1157)
!1166 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint16", scope: !1145, file: !1145, line: 39, type: !1167, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1169, !1148}
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 25, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 40, baseType: !1171)
!1171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1172 = !DILocalVariable(name: "p", arg: 1, scope: !1166, file: !1145, line: 39, type: !1148)
!1173 = !DILocation(line: 0, scope: !1166)
!1174 = !DILocalVariable(name: "r", scope: !1166, file: !1145, line: 41, type: !1169)
!1175 = !DILocation(line: 41, column: 14, scope: !1166)
!1176 = !DILocation(line: 42, column: 5, scope: !1166)
!1177 = !DILocation(line: 43, column: 12, scope: !1166)
!1178 = !DILocation(line: 43, column: 5, scope: !1166)
!1179 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint16", scope: !1145, file: !1145, line: 53, type: !1180, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !6, !1169}
!1182 = !DILocalVariable(name: "p", arg: 1, scope: !1179, file: !1145, line: 53, type: !6)
!1183 = !DILocation(line: 0, scope: !1179)
!1184 = !DILocalVariable(name: "x", arg: 2, scope: !1179, file: !1145, line: 53, type: !1169)
!1185 = !DILocation(line: 53, column: 61, scope: !1179)
!1186 = !DILocation(line: 55, column: 5, scope: !1179)
!1187 = !DILocation(line: 56, column: 1, scope: !1179)
!1188 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint64", scope: !1145, file: !1145, line: 91, type: !1189, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!54, !1148}
!1191 = !DILocalVariable(name: "p", arg: 1, scope: !1188, file: !1145, line: 91, type: !1148)
!1192 = !DILocation(line: 0, scope: !1188)
!1193 = !DILocalVariable(name: "r", scope: !1188, file: !1145, line: 93, type: !54)
!1194 = !DILocation(line: 93, column: 14, scope: !1188)
!1195 = !DILocation(line: 94, column: 5, scope: !1188)
!1196 = !DILocation(line: 95, column: 12, scope: !1188)
!1197 = !DILocation(line: 95, column: 5, scope: !1188)
!1198 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint64", scope: !1145, file: !1145, line: 105, type: !1199, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !6, !54}
!1201 = !DILocalVariable(name: "p", arg: 1, scope: !1198, file: !1145, line: 105, type: !6)
!1202 = !DILocation(line: 0, scope: !1198)
!1203 = !DILocalVariable(name: "x", arg: 2, scope: !1198, file: !1145, line: 105, type: !54)
!1204 = !DILocation(line: 105, column: 61, scope: !1198)
!1205 = !DILocation(line: 107, column: 5, scope: !1198)
!1206 = !DILocation(line: 108, column: 1, scope: !1198)
!1207 = distinct !DISubprogram(name: "mbedtls_poly1305_init", scope: !87, file: !87, line: 241, type: !1208, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_poly1305_context", file: !561, line: 58, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_poly1305_context", file: !561, line: 50, size: 640, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1212, file: !561, line: 52, baseType: !565, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1212, file: !561, line: 53, baseType: !565, size: 128, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !1212, file: !561, line: 54, baseType: !570, size: 160, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1212, file: !561, line: 55, baseType: !574, size: 128, offset: 416)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "queue_len", scope: !1212, file: !561, line: 56, baseType: !30, size: 64, offset: 576)
!1219 = !DILocalVariable(name: "ctx", arg: 1, scope: !1207, file: !87, line: 241, type: !1210)
!1220 = !DILocation(line: 0, scope: !1207)
!1221 = !DILocation(line: 243, column: 31, scope: !1207)
!1222 = !DILocation(line: 243, column: 5, scope: !1207)
!1223 = !DILocation(line: 244, column: 1, scope: !1207)
!1224 = distinct !DISubprogram(name: "mbedtls_poly1305_free", scope: !87, file: !87, line: 246, type: !1208, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1225 = !DILocalVariable(name: "ctx", arg: 1, scope: !1224, file: !87, line: 246, type: !1210)
!1226 = !DILocation(line: 0, scope: !1224)
!1227 = !DILocation(line: 248, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !87, line: 248, column: 9)
!1229 = !DILocation(line: 248, column: 9, scope: !1224)
!1230 = !DILocation(line: 249, column: 9, scope: !1228)
!1231 = !DILocation(line: 251, column: 31, scope: !1224)
!1232 = !DILocation(line: 251, column: 5, scope: !1224)
!1233 = !DILocation(line: 252, column: 1, scope: !1224)
!1234 = distinct !DISubprogram(name: "mbedtls_poly1305_starts", scope: !87, file: !87, line: 254, type: !1235, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!149, !1210, !150}
!1237 = !DILocalVariable(name: "ctx", arg: 1, scope: !1234, file: !87, line: 254, type: !1210)
!1238 = !DILocation(line: 0, scope: !1234)
!1239 = !DILocalVariable(name: "key", arg: 2, scope: !1234, file: !87, line: 255, type: !150)
!1240 = !DILocation(line: 258, column: 17, scope: !1234)
!1241 = !DILocation(line: 258, column: 50, scope: !1234)
!1242 = !DILocation(line: 258, column: 10, scope: !1234)
!1243 = !DILocation(line: 258, column: 5, scope: !1234)
!1244 = !DILocation(line: 258, column: 15, scope: !1234)
!1245 = !DILocation(line: 259, column: 17, scope: !1234)
!1246 = !DILocation(line: 259, column: 50, scope: !1234)
!1247 = !DILocation(line: 259, column: 10, scope: !1234)
!1248 = !DILocation(line: 259, column: 5, scope: !1234)
!1249 = !DILocation(line: 259, column: 15, scope: !1234)
!1250 = !DILocation(line: 260, column: 17, scope: !1234)
!1251 = !DILocation(line: 260, column: 50, scope: !1234)
!1252 = !DILocation(line: 260, column: 10, scope: !1234)
!1253 = !DILocation(line: 260, column: 5, scope: !1234)
!1254 = !DILocation(line: 260, column: 15, scope: !1234)
!1255 = !DILocation(line: 261, column: 17, scope: !1234)
!1256 = !DILocation(line: 261, column: 50, scope: !1234)
!1257 = !DILocation(line: 261, column: 10, scope: !1234)
!1258 = !DILocation(line: 261, column: 5, scope: !1234)
!1259 = !DILocation(line: 261, column: 15, scope: !1234)
!1260 = !DILocation(line: 263, column: 17, scope: !1234)
!1261 = !DILocation(line: 263, column: 10, scope: !1234)
!1262 = !DILocation(line: 263, column: 5, scope: !1234)
!1263 = !DILocation(line: 263, column: 15, scope: !1234)
!1264 = !DILocation(line: 264, column: 17, scope: !1234)
!1265 = !DILocation(line: 264, column: 10, scope: !1234)
!1266 = !DILocation(line: 264, column: 5, scope: !1234)
!1267 = !DILocation(line: 264, column: 15, scope: !1234)
!1268 = !DILocation(line: 265, column: 17, scope: !1234)
!1269 = !DILocation(line: 265, column: 10, scope: !1234)
!1270 = !DILocation(line: 265, column: 5, scope: !1234)
!1271 = !DILocation(line: 265, column: 15, scope: !1234)
!1272 = !DILocation(line: 266, column: 17, scope: !1234)
!1273 = !DILocation(line: 266, column: 10, scope: !1234)
!1274 = !DILocation(line: 266, column: 5, scope: !1234)
!1275 = !DILocation(line: 266, column: 15, scope: !1234)
!1276 = !DILocation(line: 269, column: 10, scope: !1234)
!1277 = !DILocation(line: 269, column: 5, scope: !1234)
!1278 = !DILocation(line: 269, column: 17, scope: !1234)
!1279 = !DILocation(line: 270, column: 10, scope: !1234)
!1280 = !DILocation(line: 270, column: 5, scope: !1234)
!1281 = !DILocation(line: 270, column: 17, scope: !1234)
!1282 = !DILocation(line: 271, column: 10, scope: !1234)
!1283 = !DILocation(line: 271, column: 5, scope: !1234)
!1284 = !DILocation(line: 271, column: 17, scope: !1234)
!1285 = !DILocation(line: 272, column: 10, scope: !1234)
!1286 = !DILocation(line: 272, column: 5, scope: !1234)
!1287 = !DILocation(line: 272, column: 17, scope: !1234)
!1288 = !DILocation(line: 273, column: 10, scope: !1234)
!1289 = !DILocation(line: 273, column: 5, scope: !1234)
!1290 = !DILocation(line: 273, column: 17, scope: !1234)
!1291 = !DILocation(line: 276, column: 36, scope: !1234)
!1292 = !DILocation(line: 276, column: 31, scope: !1234)
!1293 = !DILocation(line: 276, column: 5, scope: !1234)
!1294 = !DILocation(line: 277, column: 10, scope: !1234)
!1295 = !DILocation(line: 277, column: 20, scope: !1234)
!1296 = !DILocation(line: 279, column: 5, scope: !1234)
!1297 = distinct !DISubprogram(name: "mbedtls_poly1305_update", scope: !87, file: !87, line: 282, type: !1298, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!149, !1210, !150, !30}
!1300 = !DILocalVariable(name: "ctx", arg: 1, scope: !1297, file: !87, line: 282, type: !1210)
!1301 = !DILocation(line: 0, scope: !1297)
!1302 = !DILocalVariable(name: "input", arg: 2, scope: !1297, file: !87, line: 283, type: !150)
!1303 = !DILocalVariable(name: "ilen", arg: 3, scope: !1297, file: !87, line: 284, type: !30)
!1304 = !DILocalVariable(name: "offset", scope: !1297, file: !87, line: 286, type: !30)
!1305 = !DILocalVariable(name: "remaining", scope: !1297, file: !87, line: 287, type: !30)
!1306 = !DILocation(line: 291, column: 21, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !87, line: 291, column: 9)
!1308 = !DILocation(line: 291, column: 28, scope: !1307)
!1309 = !DILocation(line: 291, column: 38, scope: !1307)
!1310 = !DILocation(line: 291, column: 48, scope: !1307)
!1311 = !DILocation(line: 291, column: 9, scope: !1297)
!1312 = !DILocation(line: 293, column: 61, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !87, line: 292, column: 5)
!1314 = !DILocation(line: 293, column: 54, scope: !1313)
!1315 = !DILocalVariable(name: "queue_free_len", scope: !1297, file: !87, line: 288, type: !30)
!1316 = !DILocation(line: 295, column: 18, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !87, line: 295, column: 13)
!1318 = !DILocation(line: 295, column: 13, scope: !1313)
!1319 = !DILocation(line: 300, column: 27, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !87, line: 296, column: 9)
!1321 = !DILocation(line: 300, column: 38, scope: !1320)
!1322 = !DILocation(line: 300, column: 22, scope: !1320)
!1323 = !DILocation(line: 300, column: 13, scope: !1320)
!1324 = !DILocation(line: 304, column: 18, scope: !1320)
!1325 = !DILocation(line: 304, column: 28, scope: !1320)
!1326 = !DILocation(line: 307, column: 9, scope: !1320)
!1327 = !DILocation(line: 311, column: 27, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1317, file: !87, line: 309, column: 9)
!1329 = !DILocation(line: 311, column: 38, scope: !1328)
!1330 = !DILocation(line: 311, column: 22, scope: !1328)
!1331 = !DILocation(line: 311, column: 13, scope: !1328)
!1332 = !DILocation(line: 315, column: 18, scope: !1328)
!1333 = !DILocation(line: 315, column: 28, scope: !1328)
!1334 = !DILocation(line: 317, column: 45, scope: !1328)
!1335 = !DILocation(line: 317, column: 40, scope: !1328)
!1336 = !DILocation(line: 317, column: 13, scope: !1328)
!1337 = !DILocation(line: 319, column: 23, scope: !1328)
!1338 = !DILocation(line: 320, column: 23, scope: !1328)
!1339 = !DILocation(line: 0, scope: !1317)
!1340 = !DILocation(line: 322, column: 5, scope: !1313)
!1341 = !DILocation(line: 286, column: 12, scope: !1297)
!1342 = !DILocation(line: 324, column: 19, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1297, file: !87, line: 324, column: 9)
!1344 = !DILocation(line: 324, column: 9, scope: !1297)
!1345 = !DILocation(line: 326, column: 29, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !87, line: 325, column: 5)
!1347 = !DILocalVariable(name: "nblocks", scope: !1297, file: !87, line: 289, type: !30)
!1348 = !DILocation(line: 328, column: 42, scope: !1346)
!1349 = !DILocation(line: 328, column: 9, scope: !1346)
!1350 = !DILocation(line: 330, column: 27, scope: !1346)
!1351 = !DILocation(line: 330, column: 16, scope: !1346)
!1352 = !DILocation(line: 331, column: 19, scope: !1346)
!1353 = !DILocation(line: 332, column: 5, scope: !1346)
!1354 = !DILocation(line: 334, column: 19, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1297, file: !87, line: 334, column: 9)
!1356 = !DILocation(line: 334, column: 9, scope: !1297)
!1357 = !DILocation(line: 337, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !87, line: 335, column: 5)
!1359 = !DILocation(line: 337, column: 24, scope: !1358)
!1360 = !DILocation(line: 338, column: 22, scope: !1358)
!1361 = !DILocation(line: 338, column: 9, scope: !1358)
!1362 = !DILocation(line: 338, column: 30, scope: !1358)
!1363 = !DILocation(line: 339, column: 5, scope: !1358)
!1364 = !DILocation(line: 341, column: 5, scope: !1297)
!1365 = distinct !DISubprogram(name: "poly1305_process", scope: !87, file: !87, line: 76, type: !1366, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1210, !30, !150, !7}
!1368 = !DILocalVariable(name: "ctx", arg: 1, scope: !1365, file: !87, line: 76, type: !1210)
!1369 = !DILocation(line: 0, scope: !1365)
!1370 = !DILocalVariable(name: "nblocks", arg: 2, scope: !1365, file: !87, line: 77, type: !30)
!1371 = !DILocalVariable(name: "input", arg: 3, scope: !1365, file: !87, line: 78, type: !150)
!1372 = !DILocalVariable(name: "needs_padding", arg: 4, scope: !1365, file: !87, line: 79, type: !7)
!1373 = !DILocalVariable(name: "offset", scope: !1365, file: !87, line: 85, type: !30)
!1374 = !DILocation(line: 88, column: 15, scope: !1365)
!1375 = !DILocation(line: 88, column: 10, scope: !1365)
!1376 = !DILocalVariable(name: "r0", scope: !1365, file: !87, line: 83, type: !7)
!1377 = !DILocation(line: 89, column: 15, scope: !1365)
!1378 = !DILocation(line: 89, column: 10, scope: !1365)
!1379 = !DILocalVariable(name: "r1", scope: !1365, file: !87, line: 83, type: !7)
!1380 = !DILocation(line: 90, column: 15, scope: !1365)
!1381 = !DILocation(line: 90, column: 10, scope: !1365)
!1382 = !DILocalVariable(name: "r2", scope: !1365, file: !87, line: 83, type: !7)
!1383 = !DILocation(line: 91, column: 15, scope: !1365)
!1384 = !DILocation(line: 91, column: 10, scope: !1365)
!1385 = !DILocalVariable(name: "r3", scope: !1365, file: !87, line: 83, type: !7)
!1386 = !DILocation(line: 93, column: 21, scope: !1365)
!1387 = !DILocation(line: 93, column: 14, scope: !1365)
!1388 = !DILocalVariable(name: "rs1", scope: !1365, file: !87, line: 84, type: !7)
!1389 = !DILocation(line: 94, column: 21, scope: !1365)
!1390 = !DILocation(line: 94, column: 14, scope: !1365)
!1391 = !DILocalVariable(name: "rs2", scope: !1365, file: !87, line: 84, type: !7)
!1392 = !DILocation(line: 95, column: 21, scope: !1365)
!1393 = !DILocation(line: 95, column: 14, scope: !1365)
!1394 = !DILocalVariable(name: "rs3", scope: !1365, file: !87, line: 84, type: !7)
!1395 = !DILocation(line: 97, column: 17, scope: !1365)
!1396 = !DILocation(line: 97, column: 12, scope: !1365)
!1397 = !DILocalVariable(name: "acc0", scope: !1365, file: !87, line: 82, type: !7)
!1398 = !DILocation(line: 98, column: 17, scope: !1365)
!1399 = !DILocation(line: 98, column: 12, scope: !1365)
!1400 = !DILocalVariable(name: "acc1", scope: !1365, file: !87, line: 82, type: !7)
!1401 = !DILocation(line: 99, column: 17, scope: !1365)
!1402 = !DILocation(line: 99, column: 12, scope: !1365)
!1403 = !DILocalVariable(name: "acc2", scope: !1365, file: !87, line: 82, type: !7)
!1404 = !DILocation(line: 100, column: 17, scope: !1365)
!1405 = !DILocation(line: 100, column: 12, scope: !1365)
!1406 = !DILocalVariable(name: "acc3", scope: !1365, file: !87, line: 82, type: !7)
!1407 = !DILocation(line: 101, column: 17, scope: !1365)
!1408 = !DILocation(line: 101, column: 12, scope: !1365)
!1409 = !DILocalVariable(name: "acc4", scope: !1365, file: !87, line: 82, type: !7)
!1410 = !DILocalVariable(name: "i", scope: !1365, file: !87, line: 86, type: !30)
!1411 = !DILocation(line: 104, column: 10, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1365, file: !87, line: 104, column: 5)
!1413 = !DILocation(line: 0, scope: !1412)
!1414 = !DILocation(line: 104, column: 20, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !87, line: 104, column: 5)
!1416 = !DILocation(line: 104, column: 5, scope: !1412)
!1417 = !DILocation(line: 107, column: 16, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !87, line: 105, column: 5)
!1419 = !DILocalVariable(name: "d0", scope: !1365, file: !87, line: 81, type: !54)
!1420 = !DILocation(line: 108, column: 16, scope: !1418)
!1421 = !DILocalVariable(name: "d1", scope: !1365, file: !87, line: 81, type: !54)
!1422 = !DILocation(line: 109, column: 16, scope: !1418)
!1423 = !DILocalVariable(name: "d2", scope: !1365, file: !87, line: 81, type: !54)
!1424 = !DILocation(line: 110, column: 16, scope: !1418)
!1425 = !DILocalVariable(name: "d3", scope: !1365, file: !87, line: 81, type: !54)
!1426 = !DILocation(line: 113, column: 16, scope: !1418)
!1427 = !DILocation(line: 113, column: 13, scope: !1418)
!1428 = !DILocation(line: 114, column: 16, scope: !1418)
!1429 = !DILocation(line: 114, column: 39, scope: !1418)
!1430 = !DILocation(line: 114, column: 32, scope: !1418)
!1431 = !DILocation(line: 114, column: 13, scope: !1418)
!1432 = !DILocation(line: 115, column: 16, scope: !1418)
!1433 = !DILocation(line: 115, column: 39, scope: !1418)
!1434 = !DILocation(line: 115, column: 32, scope: !1418)
!1435 = !DILocation(line: 115, column: 13, scope: !1418)
!1436 = !DILocation(line: 116, column: 16, scope: !1418)
!1437 = !DILocation(line: 116, column: 39, scope: !1418)
!1438 = !DILocation(line: 116, column: 32, scope: !1418)
!1439 = !DILocation(line: 116, column: 13, scope: !1418)
!1440 = !DILocation(line: 117, column: 16, scope: !1418)
!1441 = !DILocation(line: 118, column: 16, scope: !1418)
!1442 = !DILocation(line: 119, column: 16, scope: !1418)
!1443 = !DILocation(line: 120, column: 16, scope: !1418)
!1444 = !DILocation(line: 121, column: 33, scope: !1418)
!1445 = !DILocation(line: 121, column: 17, scope: !1418)
!1446 = !DILocation(line: 121, column: 42, scope: !1418)
!1447 = !DILocation(line: 121, column: 14, scope: !1418)
!1448 = !DILocation(line: 124, column: 14, scope: !1418)
!1449 = !DILocation(line: 125, column: 14, scope: !1418)
!1450 = !DILocation(line: 124, column: 33, scope: !1418)
!1451 = !DILocation(line: 126, column: 14, scope: !1418)
!1452 = !DILocation(line: 125, column: 33, scope: !1418)
!1453 = !DILocation(line: 127, column: 14, scope: !1418)
!1454 = !DILocation(line: 126, column: 33, scope: !1418)
!1455 = !DILocation(line: 128, column: 14, scope: !1418)
!1456 = !DILocation(line: 129, column: 14, scope: !1418)
!1457 = !DILocation(line: 128, column: 33, scope: !1418)
!1458 = !DILocation(line: 130, column: 14, scope: !1418)
!1459 = !DILocation(line: 129, column: 33, scope: !1418)
!1460 = !DILocation(line: 131, column: 14, scope: !1418)
!1461 = !DILocation(line: 130, column: 33, scope: !1418)
!1462 = !DILocation(line: 132, column: 14, scope: !1418)
!1463 = !DILocation(line: 131, column: 33, scope: !1418)
!1464 = !DILocation(line: 133, column: 14, scope: !1418)
!1465 = !DILocation(line: 134, column: 14, scope: !1418)
!1466 = !DILocation(line: 133, column: 33, scope: !1418)
!1467 = !DILocation(line: 135, column: 14, scope: !1418)
!1468 = !DILocation(line: 134, column: 33, scope: !1418)
!1469 = !DILocation(line: 136, column: 14, scope: !1418)
!1470 = !DILocation(line: 135, column: 33, scope: !1418)
!1471 = !DILocation(line: 137, column: 14, scope: !1418)
!1472 = !DILocation(line: 136, column: 33, scope: !1418)
!1473 = !DILocation(line: 138, column: 14, scope: !1418)
!1474 = !DILocation(line: 139, column: 14, scope: !1418)
!1475 = !DILocation(line: 138, column: 33, scope: !1418)
!1476 = !DILocation(line: 140, column: 14, scope: !1418)
!1477 = !DILocation(line: 139, column: 33, scope: !1418)
!1478 = !DILocation(line: 141, column: 14, scope: !1418)
!1479 = !DILocation(line: 140, column: 33, scope: !1418)
!1480 = !DILocation(line: 142, column: 14, scope: !1418)
!1481 = !DILocation(line: 141, column: 33, scope: !1418)
!1482 = !DILocation(line: 143, column: 14, scope: !1418)
!1483 = !DILocation(line: 146, column: 20, scope: !1418)
!1484 = !DILocation(line: 146, column: 12, scope: !1418)
!1485 = !DILocation(line: 147, column: 20, scope: !1418)
!1486 = !DILocation(line: 147, column: 12, scope: !1418)
!1487 = !DILocation(line: 148, column: 20, scope: !1418)
!1488 = !DILocation(line: 148, column: 12, scope: !1418)
!1489 = !DILocation(line: 149, column: 16, scope: !1418)
!1490 = !DILocation(line: 150, column: 16, scope: !1418)
!1491 = !DILocation(line: 151, column: 16, scope: !1418)
!1492 = !DILocation(line: 152, column: 16, scope: !1418)
!1493 = !DILocation(line: 153, column: 32, scope: !1418)
!1494 = !DILocation(line: 153, column: 16, scope: !1418)
!1495 = !DILocation(line: 153, column: 40, scope: !1418)
!1496 = !DILocation(line: 155, column: 14, scope: !1418)
!1497 = !DILocation(line: 155, column: 39, scope: !1418)
!1498 = !DILocation(line: 155, column: 32, scope: !1418)
!1499 = !DILocation(line: 155, column: 30, scope: !1418)
!1500 = !DILocation(line: 155, column: 55, scope: !1418)
!1501 = !DILocation(line: 155, column: 48, scope: !1418)
!1502 = !DILocation(line: 155, column: 46, scope: !1418)
!1503 = !DILocation(line: 156, column: 14, scope: !1418)
!1504 = !DILocation(line: 157, column: 16, scope: !1418)
!1505 = !DILocation(line: 158, column: 14, scope: !1418)
!1506 = !DILocation(line: 158, column: 37, scope: !1418)
!1507 = !DILocation(line: 158, column: 30, scope: !1418)
!1508 = !DILocation(line: 159, column: 16, scope: !1418)
!1509 = !DILocation(line: 160, column: 14, scope: !1418)
!1510 = !DILocation(line: 160, column: 37, scope: !1418)
!1511 = !DILocation(line: 160, column: 30, scope: !1418)
!1512 = !DILocation(line: 161, column: 16, scope: !1418)
!1513 = !DILocation(line: 162, column: 14, scope: !1418)
!1514 = !DILocation(line: 162, column: 37, scope: !1418)
!1515 = !DILocation(line: 162, column: 30, scope: !1418)
!1516 = !DILocation(line: 163, column: 16, scope: !1418)
!1517 = !DILocation(line: 164, column: 14, scope: !1418)
!1518 = !DILocation(line: 164, column: 37, scope: !1418)
!1519 = !DILocation(line: 164, column: 30, scope: !1418)
!1520 = !DILocation(line: 165, column: 16, scope: !1418)
!1521 = !DILocation(line: 167, column: 19, scope: !1418)
!1522 = !DILocation(line: 168, column: 5, scope: !1418)
!1523 = !DILocation(line: 104, column: 32, scope: !1415)
!1524 = !DILocation(line: 104, column: 5, scope: !1415)
!1525 = distinct !{!1525, !1416, !1526, !256}
!1526 = !DILocation(line: 168, column: 5, scope: !1412)
!1527 = !DILocation(line: 170, column: 10, scope: !1365)
!1528 = !DILocation(line: 170, column: 5, scope: !1365)
!1529 = !DILocation(line: 170, column: 17, scope: !1365)
!1530 = !DILocation(line: 171, column: 10, scope: !1365)
!1531 = !DILocation(line: 171, column: 5, scope: !1365)
!1532 = !DILocation(line: 171, column: 17, scope: !1365)
!1533 = !DILocation(line: 172, column: 10, scope: !1365)
!1534 = !DILocation(line: 172, column: 5, scope: !1365)
!1535 = !DILocation(line: 172, column: 17, scope: !1365)
!1536 = !DILocation(line: 173, column: 10, scope: !1365)
!1537 = !DILocation(line: 173, column: 5, scope: !1365)
!1538 = !DILocation(line: 173, column: 17, scope: !1365)
!1539 = !DILocation(line: 174, column: 10, scope: !1365)
!1540 = !DILocation(line: 174, column: 5, scope: !1365)
!1541 = !DILocation(line: 174, column: 17, scope: !1365)
!1542 = !DILocation(line: 175, column: 1, scope: !1365)
!1543 = distinct !DISubprogram(name: "mul64", scope: !87, file: !87, line: 58, type: !1544, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!54, !7, !7}
!1546 = !DILocalVariable(name: "a", arg: 1, scope: !1543, file: !87, line: 58, type: !7)
!1547 = !DILocation(line: 0, scope: !1543)
!1548 = !DILocalVariable(name: "b", arg: 2, scope: !1543, file: !87, line: 58, type: !7)
!1549 = !DILocation(line: 60, column: 13, scope: !1543)
!1550 = !DILocation(line: 60, column: 28, scope: !1543)
!1551 = !DILocation(line: 60, column: 26, scope: !1543)
!1552 = !DILocation(line: 60, column: 5, scope: !1543)
!1553 = distinct !DISubprogram(name: "mbedtls_poly1305_finish", scope: !87, file: !87, line: 344, type: !1554, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!149, !1210, !230}
!1556 = !DILocalVariable(name: "ctx", arg: 1, scope: !1553, file: !87, line: 344, type: !1210)
!1557 = !DILocation(line: 0, scope: !1553)
!1558 = !DILocalVariable(name: "mac", arg: 2, scope: !1553, file: !87, line: 345, type: !230)
!1559 = !DILocation(line: 348, column: 14, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !87, line: 348, column: 9)
!1561 = !DILocation(line: 348, column: 24, scope: !1560)
!1562 = !DILocation(line: 348, column: 9, scope: !1553)
!1563 = !DILocation(line: 351, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !87, line: 349, column: 5)
!1565 = !DILocation(line: 351, column: 25, scope: !1564)
!1566 = !DILocation(line: 351, column: 9, scope: !1564)
!1567 = !DILocation(line: 351, column: 36, scope: !1564)
!1568 = !DILocation(line: 352, column: 14, scope: !1564)
!1569 = !DILocation(line: 352, column: 23, scope: !1564)
!1570 = !DILocation(line: 355, column: 23, scope: !1564)
!1571 = !DILocation(line: 355, column: 34, scope: !1564)
!1572 = !DILocation(line: 355, column: 18, scope: !1564)
!1573 = !DILocation(line: 357, column: 50, scope: !1564)
!1574 = !DILocation(line: 357, column: 43, scope: !1564)
!1575 = !DILocation(line: 355, column: 9, scope: !1564)
!1576 = !DILocation(line: 360, column: 32, scope: !1564)
!1577 = !DILocation(line: 360, column: 27, scope: !1564)
!1578 = !DILocation(line: 359, column: 9, scope: !1564)
!1579 = !DILocation(line: 361, column: 5, scope: !1564)
!1580 = !DILocation(line: 363, column: 5, scope: !1553)
!1581 = !DILocation(line: 365, column: 5, scope: !1553)
!1582 = distinct !DISubprogram(name: "poly1305_compute_mac", scope: !87, file: !87, line: 184, type: !1583, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1585, !230}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1587 = !DILocalVariable(name: "ctx", arg: 1, scope: !1582, file: !87, line: 184, type: !1585)
!1588 = !DILocation(line: 0, scope: !1582)
!1589 = !DILocalVariable(name: "mac", arg: 2, scope: !1582, file: !87, line: 185, type: !230)
!1590 = !DILocation(line: 193, column: 17, scope: !1582)
!1591 = !DILocation(line: 193, column: 12, scope: !1582)
!1592 = !DILocalVariable(name: "acc0", scope: !1582, file: !87, line: 189, type: !7)
!1593 = !DILocation(line: 194, column: 17, scope: !1582)
!1594 = !DILocation(line: 194, column: 12, scope: !1582)
!1595 = !DILocalVariable(name: "acc1", scope: !1582, file: !87, line: 189, type: !7)
!1596 = !DILocation(line: 195, column: 17, scope: !1582)
!1597 = !DILocation(line: 195, column: 12, scope: !1582)
!1598 = !DILocalVariable(name: "acc2", scope: !1582, file: !87, line: 189, type: !7)
!1599 = !DILocation(line: 196, column: 17, scope: !1582)
!1600 = !DILocation(line: 196, column: 12, scope: !1582)
!1601 = !DILocalVariable(name: "acc3", scope: !1582, file: !87, line: 189, type: !7)
!1602 = !DILocation(line: 197, column: 17, scope: !1582)
!1603 = !DILocation(line: 197, column: 12, scope: !1582)
!1604 = !DILocalVariable(name: "acc4", scope: !1582, file: !87, line: 189, type: !7)
!1605 = !DILocation(line: 205, column: 12, scope: !1582)
!1606 = !DILocation(line: 205, column: 28, scope: !1582)
!1607 = !DILocalVariable(name: "d", scope: !1582, file: !87, line: 187, type: !54)
!1608 = !DILocation(line: 206, column: 10, scope: !1582)
!1609 = !DILocalVariable(name: "g0", scope: !1582, file: !87, line: 188, type: !7)
!1610 = !DILocation(line: 207, column: 12, scope: !1582)
!1611 = !DILocation(line: 207, column: 34, scope: !1582)
!1612 = !DILocation(line: 207, column: 28, scope: !1582)
!1613 = !DILocation(line: 208, column: 10, scope: !1582)
!1614 = !DILocalVariable(name: "g1", scope: !1582, file: !87, line: 188, type: !7)
!1615 = !DILocation(line: 209, column: 12, scope: !1582)
!1616 = !DILocation(line: 209, column: 34, scope: !1582)
!1617 = !DILocation(line: 209, column: 28, scope: !1582)
!1618 = !DILocation(line: 210, column: 10, scope: !1582)
!1619 = !DILocalVariable(name: "g2", scope: !1582, file: !87, line: 188, type: !7)
!1620 = !DILocation(line: 211, column: 12, scope: !1582)
!1621 = !DILocation(line: 211, column: 34, scope: !1582)
!1622 = !DILocation(line: 211, column: 28, scope: !1582)
!1623 = !DILocation(line: 212, column: 10, scope: !1582)
!1624 = !DILocalVariable(name: "g3", scope: !1582, file: !87, line: 188, type: !7)
!1625 = !DILocation(line: 213, column: 32, scope: !1582)
!1626 = !DILocation(line: 213, column: 17, scope: !1582)
!1627 = !DILocation(line: 213, column: 15, scope: !1582)
!1628 = !DILocalVariable(name: "g4", scope: !1582, file: !87, line: 188, type: !7)
!1629 = !DILocation(line: 216, column: 33, scope: !1582)
!1630 = !DILocation(line: 216, column: 26, scope: !1582)
!1631 = !DILocalVariable(name: "mask", scope: !1582, file: !87, line: 190, type: !7)
!1632 = !DILocation(line: 217, column: 16, scope: !1582)
!1633 = !DILocalVariable(name: "mask_inv", scope: !1582, file: !87, line: 191, type: !7)
!1634 = !DILocation(line: 220, column: 19, scope: !1582)
!1635 = !DILocation(line: 220, column: 39, scope: !1582)
!1636 = !DILocation(line: 220, column: 32, scope: !1582)
!1637 = !DILocation(line: 221, column: 19, scope: !1582)
!1638 = !DILocation(line: 221, column: 39, scope: !1582)
!1639 = !DILocation(line: 221, column: 32, scope: !1582)
!1640 = !DILocation(line: 222, column: 19, scope: !1582)
!1641 = !DILocation(line: 222, column: 39, scope: !1582)
!1642 = !DILocation(line: 222, column: 32, scope: !1582)
!1643 = !DILocation(line: 223, column: 19, scope: !1582)
!1644 = !DILocation(line: 223, column: 39, scope: !1582)
!1645 = !DILocation(line: 223, column: 32, scope: !1582)
!1646 = !DILocation(line: 226, column: 9, scope: !1582)
!1647 = !DILocation(line: 226, column: 32, scope: !1582)
!1648 = !DILocation(line: 226, column: 27, scope: !1582)
!1649 = !DILocation(line: 226, column: 25, scope: !1582)
!1650 = !DILocation(line: 227, column: 12, scope: !1582)
!1651 = !DILocation(line: 228, column: 9, scope: !1582)
!1652 = !DILocation(line: 228, column: 32, scope: !1582)
!1653 = !DILocation(line: 228, column: 27, scope: !1582)
!1654 = !DILocation(line: 228, column: 25, scope: !1582)
!1655 = !DILocation(line: 228, column: 43, scope: !1582)
!1656 = !DILocation(line: 228, column: 37, scope: !1582)
!1657 = !DILocation(line: 229, column: 12, scope: !1582)
!1658 = !DILocation(line: 230, column: 9, scope: !1582)
!1659 = !DILocation(line: 230, column: 32, scope: !1582)
!1660 = !DILocation(line: 230, column: 27, scope: !1582)
!1661 = !DILocation(line: 230, column: 25, scope: !1582)
!1662 = !DILocation(line: 230, column: 43, scope: !1582)
!1663 = !DILocation(line: 230, column: 37, scope: !1582)
!1664 = !DILocation(line: 231, column: 12, scope: !1582)
!1665 = !DILocation(line: 232, column: 18, scope: !1582)
!1666 = !DILocation(line: 232, column: 13, scope: !1582)
!1667 = !DILocation(line: 232, column: 40, scope: !1582)
!1668 = !DILocation(line: 232, column: 25, scope: !1582)
!1669 = !DILocation(line: 232, column: 23, scope: !1582)
!1670 = !DILocation(line: 232, column: 10, scope: !1582)
!1671 = !DILocation(line: 235, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !87, line: 235, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !87, line: 235, column: 5)
!1674 = distinct !DILexicalBlock(scope: !1582, file: !87, line: 235, column: 5)
!1675 = !DILocation(line: 236, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !87, line: 236, column: 5)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !87, line: 236, column: 5)
!1678 = distinct !DILexicalBlock(scope: !1582, file: !87, line: 236, column: 5)
!1679 = !DILocation(line: 237, column: 5, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !87, line: 237, column: 5)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !87, line: 237, column: 5)
!1682 = distinct !DILexicalBlock(scope: !1582, file: !87, line: 237, column: 5)
!1683 = !DILocation(line: 238, column: 5, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !87, line: 238, column: 5)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !87, line: 238, column: 5)
!1686 = distinct !DILexicalBlock(scope: !1582, file: !87, line: 238, column: 5)
!1687 = !DILocation(line: 239, column: 1, scope: !1582)
!1688 = distinct !DISubprogram(name: "mbedtls_poly1305_mac", scope: !87, file: !87, line: 368, type: !1689, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!149, !150, !150, !30, !230}
!1691 = !DILocalVariable(name: "key", arg: 1, scope: !1688, file: !87, line: 368, type: !150)
!1692 = !DILocation(line: 0, scope: !1688)
!1693 = !DILocalVariable(name: "input", arg: 2, scope: !1688, file: !87, line: 369, type: !150)
!1694 = !DILocalVariable(name: "ilen", arg: 3, scope: !1688, file: !87, line: 370, type: !30)
!1695 = !DILocalVariable(name: "mac", arg: 4, scope: !1688, file: !87, line: 371, type: !230)
!1696 = !DILocalVariable(name: "ctx", scope: !1688, file: !87, line: 373, type: !1211)
!1697 = !DILocation(line: 373, column: 30, scope: !1688)
!1698 = !DILocalVariable(name: "ret", scope: !1688, file: !87, line: 374, type: !149)
!1699 = !DILocation(line: 376, column: 5, scope: !1688)
!1700 = !DILocation(line: 378, column: 11, scope: !1688)
!1701 = !DILocation(line: 379, column: 13, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1688, file: !87, line: 379, column: 9)
!1703 = !DILocation(line: 379, column: 9, scope: !1688)
!1704 = !DILocation(line: 380, column: 9, scope: !1702)
!1705 = !DILocation(line: 382, column: 11, scope: !1688)
!1706 = !DILocation(line: 383, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1688, file: !87, line: 383, column: 9)
!1708 = !DILocation(line: 383, column: 9, scope: !1688)
!1709 = !DILocation(line: 384, column: 9, scope: !1707)
!1710 = !DILocation(line: 386, column: 11, scope: !1688)
!1711 = !DILocation(line: 386, column: 5, scope: !1688)
!1712 = !DILabel(scope: !1688, name: "cleanup", file: !87, line: 388)
!1713 = !DILocation(line: 388, column: 1, scope: !1688)
!1714 = !DILocation(line: 389, column: 5, scope: !1688)
!1715 = !DILocation(line: 390, column: 5, scope: !1688)
!1716 = distinct !DISubprogram(name: "mbedtls_poly1305_self_test", scope: !87, file: !87, line: 476, type: !483, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1717 = !DILocalVariable(name: "verbose", arg: 1, scope: !1716, file: !87, line: 476, type: !149)
!1718 = !DILocation(line: 0, scope: !1716)
!1719 = !DILocalVariable(name: "mac", scope: !1716, file: !87, line: 478, type: !792)
!1720 = !DILocation(line: 478, column: 19, scope: !1716)
!1721 = !DILocalVariable(name: "ret", scope: !1716, file: !87, line: 480, type: !149)
!1722 = !DILocalVariable(name: "i", scope: !1716, file: !87, line: 479, type: !11)
!1723 = !DILocation(line: 482, column: 10, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1716, file: !87, line: 482, column: 5)
!1725 = !DILocation(line: 0, scope: !1724)
!1726 = !DILocation(line: 482, column: 20, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !87, line: 482, column: 5)
!1728 = !DILocation(line: 482, column: 5, scope: !1724)
!1729 = !DILocation(line: 484, column: 21, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !87, line: 484, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !87, line: 483, column: 5)
!1732 = !DILocation(line: 484, column: 13, scope: !1731)
!1733 = !DILocation(line: 485, column: 13, scope: !1730)
!1734 = !DILocation(line: 487, column: 37, scope: !1731)
!1735 = !DILocation(line: 488, column: 37, scope: !1731)
!1736 = !DILocation(line: 489, column: 37, scope: !1731)
!1737 = !DILocation(line: 490, column: 37, scope: !1731)
!1738 = !DILocation(line: 487, column: 15, scope: !1731)
!1739 = !DILocation(line: 491, column: 9, scope: !1731)
!1740 = !DILocation(line: 491, column: 9, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !87, line: 491, column: 9)
!1742 = distinct !DILexicalBlock(scope: !1731, file: !87, line: 491, column: 9)
!1743 = !DILocation(line: 491, column: 9, scope: !1742)
!1744 = !DILocation(line: 491, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !87, line: 491, column: 9)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !87, line: 491, column: 9)
!1747 = !DILocation(line: 491, column: 9, scope: !1746)
!1748 = !DILocation(line: 493, column: 9, scope: !1731)
!1749 = !DILocation(line: 493, column: 9, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !87, line: 493, column: 9)
!1751 = distinct !DILexicalBlock(scope: !1731, file: !87, line: 493, column: 9)
!1752 = !DILocation(line: 493, column: 9, scope: !1751)
!1753 = !DILocation(line: 493, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !87, line: 493, column: 9)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !87, line: 493, column: 9)
!1756 = !DILocation(line: 493, column: 9, scope: !1755)
!1757 = !DILocation(line: 495, column: 21, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1731, file: !87, line: 495, column: 13)
!1759 = !DILocation(line: 495, column: 13, scope: !1731)
!1760 = !DILocation(line: 496, column: 13, scope: !1758)
!1761 = !DILocation(line: 497, column: 5, scope: !1731)
!1762 = !DILocation(line: 482, column: 27, scope: !1727)
!1763 = !DILocation(line: 482, column: 5, scope: !1727)
!1764 = distinct !{!1764, !1728, !1765, !256}
!1765 = !DILocation(line: 497, column: 5, scope: !1724)
!1766 = !DILocation(line: 499, column: 17, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1716, file: !87, line: 499, column: 9)
!1768 = !DILocation(line: 499, column: 9, scope: !1716)
!1769 = !DILocation(line: 500, column: 9, scope: !1767)
!1770 = !DILocation(line: 502, column: 5, scope: !1716)
!1771 = !DILocation(line: 503, column: 1, scope: !1716)
