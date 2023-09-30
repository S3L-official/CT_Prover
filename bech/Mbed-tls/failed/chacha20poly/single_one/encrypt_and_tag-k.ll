; ModuleID = 'encrypt_and_tag.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }
%struct.smack_value = type { i8* }
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
@__const.encrypt_and_tag_wrapper_t.nonce = private unnamed_addr constant <{ i8, [11 x i8] }> <{ i8 115, [11 x i8] zeroinitializer }>, align 1
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
define dso_local void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noalias %0) #0 !dbg !108 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !126, metadata !DIExpression()), !dbg !127
  %2 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !128
  %3 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0, !dbg !129
  %4 = bitcast i32* %3 to i8*, !dbg !129
  call void @mbedtls_platform_zeroize(i8* %4, i64 64), !dbg !130
  %5 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !131
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !132
  call void @mbedtls_platform_zeroize(i8* %6, i64 64), !dbg !133
  %7 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !134
  store i64 64, i64* %7, align 8, !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noalias %0) #0 !dbg !137 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !138, metadata !DIExpression()), !dbg !139
  %2 = icmp ne %struct.mbedtls_chacha20_context* %0, null, !dbg !140
  br i1 %2, label %3, label %5, !dbg !142

3:                                                ; preds = %1
  %4 = bitcast %struct.mbedtls_chacha20_context* %0 to i8*, !dbg !143
  call void @mbedtls_platform_zeroize(i8* %4, i64 136), !dbg !145
  br label %5, !dbg !146

5:                                                ; preds = %3, %1
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noalias %0, i8* noalias %1) #0 !dbg !148 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %1, metadata !155, metadata !DIExpression()), !dbg !154
  %3 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !156
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !157
  store i32 1634760805, i32* %4, align 8, !dbg !158
  %5 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !159
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1, !dbg !160
  store i32 857760878, i32* %6, align 4, !dbg !161
  %7 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !162
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2, !dbg !163
  store i32 2036477234, i32* %8, align 8, !dbg !164
  %9 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !165
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3, !dbg !166
  store i32 1797285236, i32* %10, align 4, !dbg !167
  %11 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !168
  %12 = call i32 @mbedtls_get_unaligned_uint32(i8* %11), !dbg !168
  %13 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !169
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 4, !dbg !170
  store i32 %12, i32* %14, align 8, !dbg !171
  %15 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !172
  %16 = call i32 @mbedtls_get_unaligned_uint32(i8* %15), !dbg !172
  %17 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !173
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 5, !dbg !174
  store i32 %16, i32* %18, align 4, !dbg !175
  %19 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !176
  %20 = call i32 @mbedtls_get_unaligned_uint32(i8* %19), !dbg !176
  %21 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !177
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 6, !dbg !178
  store i32 %20, i32* %22, align 8, !dbg !179
  %23 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !180
  %24 = call i32 @mbedtls_get_unaligned_uint32(i8* %23), !dbg !180
  %25 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !181
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 7, !dbg !182
  store i32 %24, i32* %26, align 4, !dbg !183
  %27 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !184
  %28 = call i32 @mbedtls_get_unaligned_uint32(i8* %27), !dbg !184
  %29 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !185
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %29, i64 0, i64 8, !dbg !186
  store i32 %28, i32* %30, align 8, !dbg !187
  %31 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !188
  %32 = call i32 @mbedtls_get_unaligned_uint32(i8* %31), !dbg !188
  %33 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !189
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %33, i64 0, i64 9, !dbg !190
  store i32 %32, i32* %34, align 4, !dbg !191
  %35 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !192
  %36 = call i32 @mbedtls_get_unaligned_uint32(i8* %35), !dbg !192
  %37 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !193
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %37, i64 0, i64 10, !dbg !194
  store i32 %36, i32* %38, align 8, !dbg !195
  %39 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !196
  %40 = call i32 @mbedtls_get_unaligned_uint32(i8* %39), !dbg !196
  %41 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !197
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 0, i64 11, !dbg !198
  store i32 %40, i32* %42, align 4, !dbg !199
  ret i32 0, !dbg !200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noalias %0, i8* noalias %1, i32 %2) #0 !dbg !201 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i8* %1, metadata !206, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %2, metadata !207, metadata !DIExpression()), !dbg !205
  %4 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !208
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12, !dbg !209
  store i32 %2, i32* %5, align 8, !dbg !210
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !211
  %7 = call i32 @mbedtls_get_unaligned_uint32(i8* %6), !dbg !211
  %8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !212
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !213
  store i32 %7, i32* %9, align 4, !dbg !214
  %10 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !215
  %11 = call i32 @mbedtls_get_unaligned_uint32(i8* %10), !dbg !215
  %12 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !216
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 14, !dbg !217
  store i32 %11, i32* %13, align 8, !dbg !218
  %14 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !219
  %15 = call i32 @mbedtls_get_unaligned_uint32(i8* %14), !dbg !219
  %16 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !220
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 15, !dbg !221
  store i32 %15, i32* %17, align 4, !dbg !222
  %18 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !223
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0, !dbg !224
  call void @mbedtls_platform_zeroize(i8* %19, i64 64), !dbg !225
  %20 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !226
  store i64 64, i64* %20, align 8, !dbg !227
  ret i32 0, !dbg !228
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noalias %0, i64 %1, i8* noalias %2, i8* noalias %3) #0 !dbg !229 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chacha20_context* %0, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %1, metadata !235, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i8* %2, metadata !236, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i8* %3, metadata !237, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression()), !dbg !234
  br label %5, !dbg !239

5:                                                ; preds = %13, %4
  %.01 = phi i64 [ %1, %4 ], [ %30, %13 ]
  %.0 = phi i64 [ 0, %4 ], [ %29, %13 ], !dbg !234
  call void @llvm.dbg.value(metadata i64 %.0, metadata !238, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %.01, metadata !235, metadata !DIExpression()), !dbg !234
  %6 = icmp ugt i64 %.01, 0, !dbg !240
  br i1 %6, label %7, label %11, !dbg !241

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !242
  %9 = load i64, i64* %8, align 8, !dbg !242
  %10 = icmp ult i64 %9, 64, !dbg !243
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i1 [ false, %5 ], [ %10, %7 ], !dbg !234
  br i1 %12, label %13, label %31, !dbg !239

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !244
  %15 = load i8, i8* %14, align 1, !dbg !244
  %16 = zext i8 %15 to i32, !dbg !244
  %17 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !246
  %18 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !247
  %19 = load i64, i64* %18, align 8, !dbg !247
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 %19, !dbg !248
  %21 = load i8, i8* %20, align 1, !dbg !248
  %22 = zext i8 %21 to i32, !dbg !248
  %23 = xor i32 %16, %22, !dbg !249
  %24 = trunc i32 %23 to i8, !dbg !244
  %25 = getelementptr inbounds i8, i8* %3, i64 %.0, !dbg !250
  store i8 %24, i8* %25, align 1, !dbg !251
  %26 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !252
  %27 = load i64, i64* %26, align 8, !dbg !253
  %28 = add i64 %27, 1, !dbg !253
  store i64 %28, i64* %26, align 8, !dbg !253
  %29 = add i64 %.0, 1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %29, metadata !238, metadata !DIExpression()), !dbg !234
  %30 = add i64 %.01, -1, !dbg !255
  call void @llvm.dbg.value(metadata i64 %30, metadata !235, metadata !DIExpression()), !dbg !234
  br label %5, !dbg !239, !llvm.loop !256

31:                                               ; preds = %11
  br label %32, !dbg !259

32:                                               ; preds = %34, %31
  %.12 = phi i64 [ %.01, %31 ], [ %48, %34 ]
  %.1 = phi i64 [ %.0, %31 ], [ %47, %34 ], !dbg !234
  call void @llvm.dbg.value(metadata i64 %.1, metadata !238, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %.12, metadata !235, metadata !DIExpression()), !dbg !234
  %33 = icmp uge i64 %.12, 64, !dbg !260
  br i1 %33, label %34, label %49, !dbg !259

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !261
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %35, i64 0, i64 0, !dbg !263
  %37 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !264
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %37, i64 0, i64 0, !dbg !265
  call void @chacha20_block(i32* %36, i8* %38), !dbg !266
  %39 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !267
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 12, !dbg !268
  %41 = load i32, i32* %40, align 8, !dbg !269
  %42 = add i32 %41, 1, !dbg !269
  store i32 %42, i32* %40, align 8, !dbg !269
  %43 = getelementptr inbounds i8, i8* %3, i64 %.1, !dbg !270
  %44 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !271
  %45 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !272
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %45, i64 0, i64 0, !dbg !273
  call void @mbedtls_xor(i8* %43, i8* %44, i8* %46, i64 64), !dbg !274
  %47 = add i64 %.1, 64, !dbg !275
  call void @llvm.dbg.value(metadata i64 %47, metadata !238, metadata !DIExpression()), !dbg !234
  %48 = sub i64 %.12, 64, !dbg !276
  call void @llvm.dbg.value(metadata i64 %48, metadata !235, metadata !DIExpression()), !dbg !234
  br label %32, !dbg !259, !llvm.loop !277

49:                                               ; preds = %32
  %50 = icmp ugt i64 %.12, 0, !dbg !279
  br i1 %50, label %51, label %65, !dbg !281

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !282
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %52, i64 0, i64 0, !dbg !284
  %54 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !285
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %54, i64 0, i64 0, !dbg !286
  call void @chacha20_block(i32* %53, i8* %55), !dbg !287
  %56 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0, !dbg !288
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i64 0, i64 12, !dbg !289
  %58 = load i32, i32* %57, align 8, !dbg !290
  %59 = add i32 %58, 1, !dbg !290
  store i32 %59, i32* %57, align 8, !dbg !290
  %60 = getelementptr inbounds i8, i8* %3, i64 %.1, !dbg !291
  %61 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !292
  %62 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 1, !dbg !293
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %62, i64 0, i64 0, !dbg !294
  call void @mbedtls_xor(i8* %60, i8* %61, i8* %63, i64 %.12), !dbg !295
  %64 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 2, !dbg !296
  store i64 %.12, i64* %64, align 8, !dbg !297
  br label %65, !dbg !298

65:                                               ; preds = %51, %49
  ret i32 0, !dbg !299
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_block(i32* noalias %0, i8* noalias %1) #0 !dbg !300 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i8* %1, metadata !306, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata [16 x i32]* %3, metadata !307, metadata !DIExpression()), !dbg !308
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !309
  %5 = bitcast i32* %4 to i8*, !dbg !309
  %6 = bitcast i32* %0 to i8*, !dbg !309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 4 %6, i64 64, i1 false), !dbg !309
  call void @llvm.dbg.value(metadata i64 0, metadata !310, metadata !DIExpression()), !dbg !305
  br label %7, !dbg !311

7:                                                ; preds = %11, %2
  %.0 = phi i64 [ 0, %2 ], [ %12, %11 ], !dbg !313
  call void @llvm.dbg.value(metadata i64 %.0, metadata !310, metadata !DIExpression()), !dbg !305
  %8 = icmp ult i64 %.0, 10, !dbg !314
  br i1 %8, label %9, label %13, !dbg !316

9:                                                ; preds = %7
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !317
  call void @chacha20_inner_block(i32* %10), !dbg !318
  br label %11, !dbg !318

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !319
  call void @llvm.dbg.value(metadata i64 %12, metadata !310, metadata !DIExpression()), !dbg !305
  br label %7, !dbg !320, !llvm.loop !321

13:                                               ; preds = %7
  %14 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !323
  %15 = load i32, i32* %14, align 4, !dbg !323
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !324
  %17 = load i32, i32* %16, align 16, !dbg !325
  %18 = add i32 %17, %15, !dbg !325
  store i32 %18, i32* %16, align 16, !dbg !325
  %19 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !326
  %20 = load i32, i32* %19, align 4, !dbg !326
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1, !dbg !327
  %22 = load i32, i32* %21, align 4, !dbg !328
  %23 = add i32 %22, %20, !dbg !328
  store i32 %23, i32* %21, align 4, !dbg !328
  %24 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !329
  %25 = load i32, i32* %24, align 4, !dbg !329
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2, !dbg !330
  %27 = load i32, i32* %26, align 8, !dbg !331
  %28 = add i32 %27, %25, !dbg !331
  store i32 %28, i32* %26, align 8, !dbg !331
  %29 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !332
  %30 = load i32, i32* %29, align 4, !dbg !332
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3, !dbg !333
  %32 = load i32, i32* %31, align 4, !dbg !334
  %33 = add i32 %32, %30, !dbg !334
  store i32 %33, i32* %31, align 4, !dbg !334
  %34 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !335
  %35 = load i32, i32* %34, align 4, !dbg !335
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4, !dbg !336
  %37 = load i32, i32* %36, align 16, !dbg !337
  %38 = add i32 %37, %35, !dbg !337
  store i32 %38, i32* %36, align 16, !dbg !337
  %39 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !338
  %40 = load i32, i32* %39, align 4, !dbg !338
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5, !dbg !339
  %42 = load i32, i32* %41, align 4, !dbg !340
  %43 = add i32 %42, %40, !dbg !340
  store i32 %43, i32* %41, align 4, !dbg !340
  %44 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !341
  %45 = load i32, i32* %44, align 4, !dbg !341
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6, !dbg !342
  %47 = load i32, i32* %46, align 8, !dbg !343
  %48 = add i32 %47, %45, !dbg !343
  store i32 %48, i32* %46, align 8, !dbg !343
  %49 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !344
  %50 = load i32, i32* %49, align 4, !dbg !344
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7, !dbg !345
  %52 = load i32, i32* %51, align 4, !dbg !346
  %53 = add i32 %52, %50, !dbg !346
  store i32 %53, i32* %51, align 4, !dbg !346
  %54 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !347
  %55 = load i32, i32* %54, align 4, !dbg !347
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8, !dbg !348
  %57 = load i32, i32* %56, align 16, !dbg !349
  %58 = add i32 %57, %55, !dbg !349
  store i32 %58, i32* %56, align 16, !dbg !349
  %59 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !350
  %60 = load i32, i32* %59, align 4, !dbg !350
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9, !dbg !351
  %62 = load i32, i32* %61, align 4, !dbg !352
  %63 = add i32 %62, %60, !dbg !352
  store i32 %63, i32* %61, align 4, !dbg !352
  %64 = getelementptr inbounds i32, i32* %0, i64 10, !dbg !353
  %65 = load i32, i32* %64, align 4, !dbg !353
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10, !dbg !354
  %67 = load i32, i32* %66, align 8, !dbg !355
  %68 = add i32 %67, %65, !dbg !355
  store i32 %68, i32* %66, align 8, !dbg !355
  %69 = getelementptr inbounds i32, i32* %0, i64 11, !dbg !356
  %70 = load i32, i32* %69, align 4, !dbg !356
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 11, !dbg !357
  %72 = load i32, i32* %71, align 4, !dbg !358
  %73 = add i32 %72, %70, !dbg !358
  store i32 %73, i32* %71, align 4, !dbg !358
  %74 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !359
  %75 = load i32, i32* %74, align 4, !dbg !359
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 12, !dbg !360
  %77 = load i32, i32* %76, align 16, !dbg !361
  %78 = add i32 %77, %75, !dbg !361
  store i32 %78, i32* %76, align 16, !dbg !361
  %79 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !362
  %80 = load i32, i32* %79, align 4, !dbg !362
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 13, !dbg !363
  %82 = load i32, i32* %81, align 4, !dbg !364
  %83 = add i32 %82, %80, !dbg !364
  store i32 %83, i32* %81, align 4, !dbg !364
  %84 = getelementptr inbounds i32, i32* %0, i64 14, !dbg !365
  %85 = load i32, i32* %84, align 4, !dbg !365
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14, !dbg !366
  %87 = load i32, i32* %86, align 8, !dbg !367
  %88 = add i32 %87, %85, !dbg !367
  store i32 %88, i32* %86, align 8, !dbg !367
  %89 = getelementptr inbounds i32, i32* %0, i64 15, !dbg !368
  %90 = load i32, i32* %89, align 4, !dbg !368
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15, !dbg !369
  %92 = load i32, i32* %91, align 4, !dbg !370
  %93 = add i32 %92, %90, !dbg !370
  store i32 %93, i32* %91, align 4, !dbg !370
  call void @llvm.dbg.value(metadata i64 0, metadata !310, metadata !DIExpression()), !dbg !305
  br label %94, !dbg !371

94:                                               ; preds = %101, %13
  %.1 = phi i64 [ 0, %13 ], [ %102, %101 ], !dbg !373
  call void @llvm.dbg.value(metadata i64 %.1, metadata !310, metadata !DIExpression()), !dbg !305
  %95 = icmp ult i64 %.1, 16, !dbg !374
  br i1 %95, label %96, label %103, !dbg !376

96:                                               ; preds = %94
  %97 = mul i64 %.1, 4, !dbg !377
  call void @llvm.dbg.value(metadata i64 %97, metadata !379, metadata !DIExpression()), !dbg !380
  %98 = getelementptr inbounds i8, i8* %1, i64 %97, !dbg !381
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %.1, !dbg !381
  %100 = load i32, i32* %99, align 4, !dbg !381
  call void @mbedtls_put_unaligned_uint32(i8* %98, i32 %100), !dbg !381
  br label %101, !dbg !385

101:                                              ; preds = %96
  %102 = add i64 %.1, 1, !dbg !386
  call void @llvm.dbg.value(metadata i64 %102, metadata !310, metadata !DIExpression()), !dbg !305
  br label %94, !dbg !387, !llvm.loop !388

103:                                              ; preds = %94
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0, !dbg !390
  %105 = bitcast i32* %104 to i8*, !dbg !390
  call void @mbedtls_platform_zeroize(i8* %105, i64 64), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_inner_block(i32* noalias %0) #0 !dbg !393 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !397, metadata !DIExpression()), !dbg !398
  call void @chacha20_quarter_round(i32* %0, i64 0, i64 4, i64 8, i64 12), !dbg !399
  call void @chacha20_quarter_round(i32* %0, i64 1, i64 5, i64 9, i64 13), !dbg !400
  call void @chacha20_quarter_round(i32* %0, i64 2, i64 6, i64 10, i64 14), !dbg !401
  call void @chacha20_quarter_round(i32* %0, i64 3, i64 7, i64 11, i64 15), !dbg !402
  call void @chacha20_quarter_round(i32* %0, i64 0, i64 5, i64 10, i64 15), !dbg !403
  call void @chacha20_quarter_round(i32* %0, i64 1, i64 6, i64 11, i64 12), !dbg !404
  call void @chacha20_quarter_round(i32* %0, i64 2, i64 7, i64 8, i64 13), !dbg !405
  call void @chacha20_quarter_round(i32* %0, i64 3, i64 4, i64 9, i64 14), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_quarter_round(i32* noalias %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 !dbg !408 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i64 %1, metadata !413, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i64 %2, metadata !414, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i64 %3, metadata !415, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i64 %4, metadata !416, metadata !DIExpression()), !dbg !412
  %6 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !417
  %7 = load i32, i32* %6, align 4, !dbg !417
  %8 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !418
  %9 = load i32, i32* %8, align 4, !dbg !419
  %10 = add i32 %9, %7, !dbg !419
  store i32 %10, i32* %8, align 4, !dbg !419
  %11 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !420
  %12 = load i32, i32* %11, align 4, !dbg !420
  %13 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !421
  %14 = load i32, i32* %13, align 4, !dbg !422
  %15 = xor i32 %14, %12, !dbg !422
  store i32 %15, i32* %13, align 4, !dbg !422
  %16 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !423
  %17 = load i32, i32* %16, align 4, !dbg !423
  %18 = shl i32 %17, 16, !dbg !423
  %19 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !423
  %20 = load i32, i32* %19, align 4, !dbg !423
  %21 = lshr i32 %20, 16, !dbg !423
  %22 = or i32 %18, %21, !dbg !423
  %23 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !424
  store i32 %22, i32* %23, align 4, !dbg !425
  %24 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !426
  %25 = load i32, i32* %24, align 4, !dbg !426
  %26 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !427
  %27 = load i32, i32* %26, align 4, !dbg !428
  %28 = add i32 %27, %25, !dbg !428
  store i32 %28, i32* %26, align 4, !dbg !428
  %29 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !429
  %30 = load i32, i32* %29, align 4, !dbg !429
  %31 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !430
  %32 = load i32, i32* %31, align 4, !dbg !431
  %33 = xor i32 %32, %30, !dbg !431
  store i32 %33, i32* %31, align 4, !dbg !431
  %34 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !432
  %35 = load i32, i32* %34, align 4, !dbg !432
  %36 = shl i32 %35, 12, !dbg !432
  %37 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !432
  %38 = load i32, i32* %37, align 4, !dbg !432
  %39 = lshr i32 %38, 20, !dbg !432
  %40 = or i32 %36, %39, !dbg !432
  %41 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !433
  store i32 %40, i32* %41, align 4, !dbg !434
  %42 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !435
  %43 = load i32, i32* %42, align 4, !dbg !435
  %44 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !436
  %45 = load i32, i32* %44, align 4, !dbg !437
  %46 = add i32 %45, %43, !dbg !437
  store i32 %46, i32* %44, align 4, !dbg !437
  %47 = getelementptr inbounds i32, i32* %0, i64 %1, !dbg !438
  %48 = load i32, i32* %47, align 4, !dbg !438
  %49 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !439
  %50 = load i32, i32* %49, align 4, !dbg !440
  %51 = xor i32 %50, %48, !dbg !440
  store i32 %51, i32* %49, align 4, !dbg !440
  %52 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !441
  %53 = load i32, i32* %52, align 4, !dbg !441
  %54 = shl i32 %53, 8, !dbg !441
  %55 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !441
  %56 = load i32, i32* %55, align 4, !dbg !441
  %57 = lshr i32 %56, 24, !dbg !441
  %58 = or i32 %54, %57, !dbg !441
  %59 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !442
  store i32 %58, i32* %59, align 4, !dbg !443
  %60 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !444
  %61 = load i32, i32* %60, align 4, !dbg !444
  %62 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !445
  %63 = load i32, i32* %62, align 4, !dbg !446
  %64 = add i32 %63, %61, !dbg !446
  store i32 %64, i32* %62, align 4, !dbg !446
  %65 = getelementptr inbounds i32, i32* %0, i64 %3, !dbg !447
  %66 = load i32, i32* %65, align 4, !dbg !447
  %67 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !448
  %68 = load i32, i32* %67, align 4, !dbg !449
  %69 = xor i32 %68, %66, !dbg !449
  store i32 %69, i32* %67, align 4, !dbg !449
  %70 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !450
  %71 = load i32, i32* %70, align 4, !dbg !450
  %72 = shl i32 %71, 7, !dbg !450
  %73 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !450
  %74 = load i32, i32* %73, align 4, !dbg !450
  %75 = lshr i32 %74, 25, !dbg !450
  %76 = or i32 %72, %75, !dbg !450
  %77 = getelementptr inbounds i32, i32* %0, i64 %2, !dbg !451
  store i32 %76, i32* %77, align 4, !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_crypt(i8* noalias %0, i8* noalias %1, i32 %2, i64 %3, i8* noalias %4, i8* noalias %5) #0 !dbg !454 {
  %7 = alloca %struct.mbedtls_chacha20_context, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8* %1, metadata !459, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32 %2, metadata !460, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %3, metadata !461, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8* %4, metadata !462, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8* %5, metadata !463, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata %struct.mbedtls_chacha20_context* %7, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i32 -110, metadata !466, metadata !DIExpression()), !dbg !458
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* %7), !dbg !467
  %8 = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* %7, i8* %0), !dbg !468
  call void @llvm.dbg.value(metadata i32 %8, metadata !466, metadata !DIExpression()), !dbg !458
  %9 = icmp ne i32 %8, 0, !dbg !469
  br i1 %9, label %10, label %11, !dbg !471

10:                                               ; preds = %6
  br label %17, !dbg !472

11:                                               ; preds = %6
  %12 = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* %7, i8* %1, i32 %2), !dbg !473
  call void @llvm.dbg.value(metadata i32 %12, metadata !466, metadata !DIExpression()), !dbg !458
  %13 = icmp ne i32 %12, 0, !dbg !474
  br i1 %13, label %14, label %15, !dbg !476

14:                                               ; preds = %11
  br label %17, !dbg !477

15:                                               ; preds = %11
  %16 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %7, i64 %3, i8* %4, i8* %5), !dbg !478
  call void @llvm.dbg.value(metadata i32 %16, metadata !466, metadata !DIExpression()), !dbg !458
  br label %17, !dbg !479

17:                                               ; preds = %15, %14, %10
  %.0 = phi i32 [ %8, %10 ], [ %12, %14 ], [ %16, %15 ], !dbg !458
  call void @llvm.dbg.value(metadata i32 %.0, metadata !466, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.label(metadata !480), !dbg !481
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* %7), !dbg !482
  ret i32 %.0, !dbg !483
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chacha20_self_test(i32 %0) #0 !dbg !484 {
  %2 = alloca [381 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata [381 x i8]* %2, metadata !489, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 -110, metadata !494, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !488
  br label %3, !dbg !496

3:                                                ; preds = %57, %1
  %.01 = phi i32 [ 0, %1 ], [ %58, %57 ], !dbg !498
  call void @llvm.dbg.value(metadata i32 %.01, metadata !495, metadata !DIExpression()), !dbg !488
  %4 = icmp ult i32 %.01, 2, !dbg !499
  br i1 %4, label %5, label %59, !dbg !501

5:                                                ; preds = %3
  %6 = icmp ne i32 %0, 0, !dbg !502
  br i1 %6, label %7, label %9, !dbg !505

7:                                                ; preds = %5
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %.01), !dbg !506
  br label %9, !dbg !506

9:                                                ; preds = %7, %5
  %10 = zext i32 %.01 to i64, !dbg !507
  %11 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* @test_keys, i64 0, i64 %10, !dbg !507
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !507
  %13 = zext i32 %.01 to i64, !dbg !508
  %14 = getelementptr inbounds [2 x [12 x i8]], [2 x [12 x i8]]* @test_nonces, i64 0, i64 %13, !dbg !508
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0, !dbg !508
  %16 = zext i32 %.01 to i64, !dbg !509
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @test_counters, i64 0, i64 %16, !dbg !509
  %18 = load i32, i32* %17, align 4, !dbg !509
  %19 = zext i32 %.01 to i64, !dbg !510
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* @test_lengths, i64 0, i64 %19, !dbg !510
  %21 = load i64, i64* %20, align 8, !dbg !510
  %22 = zext i32 %.01 to i64, !dbg !511
  %23 = getelementptr inbounds [2 x [375 x i8]], [2 x [375 x i8]]* @test_input, i64 0, i64 %22, !dbg !511
  %24 = getelementptr inbounds [375 x i8], [375 x i8]* %23, i64 0, i64 0, !dbg !511
  %25 = getelementptr inbounds [381 x i8], [381 x i8]* %2, i64 0, i64 0, !dbg !512
  %26 = call i32 @mbedtls_chacha20_crypt(i8* %12, i8* %15, i32 %18, i64 %21, i8* %24, i8* %25), !dbg !513
  call void @llvm.dbg.value(metadata i32 %26, metadata !494, metadata !DIExpression()), !dbg !488
  br label %27, !dbg !514

27:                                               ; preds = %9
  %28 = icmp eq i32 0, %26, !dbg !515
  br i1 %28, label %34, label %29, !dbg !518

29:                                               ; preds = %27
  %30 = icmp ne i32 %0, 0, !dbg !519
  br i1 %30, label %31, label %33, !dbg !522

31:                                               ; preds = %29
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %26), !dbg !519
  br label %33, !dbg !519

33:                                               ; preds = %31, %29
  br label %64, !dbg !522

34:                                               ; preds = %27
  br label %35, !dbg !518

35:                                               ; preds = %34
  br label %36, !dbg !523

36:                                               ; preds = %35
  %37 = getelementptr inbounds [381 x i8], [381 x i8]* %2, i64 0, i64 0, !dbg !524
  %38 = zext i32 %.01 to i64, !dbg !524
  %39 = getelementptr inbounds [2 x [375 x i8]], [2 x [375 x i8]]* bitcast (<{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }>* @test_output to [2 x [375 x i8]]*), i64 0, i64 %38, !dbg !524
  %40 = getelementptr inbounds [375 x i8], [375 x i8]* %39, i64 0, i64 0, !dbg !524
  %41 = zext i32 %.01 to i64, !dbg !524
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* @test_lengths, i64 0, i64 %41, !dbg !524
  %43 = load i64, i64* %42, align 8, !dbg !524
  %44 = call i32 @memcmp(i8* %37, i8* %40, i64 %43) #7, !dbg !524
  %45 = icmp eq i32 0, %44, !dbg !524
  br i1 %45, label %51, label %46, !dbg !527

46:                                               ; preds = %36
  %47 = icmp ne i32 %0, 0, !dbg !528
  br i1 %47, label %48, label %50, !dbg !531

48:                                               ; preds = %46
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)), !dbg !528
  br label %50, !dbg !528

50:                                               ; preds = %48, %46
  br label %64, !dbg !531

51:                                               ; preds = %36
  br label %52, !dbg !527

52:                                               ; preds = %51
  %53 = icmp ne i32 %0, 0, !dbg !532
  br i1 %53, label %54, label %56, !dbg !534

54:                                               ; preds = %52
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !535
  br label %56, !dbg !535

56:                                               ; preds = %54, %52
  br label %57, !dbg !536

57:                                               ; preds = %56
  %58 = add i32 %.01, 1, !dbg !537
  call void @llvm.dbg.value(metadata i32 %58, metadata !495, metadata !DIExpression()), !dbg !488
  br label %3, !dbg !538, !llvm.loop !539

59:                                               ; preds = %3
  %60 = icmp ne i32 %0, 0, !dbg !541
  br i1 %60, label %61, label %63, !dbg !543

61:                                               ; preds = %59
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !544
  br label %63, !dbg !544

63:                                               ; preds = %61, %59
  br label %64, !dbg !545

64:                                               ; preds = %63, %50, %33
  %.0 = phi i32 [ -1, %50 ], [ -1, %33 ], [ 0, %63 ], !dbg !488
  ret i32 %.0, !dbg !546
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noalias %0) #0 !dbg !547 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !583, metadata !DIExpression()), !dbg !584
  %2 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !585
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* %2), !dbg !586
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !587
  call void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* %3), !dbg !588
  %4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !589
  store i64 0, i64* %4, align 8, !dbg !590
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !591
  store i64 0, i64* %5, align 8, !dbg !592
  %6 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !593
  store i32 0, i32* %6, align 8, !dbg !594
  %7 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !595
  store i32 0, i32* %7, align 4, !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noalias %0) #0 !dbg !598 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !599, metadata !DIExpression()), !dbg !600
  %2 = icmp eq %struct.mbedtls_chachapoly_context* %0, null, !dbg !601
  br i1 %2, label %3, label %4, !dbg !603

3:                                                ; preds = %1
  br label %11, !dbg !604

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !605
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* %5), !dbg !606
  %6 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !607
  call void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* %6), !dbg !608
  %7 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !609
  store i64 0, i64* %7, align 8, !dbg !610
  %8 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !611
  store i64 0, i64* %8, align 8, !dbg !612
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !613
  store i32 0, i32* %9, align 8, !dbg !614
  %10 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !615
  store i32 0, i32* %10, align 4, !dbg !616
  br label %11, !dbg !617

11:                                               ; preds = %4, %3
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noalias %0, i8* noalias %1) #0 !dbg !618 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !621, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8* %1, metadata !623, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 -110, metadata !624, metadata !DIExpression()), !dbg !622
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !625
  %4 = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* %3, i8* %1), !dbg !626
  call void @llvm.dbg.value(metadata i32 %4, metadata !624, metadata !DIExpression()), !dbg !622
  ret i32 %4, !dbg !627
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noalias %0, i8* noalias %1, i32 %2) #0 !dbg !628 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8* %1, metadata !633, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 %2, metadata !634, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 -110, metadata !635, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata [64 x i8]* %4, metadata !636, metadata !DIExpression()), !dbg !638
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !639
  %6 = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* %5, i8* %1, i32 0), !dbg !640
  call void @llvm.dbg.value(metadata i32 %6, metadata !635, metadata !DIExpression()), !dbg !632
  %7 = icmp ne i32 %6, 0, !dbg !641
  br i1 %7, label %8, label %9, !dbg !643

8:                                                ; preds = %3
  br label %28, !dbg !644

9:                                                ; preds = %3
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !645
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false), !dbg !645
  %11 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !646
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !647
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !648
  %14 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %11, i64 64, i8* %12, i8* %13), !dbg !649
  call void @llvm.dbg.value(metadata i32 %14, metadata !635, metadata !DIExpression()), !dbg !632
  %15 = icmp ne i32 %14, 0, !dbg !650
  br i1 %15, label %16, label %17, !dbg !652

16:                                               ; preds = %9
  br label %28, !dbg !653

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !654
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !655
  %20 = call i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* %18, i8* %19), !dbg !656
  call void @llvm.dbg.value(metadata i32 %20, metadata !635, metadata !DIExpression()), !dbg !632
  %21 = icmp eq i32 %20, 0, !dbg !657
  br i1 %21, label %22, label %27, !dbg !659

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !660
  store i64 0, i64* %23, align 8, !dbg !662
  %24 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !663
  store i64 0, i64* %24, align 8, !dbg !664
  %25 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !665
  store i32 1, i32* %25, align 8, !dbg !666
  %26 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !667
  store i32 %2, i32* %26, align 4, !dbg !668
  br label %27, !dbg !669

27:                                               ; preds = %22, %17
  br label %28, !dbg !670

28:                                               ; preds = %27, %16, %8
  %.0 = phi i32 [ %6, %8 ], [ %14, %16 ], [ %20, %27 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %.0, metadata !635, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.label(metadata !671), !dbg !672
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !673
  call void @mbedtls_platform_zeroize(i8* %29, i64 64), !dbg !674
  ret i32 %.0, !dbg !675
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !676 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i8* %1, metadata !681, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !680
  %4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !683
  %5 = load i32, i32* %4, align 8, !dbg !683
  %6 = icmp ne i32 %5, 1, !dbg !685
  br i1 %6, label %7, label %8, !dbg !686

7:                                                ; preds = %3
  br label %14, !dbg !687

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !688
  %10 = load i64, i64* %9, align 8, !dbg !689
  %11 = add i64 %10, %2, !dbg !689
  store i64 %11, i64* %9, align 8, !dbg !689
  %12 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !690
  %13 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %12, i8* %1, i64 %2), !dbg !691
  br label %14, !dbg !692

14:                                               ; preds = %8, %7
  %.0 = phi i32 [ -84, %7 ], [ %13, %8 ], !dbg !680
  ret i32 %.0, !dbg !693
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noalias %0, i64 %1, i8* noalias %2, i8* noalias %3) #0 !dbg !694 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 %1, metadata !699, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %2, metadata !700, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %3, metadata !701, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i32 -110, metadata !702, metadata !DIExpression()), !dbg !698
  %5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !703
  %6 = load i32, i32* %5, align 8, !dbg !703
  %7 = icmp ne i32 %6, 1, !dbg !705
  br i1 %7, label %8, label %13, !dbg !706

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !707
  %10 = load i32, i32* %9, align 8, !dbg !707
  %11 = icmp ne i32 %10, 2, !dbg !708
  br i1 %11, label %12, label %13, !dbg !709

12:                                               ; preds = %8
  br label %53, !dbg !710

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !712
  %15 = load i32, i32* %14, align 8, !dbg !712
  %16 = icmp eq i32 %15, 1, !dbg !714
  br i1 %16, label %17, label %23, !dbg !715

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !716
  store i32 2, i32* %18, align 8, !dbg !718
  %19 = call i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* %0), !dbg !719
  call void @llvm.dbg.value(metadata i32 %19, metadata !702, metadata !DIExpression()), !dbg !698
  %20 = icmp ne i32 %19, 0, !dbg !720
  br i1 %20, label %21, label %22, !dbg !722

21:                                               ; preds = %17
  br label %53, !dbg !723

22:                                               ; preds = %17
  br label %23, !dbg !724

23:                                               ; preds = %22, %13
  %24 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !725
  %25 = load i64, i64* %24, align 8, !dbg !726
  %26 = add i64 %25, %1, !dbg !726
  store i64 %26, i64* %24, align 8, !dbg !726
  %27 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !727
  %28 = load i32, i32* %27, align 4, !dbg !727
  %29 = icmp eq i32 %28, 0, !dbg !729
  br i1 %29, label %30, label %41, !dbg !730

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !731
  %32 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %31, i64 %1, i8* %2, i8* %3), !dbg !733
  call void @llvm.dbg.value(metadata i32 %32, metadata !702, metadata !DIExpression()), !dbg !698
  %33 = icmp ne i32 %32, 0, !dbg !734
  br i1 %33, label %34, label %35, !dbg !736

34:                                               ; preds = %30
  br label %53, !dbg !737

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !738
  %37 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %36, i8* %3, i64 %1), !dbg !739
  call void @llvm.dbg.value(metadata i32 %37, metadata !702, metadata !DIExpression()), !dbg !698
  %38 = icmp ne i32 %37, 0, !dbg !740
  br i1 %38, label %39, label %40, !dbg !742

39:                                               ; preds = %35
  br label %53, !dbg !743

40:                                               ; preds = %35
  br label %52, !dbg !744

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !745
  %43 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %42, i8* %2, i64 %1), !dbg !747
  call void @llvm.dbg.value(metadata i32 %43, metadata !702, metadata !DIExpression()), !dbg !698
  %44 = icmp ne i32 %43, 0, !dbg !748
  br i1 %44, label %45, label %46, !dbg !750

45:                                               ; preds = %41
  br label %53, !dbg !751

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !752
  %48 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* %47, i64 %1, i8* %2, i8* %3), !dbg !753
  call void @llvm.dbg.value(metadata i32 %48, metadata !702, metadata !DIExpression()), !dbg !698
  %49 = icmp ne i32 %48, 0, !dbg !754
  br i1 %49, label %50, label %51, !dbg !756

50:                                               ; preds = %46
  br label %53, !dbg !757

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %40
  br label %53, !dbg !758

53:                                               ; preds = %52, %50, %45, %39, %34, %21, %12
  %.0 = phi i32 [ -84, %12 ], [ %19, %21 ], [ %32, %34 ], [ %37, %39 ], [ 0, %52 ], [ %43, %45 ], [ %48, %50 ], !dbg !698
  ret i32 %.0, !dbg !759
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* noalias %0) #0 !dbg !760 {
  %2 = alloca [15 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !763, metadata !DIExpression()), !dbg !764
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !765
  %4 = load i64, i64* %3, align 8, !dbg !765
  %5 = urem i64 %4, 16, !dbg !766
  %6 = trunc i64 %5 to i32, !dbg !767
  call void @llvm.dbg.value(metadata i32 %6, metadata !768, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata [15 x i8]* %2, metadata !769, metadata !DIExpression()), !dbg !773
  %7 = icmp eq i32 %6, 0, !dbg !774
  br i1 %7, label %8, label %9, !dbg !776

8:                                                ; preds = %1
  br label %16, !dbg !777

9:                                                ; preds = %1
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !778
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 15, i1 false), !dbg !778
  %11 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !779
  %12 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !780
  %13 = sub i32 16, %6, !dbg !781
  %14 = zext i32 %13 to i64, !dbg !782
  %15 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %11, i8* %12, i64 %14), !dbg !783
  br label %16, !dbg !784

16:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %15, %9 ], !dbg !764
  ret i32 %.0, !dbg !785
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noalias %0, i8* noalias %1) #0 !dbg !786 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8* %1, metadata !791, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 -110, metadata !792, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !793, metadata !DIExpression()), !dbg !795
  %4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !796
  %5 = load i32, i32* %4, align 8, !dbg !796
  %6 = icmp eq i32 %5, 0, !dbg !798
  br i1 %6, label %7, label %8, !dbg !799

7:                                                ; preds = %2
  br label %45, !dbg !800

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !802
  %10 = load i32, i32* %9, align 8, !dbg !802
  %11 = icmp eq i32 %10, 1, !dbg !804
  br i1 %11, label %12, label %17, !dbg !805

12:                                               ; preds = %8
  %13 = call i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* %0), !dbg !806
  call void @llvm.dbg.value(metadata i32 %13, metadata !792, metadata !DIExpression()), !dbg !790
  %14 = icmp ne i32 %13, 0, !dbg !808
  br i1 %14, label %15, label %16, !dbg !810

15:                                               ; preds = %12
  br label %45, !dbg !811

16:                                               ; preds = %12
  br label %27, !dbg !812

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !813
  %19 = load i32, i32* %18, align 8, !dbg !813
  %20 = icmp eq i32 %19, 2, !dbg !815
  br i1 %20, label %21, label %26, !dbg !816

21:                                               ; preds = %17
  %22 = call i32 @chachapoly_pad_ciphertext(%struct.mbedtls_chachapoly_context* %0), !dbg !817
  call void @llvm.dbg.value(metadata i32 %22, metadata !792, metadata !DIExpression()), !dbg !790
  %23 = icmp ne i32 %22, 0, !dbg !819
  br i1 %23, label %24, label %25, !dbg !821

24:                                               ; preds = %21
  br label %45, !dbg !822

25:                                               ; preds = %21
  br label %26, !dbg !823

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !824
  store i32 3, i32* %28, align 8, !dbg !825
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !826
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !826
  %31 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !826
  %32 = load i64, i64* %31, align 8, !dbg !826
  call void @mbedtls_put_unaligned_uint64(i8* %30, i64 %32), !dbg !826
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !830
  %34 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !830
  %35 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !830
  %36 = load i64, i64* %35, align 8, !dbg !830
  call void @mbedtls_put_unaligned_uint64(i8* %34, i64 %36), !dbg !830
  %37 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !834
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !835
  %39 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %37, i8* %38, i64 16), !dbg !836
  call void @llvm.dbg.value(metadata i32 %39, metadata !792, metadata !DIExpression()), !dbg !790
  %40 = icmp ne i32 %39, 0, !dbg !837
  br i1 %40, label %41, label %42, !dbg !839

41:                                               ; preds = %27
  br label %45, !dbg !840

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !841
  %44 = call i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* %43, i8* %1), !dbg !842
  call void @llvm.dbg.value(metadata i32 %44, metadata !792, metadata !DIExpression()), !dbg !790
  br label %45, !dbg !843

45:                                               ; preds = %42, %41, %24, %15, %7
  %.0 = phi i32 [ -84, %7 ], [ %13, %15 ], [ %39, %41 ], [ %44, %42 ], [ %22, %24 ], !dbg !790
  ret i32 %.0, !dbg !844
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chachapoly_pad_ciphertext(%struct.mbedtls_chachapoly_context* noalias %0) #0 !dbg !845 {
  %2 = alloca [15 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !846, metadata !DIExpression()), !dbg !847
  %3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !848
  %4 = load i64, i64* %3, align 8, !dbg !848
  %5 = urem i64 %4, 16, !dbg !849
  %6 = trunc i64 %5 to i32, !dbg !850
  call void @llvm.dbg.value(metadata i32 %6, metadata !851, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata [15 x i8]* %2, metadata !852, metadata !DIExpression()), !dbg !853
  %7 = icmp eq i32 %6, 0, !dbg !854
  br i1 %7, label %8, label %9, !dbg !856

8:                                                ; preds = %1
  br label %16, !dbg !857

9:                                                ; preds = %1
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !858
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 15, i1 false), !dbg !858
  %11 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !859
  %12 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0, !dbg !860
  %13 = sub i32 16, %6, !dbg !861
  %14 = zext i32 %13 to i64, !dbg !862
  %15 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %11, i8* %12, i64 %14), !dbg !863
  br label %16, !dbg !864

16:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %15, %9 ], !dbg !847
  ret i32 %.0, !dbg !865
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noalias %0, i64 %1, i8* noalias %2, i8* noalias %3, i64 %4, i8* noalias %5, i8* noalias %6, i8* noalias %7) #0 !dbg !866 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i64 %1, metadata !871, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8* %2, metadata !872, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8* %3, metadata !873, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i64 %4, metadata !874, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8* %5, metadata !875, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8* %6, metadata !876, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8* %7, metadata !877, metadata !DIExpression()), !dbg !870
  %9 = call i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i32 0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8* %7), !dbg !878
  ret i32 %9, !dbg !879
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* noalias %0, i32 %1, i64 %2, i8* noalias %3, i8* noalias %4, i64 %5, i8* noalias %6, i8* noalias %7, i8* noalias %8) #0 !dbg !880 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !883, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 %1, metadata !885, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 %2, metadata !886, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %3, metadata !887, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %4, metadata !888, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 %5, metadata !889, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %6, metadata !890, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %7, metadata !891, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %8, metadata !892, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 -110, metadata !893, metadata !DIExpression()), !dbg !884
  %10 = call i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* %0, i8* %3, i32 %1), !dbg !894
  call void @llvm.dbg.value(metadata i32 %10, metadata !893, metadata !DIExpression()), !dbg !884
  %11 = icmp ne i32 %10, 0, !dbg !895
  br i1 %11, label %12, label %13, !dbg !897

12:                                               ; preds = %9
  br label %23, !dbg !898

13:                                               ; preds = %9
  %14 = call i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* %0, i8* %4, i64 %5), !dbg !899
  call void @llvm.dbg.value(metadata i32 %14, metadata !893, metadata !DIExpression()), !dbg !884
  %15 = icmp ne i32 %14, 0, !dbg !900
  br i1 %15, label %16, label %17, !dbg !902

16:                                               ; preds = %13
  br label %23, !dbg !903

17:                                               ; preds = %13
  %18 = call i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* %0, i64 %2, i8* %6, i8* %7), !dbg !904
  call void @llvm.dbg.value(metadata i32 %18, metadata !893, metadata !DIExpression()), !dbg !884
  %19 = icmp ne i32 %18, 0, !dbg !905
  br i1 %19, label %20, label %21, !dbg !907

20:                                               ; preds = %17
  br label %23, !dbg !908

21:                                               ; preds = %17
  %22 = call i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* %0, i8* %8), !dbg !909
  call void @llvm.dbg.value(metadata i32 %22, metadata !893, metadata !DIExpression()), !dbg !884
  br label %23, !dbg !910

23:                                               ; preds = %21, %20, %16, %12
  %.0 = phi i32 [ %10, %12 ], [ %14, %16 ], [ %18, %20 ], [ %22, %21 ], !dbg !884
  call void @llvm.dbg.value(metadata i32 %.0, metadata !893, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.label(metadata !911), !dbg !912
  ret i32 %.0, !dbg !913
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* noalias %0, i64 %1, i8* noalias %2, i8* noalias %3, i64 %4, i8* noalias %5, i8* noalias %6, i8* noalias %7) #0 !dbg !914 {
  %9 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 %1, metadata !919, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8* %2, metadata !920, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8* %3, metadata !921, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 %4, metadata !922, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8* %5, metadata !923, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8* %6, metadata !924, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8* %7, metadata !925, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i32 -110, metadata !926, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !927, metadata !DIExpression()), !dbg !928
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !929
  %11 = call i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i32 1, i64 %1, i8* %2, i8* %3, i64 %4, i8* %6, i8* %7, i8* %10), !dbg !931
  call void @llvm.dbg.value(metadata i32 %11, metadata !926, metadata !DIExpression()), !dbg !918
  %12 = icmp ne i32 %11, 0, !dbg !932
  br i1 %12, label %13, label %14, !dbg !933

13:                                               ; preds = %8
  br label %32, !dbg !934

14:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !936, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !937, metadata !DIExpression()), !dbg !918
  br label %15, !dbg !938

15:                                               ; preds = %26, %14
  %.02 = phi i64 [ 0, %14 ], [ %27, %26 ], !dbg !940
  %.01 = phi i32 [ 0, %14 ], [ %25, %26 ], !dbg !940
  call void @llvm.dbg.value(metadata i32 %.01, metadata !936, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 %.02, metadata !937, metadata !DIExpression()), !dbg !918
  %16 = icmp ult i64 %.02, 16, !dbg !941
  br i1 %16, label %17, label %28, !dbg !943

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, i8* %5, i64 %.02, !dbg !944
  %19 = load i8, i8* %18, align 1, !dbg !944
  %20 = zext i8 %19 to i32, !dbg !944
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %.02, !dbg !945
  %22 = load i8, i8* %21, align 1, !dbg !945
  %23 = zext i8 %22 to i32, !dbg !945
  %24 = xor i32 %20, %23, !dbg !946
  %25 = or i32 %.01, %24, !dbg !947
  call void @llvm.dbg.value(metadata i32 %25, metadata !936, metadata !DIExpression()), !dbg !918
  br label %26, !dbg !948

26:                                               ; preds = %17
  %27 = add i64 %.02, 1, !dbg !949
  call void @llvm.dbg.value(metadata i64 %27, metadata !937, metadata !DIExpression()), !dbg !918
  br label %15, !dbg !950, !llvm.loop !951

28:                                               ; preds = %15
  %29 = icmp ne i32 %.01, 0, !dbg !953
  br i1 %29, label %30, label %31, !dbg !955

30:                                               ; preds = %28
  call void @mbedtls_platform_zeroize(i8* %7, i64 %1), !dbg !956
  br label %32, !dbg !958

31:                                               ; preds = %28
  br label %32, !dbg !959

32:                                               ; preds = %31, %30, %13
  %.0 = phi i32 [ %11, %13 ], [ -86, %30 ], [ 0, %31 ], !dbg !918
  ret i32 %.0, !dbg !960
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_chachapoly_self_test(i32 %0) #0 !dbg !961 {
  %2 = alloca %struct.mbedtls_chachapoly_context, align 8
  %3 = alloca [200 x i8], align 16
  %4 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata %struct.mbedtls_chachapoly_context* %2, metadata !964, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i32 -110, metadata !966, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata [200 x i8]* %3, metadata !967, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i32 0, metadata !974, metadata !DIExpression()), !dbg !963
  br label %5, !dbg !975

5:                                                ; preds = %87, %1
  %.01 = phi i32 [ 0, %1 ], [ %88, %87 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %.01, metadata !974, metadata !DIExpression()), !dbg !963
  %6 = icmp ult i32 %.01, 1, !dbg !978
  br i1 %6, label %7, label %89, !dbg !980

7:                                                ; preds = %5
  %8 = icmp ne i32 %0, 0, !dbg !981
  br i1 %8, label %9, label %11, !dbg !984

9:                                                ; preds = %7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %.01), !dbg !985
  br label %11, !dbg !985

11:                                               ; preds = %9, %7
  call void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* %2), !dbg !986
  %12 = zext i32 %.01 to i64, !dbg !987
  %13 = getelementptr inbounds [1 x [32 x i8]], [1 x [32 x i8]]* @test_key, i64 0, i64 %12, !dbg !987
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0, !dbg !987
  %15 = call i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* %2, i8* %14), !dbg !988
  call void @llvm.dbg.value(metadata i32 %15, metadata !966, metadata !DIExpression()), !dbg !963
  br label %16, !dbg !989

16:                                               ; preds = %11
  %17 = icmp eq i32 0, %15, !dbg !990
  br i1 %17, label %23, label %18, !dbg !993

18:                                               ; preds = %16
  %19 = icmp ne i32 %0, 0, !dbg !994
  br i1 %19, label %20, label %22, !dbg !997

20:                                               ; preds = %18
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.6, i64 0, i64 0), i32 %15), !dbg !994
  br label %22, !dbg !994

22:                                               ; preds = %20, %18
  br label %94, !dbg !997

23:                                               ; preds = %16
  br label %24, !dbg !993

24:                                               ; preds = %23
  %25 = zext i32 %.01 to i64, !dbg !998
  %26 = getelementptr inbounds [1 x i64], [1 x i64]* @test_input_len, i64 0, i64 %25, !dbg !998
  %27 = load i64, i64* %26, align 8, !dbg !998
  %28 = zext i32 %.01 to i64, !dbg !999
  %29 = getelementptr inbounds [1 x [12 x i8]], [1 x [12 x i8]]* @test_nonce, i64 0, i64 %28, !dbg !999
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0, !dbg !999
  %31 = zext i32 %.01 to i64, !dbg !1000
  %32 = getelementptr inbounds [1 x [12 x i8]], [1 x [12 x i8]]* @test_aad, i64 0, i64 %31, !dbg !1000
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %32, i64 0, i64 0, !dbg !1000
  %34 = zext i32 %.01 to i64, !dbg !1001
  %35 = getelementptr inbounds [1 x i64], [1 x i64]* @test_aad_len, i64 0, i64 %34, !dbg !1001
  %36 = load i64, i64* %35, align 8, !dbg !1001
  %37 = zext i32 %.01 to i64, !dbg !1002
  %38 = getelementptr inbounds [1 x [114 x i8]], [1 x [114 x i8]]* @test_input.7, i64 0, i64 %37, !dbg !1002
  %39 = getelementptr inbounds [114 x i8], [114 x i8]* %38, i64 0, i64 0, !dbg !1002
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0, !dbg !1003
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !1004
  %42 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* %2, i64 %27, i8* %30, i8* %33, i64 %36, i8* %39, i8* %40, i8* %41), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %42, metadata !966, metadata !DIExpression()), !dbg !963
  br label %43, !dbg !1006

43:                                               ; preds = %24
  %44 = icmp eq i32 0, %42, !dbg !1007
  br i1 %44, label %50, label %45, !dbg !1010

45:                                               ; preds = %43
  %46 = icmp ne i32 %0, 0, !dbg !1011
  br i1 %46, label %47, label %49, !dbg !1014

47:                                               ; preds = %45
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.8, i64 0, i64 0), i32 %42), !dbg !1011
  br label %49, !dbg !1011

49:                                               ; preds = %47, %45
  br label %94, !dbg !1014

50:                                               ; preds = %43
  br label %51, !dbg !1010

51:                                               ; preds = %50
  br label %52, !dbg !1015

52:                                               ; preds = %51
  %53 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0, !dbg !1016
  %54 = zext i32 %.01 to i64, !dbg !1016
  %55 = getelementptr inbounds [1 x [114 x i8]], [1 x [114 x i8]]* @test_output.9, i64 0, i64 %54, !dbg !1016
  %56 = getelementptr inbounds [114 x i8], [114 x i8]* %55, i64 0, i64 0, !dbg !1016
  %57 = zext i32 %.01 to i64, !dbg !1016
  %58 = getelementptr inbounds [1 x i64], [1 x i64]* @test_input_len, i64 0, i64 %57, !dbg !1016
  %59 = load i64, i64* %58, align 8, !dbg !1016
  %60 = call i32 @memcmp(i8* %53, i8* %56, i64 %59) #7, !dbg !1016
  %61 = icmp eq i32 0, %60, !dbg !1016
  br i1 %61, label %67, label %62, !dbg !1019

62:                                               ; preds = %52
  %63 = icmp ne i32 %0, 0, !dbg !1020
  br i1 %63, label %64, label %66, !dbg !1023

64:                                               ; preds = %62
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.10, i64 0, i64 0)), !dbg !1020
  br label %66, !dbg !1020

66:                                               ; preds = %64, %62
  br label %94, !dbg !1023

67:                                               ; preds = %52
  br label %68, !dbg !1019

68:                                               ; preds = %67
  br label %69, !dbg !1024

69:                                               ; preds = %68
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !1025
  %71 = zext i32 %.01 to i64, !dbg !1025
  %72 = getelementptr inbounds [1 x [16 x i8]], [1 x [16 x i8]]* @test_mac, i64 0, i64 %71, !dbg !1025
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %72, i64 0, i64 0, !dbg !1025
  %74 = call i32 @memcmp(i8* %70, i8* %73, i64 16) #7, !dbg !1025
  %75 = icmp eq i32 0, %74, !dbg !1025
  br i1 %75, label %81, label %76, !dbg !1028

76:                                               ; preds = %69
  %77 = icmp ne i32 %0, 0, !dbg !1029
  br i1 %77, label %78, label %80, !dbg !1032

78:                                               ; preds = %76
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.11, i64 0, i64 0)), !dbg !1029
  br label %80, !dbg !1029

80:                                               ; preds = %78, %76
  br label %94, !dbg !1032

81:                                               ; preds = %69
  br label %82, !dbg !1028

82:                                               ; preds = %81
  call void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* %2), !dbg !1033
  %83 = icmp ne i32 %0, 0, !dbg !1034
  br i1 %83, label %84, label %86, !dbg !1036

84:                                               ; preds = %82
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.12, i64 0, i64 0)), !dbg !1037
  br label %86, !dbg !1037

86:                                               ; preds = %84, %82
  br label %87, !dbg !1038

87:                                               ; preds = %86
  %88 = add i32 %.01, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %88, metadata !974, metadata !DIExpression()), !dbg !963
  br label %5, !dbg !1040, !llvm.loop !1041

89:                                               ; preds = %5
  %90 = icmp ne i32 %0, 0, !dbg !1043
  br i1 %90, label %91, label %93, !dbg !1045

91:                                               ; preds = %89
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !1046
  br label %93, !dbg !1046

93:                                               ; preds = %91, %89
  br label %94, !dbg !1047

94:                                               ; preds = %93, %80, %66, %49, %22
  %.0 = phi i32 [ -1, %80 ], [ -1, %66 ], [ -1, %49 ], [ -1, %22 ], [ 0, %93 ], !dbg !963
  ret i32 %.0, !dbg !1048
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @encrypt_and_tag_wrapper(%struct.mbedtls_chachapoly_context* noalias %0, i64 %1, i8* noalias %2, i8* noalias %3, i64 %4, i8* noalias %5, i8* noalias %6, i8* noalias %7) #0 !dbg !1049 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %0, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %1, metadata !1078, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %2, metadata !1079, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %3, metadata !1080, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %4, metadata !1081, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %5, metadata !1082, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %6, metadata !1083, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %7, metadata !1084, metadata !DIExpression()), !dbg !1077
  %9 = call %struct.smack_value* (%struct.mbedtls_chachapoly_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.mbedtls_chachapoly_context*, ...)*)(%struct.mbedtls_chachapoly_context* %0), !dbg !1085
  call void @public_in(%struct.smack_value* %9), !dbg !1086
  %10 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !1087
  call void @public_in(%struct.smack_value* %10), !dbg !1088
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !1089
  call void @public_in(%struct.smack_value* %11), !dbg !1090
  %12 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %4), !dbg !1091
  call void @public_in(%struct.smack_value* %12), !dbg !1092
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !1093
  call void @public_in(%struct.smack_value* %13), !dbg !1094
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !1095
  call void @public_in(%struct.smack_value* %14), !dbg !1096
  %15 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1097
  call void @public_in(%struct.smack_value* %15), !dbg !1098
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %7), !dbg !1099
  call void @public_in(%struct.smack_value* %16), !dbg !1100
  %17 = call %struct.smack_value* @__SMACK_values(i8* %5, i32 64), !dbg !1101
  call void @public_in(%struct.smack_value* %17), !dbg !1102
  %18 = call %struct.smack_value* @__SMACK_values(i8* %6, i32 64), !dbg !1103
  call void @public_in(%struct.smack_value* %18), !dbg !1104
  %19 = call %struct.smack_value* @__SMACK_values(i8* %7, i32 12), !dbg !1105
  call void @public_in(%struct.smack_value* %19), !dbg !1106
  %20 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !1107
  call void @public_in(%struct.smack_value* %20), !dbg !1108
  %21 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2, !dbg !1109
  %22 = load i64, i64* %21, align 8, !dbg !1109
  %23 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %22), !dbg !1110
  call void @public_in(%struct.smack_value* %23), !dbg !1111
  %24 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3, !dbg !1112
  %25 = load i64, i64* %24, align 8, !dbg !1112
  %26 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %25), !dbg !1113
  call void @public_in(%struct.smack_value* %26), !dbg !1114
  %27 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4, !dbg !1115
  %28 = load i32, i32* %27, align 8, !dbg !1115
  %29 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %28), !dbg !1116
  call void @public_in(%struct.smack_value* %29), !dbg !1117
  %30 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 5, !dbg !1118
  %31 = load i32, i32* %30, align 4, !dbg !1118
  %32 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %31), !dbg !1119
  call void @public_in(%struct.smack_value* %32), !dbg !1120
  %33 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !1121
  %34 = call %struct.smack_value* (%struct.mbedtls_chacha20_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.mbedtls_chacha20_context*, ...)*)(%struct.mbedtls_chacha20_context* byval(%struct.mbedtls_chacha20_context) align 8 %33), !dbg !1122
  call void @public_in(%struct.smack_value* %34), !dbg !1123
  %35 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1124
  %36 = call %struct.smack_value* (%struct.mbedtls_poly1305_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.mbedtls_poly1305_context*, ...)*)(%struct.mbedtls_poly1305_context* byval(%struct.mbedtls_poly1305_context) align 8 %35), !dbg !1125
  call void @public_in(%struct.smack_value* %36), !dbg !1126
  %37 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !1127
  %38 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %37, i32 0, i32 1, !dbg !1128
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %38, i64 0, i64 0, !dbg !1129
  %40 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %39), !dbg !1130
  call void @public_in(%struct.smack_value* %40), !dbg !1131
  %41 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !1132
  %42 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %41, i32 0, i32 2, !dbg !1133
  %43 = load i64, i64* %42, align 8, !dbg !1133
  %44 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %43), !dbg !1134
  call void @public_in(%struct.smack_value* %44), !dbg !1135
  %45 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0, !dbg !1136
  %46 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %45, i32 0, i32 0, !dbg !1137
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %46, i64 0, i64 0, !dbg !1138
  %48 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %47), !dbg !1139
  call void @public_in(%struct.smack_value* %48), !dbg !1140
  %49 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1141
  %50 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %49, i32 0, i32 2, !dbg !1142
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %50, i64 0, i64 0, !dbg !1143
  %52 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %51), !dbg !1144
  call void @public_in(%struct.smack_value* %52), !dbg !1145
  %53 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1146
  %54 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %53, i32 0, i32 3, !dbg !1147
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %54, i64 0, i64 0, !dbg !1148
  %56 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %55), !dbg !1149
  call void @public_in(%struct.smack_value* %56), !dbg !1150
  %57 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1151
  %58 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %57, i32 0, i32 4, !dbg !1152
  %59 = load i64, i64* %58, align 8, !dbg !1152
  %60 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %59), !dbg !1153
  call void @public_in(%struct.smack_value* %60), !dbg !1154
  %61 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1155
  %62 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %61, i32 0, i32 0, !dbg !1156
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 0, !dbg !1157
  %64 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %63), !dbg !1158
  call void @public_in(%struct.smack_value* %64), !dbg !1159
  %65 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1160
  %66 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %65, i32 0, i32 1, !dbg !1161
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i64 0, i64 0, !dbg !1162
  %68 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %67), !dbg !1163
  call void @public_in(%struct.smack_value* %68), !dbg !1164
  %69 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 1, !dbg !1165
  %70 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %69, i32 0, i32 2, !dbg !1166
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %70, i64 0, i64 0, !dbg !1167
  %72 = bitcast i32* %71 to i8*, !dbg !1167
  %73 = call %struct.smack_value* @__SMACK_values(i8* %72, i32 5), !dbg !1168
  call void @public_in(%struct.smack_value* %73), !dbg !1169
  %74 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* %0, i64 %1, i8* %7, i8* %3, i64 %4, i8* %5, i8* %6, i8* %2), !dbg !1170
  ret void, !dbg !1171
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @encrypt_and_tag_wrapper_t() #0 !dbg !1172 {
  %1 = alloca [12 x i8], align 1
  %2 = call %struct.mbedtls_chachapoly_context* (...) @getctx(), !dbg !1175
  call void @llvm.dbg.value(metadata %struct.mbedtls_chachapoly_context* %2, metadata !1176, metadata !DIExpression()), !dbg !1177
  %3 = call i32 (...) @getlen(), !dbg !1178
  %4 = sext i32 %3 to i64, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %4, metadata !1179, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata [12 x i8]* %1, metadata !1180, metadata !DIExpression()), !dbg !1183
  %5 = bitcast [12 x i8]* %1 to i8*, !dbg !1183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds (<{ i8, [11 x i8] }>, <{ i8, [11 x i8] }>* @__const.encrypt_and_tag_wrapper_t.nonce, i32 0, i32 0), i64 12, i1 false), !dbg !1183
  %6 = call i8* (...) @getpt(), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %6, metadata !1185, metadata !DIExpression()), !dbg !1177
  %7 = call i8* (...) @getpt2(), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %7, metadata !1187, metadata !DIExpression()), !dbg !1177
  %8 = call i8* (...) @getpt3(), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %8, metadata !1189, metadata !DIExpression()), !dbg !1177
  %9 = call i32 (...) @getlen(), !dbg !1190
  %10 = sext i32 %9 to i64, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %10, metadata !1191, metadata !DIExpression()), !dbg !1177
  %11 = call i8* (...) @gettag(), !dbg !1192
  call void @llvm.dbg.value(metadata i8* %11, metadata !1193, metadata !DIExpression()), !dbg !1177
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0, !dbg !1194
  %13 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* %2, i64 %4, i8* %12, i8* %8, i64 %10, i8* %6, i8* %7, i8* %11), !dbg !1195
  ret void, !dbg !1196
}

declare dso_local %struct.mbedtls_chachapoly_context* @getctx(...) #3

declare dso_local i32 @getlen(...) #3

declare dso_local i8* @getpt(...) #3

declare dso_local i8* @getpt2(...) #3

declare dso_local i8* @getpt3(...) #3

declare dso_local i8* @gettag(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_platform_zeroize(i8* noalias %0, i64 %1) #0 !dbg !1197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %1, metadata !1202, metadata !DIExpression()), !dbg !1201
  br label %3, !dbg !1203

3:                                                ; preds = %2
  br label %4, !dbg !1204

4:                                                ; preds = %3
  %5 = icmp ugt i64 %1, 0, !dbg !1206
  br i1 %5, label %6, label %8, !dbg !1208

6:                                                ; preds = %4
  %7 = call i32 (i8*, i32, i64, ...) bitcast (i32 (...)* @menset to i32 (i8*, i32, i64, ...)*)(i8* %0, i32 0, i64 %1), !dbg !1209
  br label %8, !dbg !1209

8:                                                ; preds = %6, %4
  ret void, !dbg !1210
}

declare dso_local i32 @menset(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tm* @mbedtls_platform_gmtime_r(i64* noalias %0, %struct.tm* noalias %1) #0 !dbg !1211 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !1242, metadata !DIExpression()), !dbg !1241
  %3 = call %struct.tm* @gmtime_r(i64* %0, %struct.tm* %1) #8, !dbg !1243
  ret %struct.tm* %3, !dbg !1244
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_xor(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !1245 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1249, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %1, metadata !1251, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %2, metadata !1252, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %3, metadata !1253, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1254, metadata !DIExpression()), !dbg !1250
  br label %5, !dbg !1255

5:                                                ; preds = %15, %4
  %.0 = phi i64 [ 0, %4 ], [ %16, %15 ], !dbg !1257
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1254, metadata !DIExpression()), !dbg !1250
  %6 = add i64 %.0, 4, !dbg !1258
  %7 = icmp ule i64 %6, %3, !dbg !1260
  br i1 %7, label %8, label %17, !dbg !1261

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !1262
  %10 = call i32 @mbedtls_get_unaligned_uint32(i8* %9), !dbg !1264
  %11 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1265
  %12 = call i32 @mbedtls_get_unaligned_uint32(i8* %11), !dbg !1266
  %13 = xor i32 %10, %12, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %13, metadata !1268, metadata !DIExpression()), !dbg !1269
  %14 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1270
  call void @mbedtls_put_unaligned_uint32(i8* %14, i32 %13), !dbg !1271
  br label %15, !dbg !1272

15:                                               ; preds = %8
  %16 = add i64 %.0, 4, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %16, metadata !1254, metadata !DIExpression()), !dbg !1250
  br label %5, !dbg !1274, !llvm.loop !1275

17:                                               ; preds = %5
  br label %18, !dbg !1277

18:                                               ; preds = %30, %17
  %.1 = phi i64 [ %.0, %17 ], [ %31, %30 ], !dbg !1250
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1254, metadata !DIExpression()), !dbg !1250
  %19 = icmp ult i64 %.1, %3, !dbg !1278
  br i1 %19, label %20, label %32, !dbg !1281

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, i8* %1, i64 %.1, !dbg !1282
  %22 = load i8, i8* %21, align 1, !dbg !1282
  %23 = zext i8 %22 to i32, !dbg !1282
  %24 = getelementptr inbounds i8, i8* %2, i64 %.1, !dbg !1284
  %25 = load i8, i8* %24, align 1, !dbg !1284
  %26 = zext i8 %25 to i32, !dbg !1284
  %27 = xor i32 %23, %26, !dbg !1285
  %28 = trunc i32 %27 to i8, !dbg !1282
  %29 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1286
  store i8 %28, i8* %29, align 1, !dbg !1287
  br label %30, !dbg !1288

30:                                               ; preds = %20
  %31 = add i64 %.1, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %31, metadata !1254, metadata !DIExpression()), !dbg !1250
  br label %18, !dbg !1290, !llvm.loop !1291

32:                                               ; preds = %18
  ret void, !dbg !1293
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_get_unaligned_uint32(i8* noalias %0) #0 !dbg !1294 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1302, metadata !DIExpression()), !dbg !1303
  %3 = bitcast i32* %2 to i8*, !dbg !1304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 1 %0, i64 4, i1 false), !dbg !1304
  %4 = load i32, i32* %2, align 4, !dbg !1305
  ret i32 %4, !dbg !1306
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint32(i8* noalias %0, i32 %1) #0 !dbg !1307 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1312, metadata !DIExpression()), !dbg !1313
  %4 = bitcast i32* %3 to i8*, !dbg !1314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %4, i64 4, i1 false), !dbg !1314
  ret void, !dbg !1315
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @mbedtls_get_unaligned_uint16(i8* noalias %0) #0 !dbg !1316 {
  %2 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1322, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.declare(metadata i16* %2, metadata !1324, metadata !DIExpression()), !dbg !1325
  %3 = bitcast i16* %2 to i8*, !dbg !1326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %3, i8* align 1 %0, i64 2, i1 false), !dbg !1326
  %4 = load i16, i16* %2, align 2, !dbg !1327
  ret i16 %4, !dbg !1328
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint16(i8* noalias %0, i16 zeroext %1) #0 !dbg !1329 {
  %3 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i16 %1, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1334, metadata !DIExpression()), !dbg !1335
  %4 = bitcast i16* %3 to i8*, !dbg !1336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 2 %4, i64 2, i1 false), !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_get_unaligned_uint64(i8* noalias %0) #0 !dbg !1338 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1343, metadata !DIExpression()), !dbg !1344
  %3 = bitcast i64* %2 to i8*, !dbg !1345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !1345
  %4 = load i64, i64* %2, align 8, !dbg !1346
  ret i64 %4, !dbg !1347
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_put_unaligned_uint64(i8* noalias %0, i64 %1) #0 !dbg !1348 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1351, metadata !DIExpression()), !dbg !1352
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1353, metadata !DIExpression()), !dbg !1354
  %4 = bitcast i64* %3 to i8*, !dbg !1355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !1355
  ret void, !dbg !1356
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* noalias %0) #0 !dbg !1357 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1369, metadata !DIExpression()), !dbg !1370
  %2 = bitcast %struct.mbedtls_poly1305_context* %0 to i8*, !dbg !1371
  call void @mbedtls_platform_zeroize(i8* %2, i64 80), !dbg !1372
  ret void, !dbg !1373
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* noalias %0) #0 !dbg !1374 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1375, metadata !DIExpression()), !dbg !1376
  %2 = icmp eq %struct.mbedtls_poly1305_context* %0, null, !dbg !1377
  br i1 %2, label %3, label %4, !dbg !1379

3:                                                ; preds = %1
  br label %6, !dbg !1380

4:                                                ; preds = %1
  %5 = bitcast %struct.mbedtls_poly1305_context* %0 to i8*, !dbg !1381
  call void @mbedtls_platform_zeroize(i8* %5, i64 80), !dbg !1382
  br label %6, !dbg !1383

6:                                                ; preds = %4, %3
  ret void, !dbg !1383
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* noalias %0, i8* noalias %1) #0 !dbg !1384 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1387, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i8* %1, metadata !1389, metadata !DIExpression()), !dbg !1388
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1390
  %4 = call i32 @mbedtls_get_unaligned_uint32(i8* %3), !dbg !1390
  %5 = and i32 %4, 268435455, !dbg !1391
  %6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1392
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1393
  store i32 %5, i32* %7, align 8, !dbg !1394
  %8 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1395
  %9 = call i32 @mbedtls_get_unaligned_uint32(i8* %8), !dbg !1395
  %10 = and i32 %9, 268435452, !dbg !1396
  %11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1397
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1, !dbg !1398
  store i32 %10, i32* %12, align 4, !dbg !1399
  %13 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1400
  %14 = call i32 @mbedtls_get_unaligned_uint32(i8* %13), !dbg !1400
  %15 = and i32 %14, 268435452, !dbg !1401
  %16 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1402
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2, !dbg !1403
  store i32 %15, i32* %17, align 8, !dbg !1404
  %18 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1405
  %19 = call i32 @mbedtls_get_unaligned_uint32(i8* %18), !dbg !1405
  %20 = and i32 %19, 268435452, !dbg !1406
  %21 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1407
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3, !dbg !1408
  store i32 %20, i32* %22, align 4, !dbg !1409
  %23 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1410
  %24 = call i32 @mbedtls_get_unaligned_uint32(i8* %23), !dbg !1410
  %25 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1411
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !1412
  store i32 %24, i32* %26, align 8, !dbg !1413
  %27 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1414
  %28 = call i32 @mbedtls_get_unaligned_uint32(i8* %27), !dbg !1414
  %29 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1415
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1, !dbg !1416
  store i32 %28, i32* %30, align 4, !dbg !1417
  %31 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1418
  %32 = call i32 @mbedtls_get_unaligned_uint32(i8* %31), !dbg !1418
  %33 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1419
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 2, !dbg !1420
  store i32 %32, i32* %34, align 8, !dbg !1421
  %35 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !1422
  %36 = call i32 @mbedtls_get_unaligned_uint32(i8* %35), !dbg !1422
  %37 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1423
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 3, !dbg !1424
  store i32 %36, i32* %38, align 4, !dbg !1425
  %39 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1426
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 0, !dbg !1427
  store i32 0, i32* %40, align 8, !dbg !1428
  %41 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1429
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %41, i64 0, i64 1, !dbg !1430
  store i32 0, i32* %42, align 4, !dbg !1431
  %43 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1432
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 2, !dbg !1433
  store i32 0, i32* %44, align 8, !dbg !1434
  %45 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1435
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %45, i64 0, i64 3, !dbg !1436
  store i32 0, i32* %46, align 4, !dbg !1437
  %47 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1438
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 4, !dbg !1439
  store i32 0, i32* %48, align 8, !dbg !1440
  %49 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1441
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %49, i64 0, i64 0, !dbg !1442
  call void @mbedtls_platform_zeroize(i8* %50, i64 16), !dbg !1443
  %51 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1444
  store i64 0, i64* %51, align 8, !dbg !1445
  ret i32 0, !dbg !1446
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !1447 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1450, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8* %1, metadata !1452, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %2, metadata !1453, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 0, metadata !1454, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %2, metadata !1455, metadata !DIExpression()), !dbg !1451
  %4 = icmp ugt i64 %2, 0, !dbg !1456
  br i1 %4, label %5, label %33, !dbg !1458

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1459
  %7 = load i64, i64* %6, align 8, !dbg !1459
  %8 = icmp ugt i64 %7, 0, !dbg !1460
  br i1 %8, label %9, label %33, !dbg !1461

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1462
  %11 = load i64, i64* %10, align 8, !dbg !1462
  %12 = sub i64 16, %11, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %12, metadata !1465, metadata !DIExpression()), !dbg !1451
  %13 = icmp ult i64 %2, %12, !dbg !1466
  br i1 %13, label %14, label %22, !dbg !1468

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1469
  %16 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1471
  %17 = load i64, i64* %16, align 8, !dbg !1471
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 %17, !dbg !1472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %1, i64 %2, i1 false), !dbg !1473
  %19 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1474
  %20 = load i64, i64* %19, align 8, !dbg !1475
  %21 = add i64 %20, %2, !dbg !1475
  store i64 %21, i64* %19, align 8, !dbg !1475
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1451
  br label %32, !dbg !1476

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1477
  %24 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1479
  %25 = load i64, i64* %24, align 8, !dbg !1479
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %25, !dbg !1480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %1, i64 %12, i1 false), !dbg !1481
  %27 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1482
  store i64 0, i64* %27, align 8, !dbg !1483
  %28 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1484
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 0, !dbg !1485
  call void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 1, i8* %29, i32 1), !dbg !1486
  %30 = add i64 0, %12, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %30, metadata !1454, metadata !DIExpression()), !dbg !1451
  %31 = sub i64 %2, %12, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %31, metadata !1455, metadata !DIExpression()), !dbg !1451
  br label %32

32:                                               ; preds = %22, %14
  %.01 = phi i64 [ 0, %14 ], [ %30, %22 ], !dbg !1451
  %.0 = phi i64 [ 0, %14 ], [ %31, %22 ], !dbg !1489
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1455, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1454, metadata !DIExpression()), !dbg !1451
  br label %33, !dbg !1490

33:                                               ; preds = %32, %5, %3
  %.12 = phi i64 [ %.01, %32 ], [ 0, %5 ], [ 0, %3 ], !dbg !1491
  %.1 = phi i64 [ %.0, %32 ], [ %2, %5 ], [ %2, %3 ], !dbg !1451
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1455, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %.12, metadata !1454, metadata !DIExpression()), !dbg !1451
  %34 = icmp uge i64 %.1, 16, !dbg !1492
  br i1 %34, label %35, label %41, !dbg !1494

35:                                               ; preds = %33
  %36 = udiv i64 %.1, 16, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %36, metadata !1497, metadata !DIExpression()), !dbg !1451
  %37 = getelementptr inbounds i8, i8* %1, i64 %.12, !dbg !1498
  call void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 %36, i8* %37, i32 1), !dbg !1499
  %38 = mul i64 %36, 16, !dbg !1500
  %39 = add i64 %.12, %38, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %39, metadata !1454, metadata !DIExpression()), !dbg !1451
  %40 = urem i64 %.1, 16, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %40, metadata !1455, metadata !DIExpression()), !dbg !1451
  br label %41, !dbg !1503

41:                                               ; preds = %35, %33
  %.23 = phi i64 [ %39, %35 ], [ %.12, %33 ], !dbg !1451
  %.2 = phi i64 [ %40, %35 ], [ %.1, %33 ], !dbg !1451
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1455, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %.23, metadata !1454, metadata !DIExpression()), !dbg !1451
  %42 = icmp ugt i64 %.2, 0, !dbg !1504
  br i1 %42, label %43, label %48, !dbg !1506

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1507
  store i64 %.2, i64* %44, align 8, !dbg !1509
  %45 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1510
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0, !dbg !1511
  %47 = getelementptr inbounds i8, i8* %1, i64 %.23, !dbg !1512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 1 %47, i64 %.2, i1 false), !dbg !1511
  br label %48, !dbg !1513

48:                                               ; preds = %43, %41
  ret i32 0, !dbg !1514
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_process(%struct.mbedtls_poly1305_context* noalias %0, i64 %1, i8* noalias %2, i32 %3) #0 !dbg !1515 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1518, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i64 %1, metadata !1520, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %2, metadata !1521, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %3, metadata !1522, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i64 0, metadata !1523, metadata !DIExpression()), !dbg !1519
  %5 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1524
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1525
  %7 = load i32, i32* %6, align 8, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %7, metadata !1526, metadata !DIExpression()), !dbg !1519
  %8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1527
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1, !dbg !1528
  %10 = load i32, i32* %9, align 4, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %10, metadata !1529, metadata !DIExpression()), !dbg !1519
  %11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1530
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2, !dbg !1531
  %13 = load i32, i32* %12, align 8, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %13, metadata !1532, metadata !DIExpression()), !dbg !1519
  %14 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0, !dbg !1533
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3, !dbg !1534
  %16 = load i32, i32* %15, align 4, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %16, metadata !1535, metadata !DIExpression()), !dbg !1519
  %17 = lshr i32 %10, 2, !dbg !1536
  %18 = add i32 %10, %17, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %18, metadata !1538, metadata !DIExpression()), !dbg !1519
  %19 = lshr i32 %13, 2, !dbg !1539
  %20 = add i32 %13, %19, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %20, metadata !1541, metadata !DIExpression()), !dbg !1519
  %21 = lshr i32 %16, 2, !dbg !1542
  %22 = add i32 %16, %21, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %22, metadata !1544, metadata !DIExpression()), !dbg !1519
  %23 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1545
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0, !dbg !1546
  %25 = load i32, i32* %24, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %25, metadata !1547, metadata !DIExpression()), !dbg !1519
  %26 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1548
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1, !dbg !1549
  %28 = load i32, i32* %27, align 4, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %28, metadata !1550, metadata !DIExpression()), !dbg !1519
  %29 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1551
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %29, i64 0, i64 2, !dbg !1552
  %31 = load i32, i32* %30, align 8, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %31, metadata !1553, metadata !DIExpression()), !dbg !1519
  %32 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1554
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %32, i64 0, i64 3, !dbg !1555
  %34 = load i32, i32* %33, align 4, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %34, metadata !1556, metadata !DIExpression()), !dbg !1519
  %35 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1557
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %35, i64 0, i64 4, !dbg !1558
  %37 = load i32, i32* %36, align 8, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %37, metadata !1559, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i64 0, metadata !1560, metadata !DIExpression()), !dbg !1519
  br label %38, !dbg !1561

38:                                               ; preds = %153, %4
  %.06 = phi i32 [ %25, %4 ], [ %135, %153 ], !dbg !1519
  %.05 = phi i32 [ %28, %4 ], [ %139, %153 ], !dbg !1519
  %.04 = phi i32 [ %31, %4 ], [ %143, %153 ], !dbg !1519
  %.03 = phi i32 [ %34, %4 ], [ %147, %153 ], !dbg !1519
  %.02 = phi i32 [ %37, %4 ], [ %151, %153 ], !dbg !1519
  %.01 = phi i64 [ 0, %4 ], [ %152, %153 ], !dbg !1519
  %.0 = phi i64 [ 0, %4 ], [ %154, %153 ], !dbg !1563
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1560, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1523, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1559, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1556, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1553, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1550, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1547, metadata !DIExpression()), !dbg !1519
  %39 = icmp ult i64 %.0, %1, !dbg !1564
  br i1 %39, label %40, label %155, !dbg !1566

40:                                               ; preds = %38
  %41 = add i64 %.01, 0, !dbg !1567
  %42 = getelementptr inbounds i8, i8* %2, i64 %41, !dbg !1567
  %43 = call i32 @mbedtls_get_unaligned_uint32(i8* %42), !dbg !1567
  %44 = zext i32 %43 to i64, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %44, metadata !1569, metadata !DIExpression()), !dbg !1519
  %45 = add i64 %.01, 4, !dbg !1570
  %46 = getelementptr inbounds i8, i8* %2, i64 %45, !dbg !1570
  %47 = call i32 @mbedtls_get_unaligned_uint32(i8* %46), !dbg !1570
  %48 = zext i32 %47 to i64, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %48, metadata !1571, metadata !DIExpression()), !dbg !1519
  %49 = add i64 %.01, 8, !dbg !1572
  %50 = getelementptr inbounds i8, i8* %2, i64 %49, !dbg !1572
  %51 = call i32 @mbedtls_get_unaligned_uint32(i8* %50), !dbg !1572
  %52 = zext i32 %51 to i64, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %52, metadata !1573, metadata !DIExpression()), !dbg !1519
  %53 = add i64 %.01, 12, !dbg !1574
  %54 = getelementptr inbounds i8, i8* %2, i64 %53, !dbg !1574
  %55 = call i32 @mbedtls_get_unaligned_uint32(i8* %54), !dbg !1574
  %56 = zext i32 %55 to i64, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %56, metadata !1575, metadata !DIExpression()), !dbg !1519
  %57 = zext i32 %.06 to i64, !dbg !1576
  %58 = add i64 %44, %57, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %58, metadata !1569, metadata !DIExpression()), !dbg !1519
  %59 = zext i32 %.05 to i64, !dbg !1578
  %60 = lshr i64 %58, 32, !dbg !1579
  %61 = add i64 %59, %60, !dbg !1580
  %62 = add i64 %48, %61, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %62, metadata !1571, metadata !DIExpression()), !dbg !1519
  %63 = zext i32 %.04 to i64, !dbg !1582
  %64 = lshr i64 %62, 32, !dbg !1583
  %65 = add i64 %63, %64, !dbg !1584
  %66 = add i64 %52, %65, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %66, metadata !1573, metadata !DIExpression()), !dbg !1519
  %67 = zext i32 %.03 to i64, !dbg !1586
  %68 = lshr i64 %66, 32, !dbg !1587
  %69 = add i64 %67, %68, !dbg !1588
  %70 = add i64 %56, %69, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %70, metadata !1575, metadata !DIExpression()), !dbg !1519
  %71 = trunc i64 %58 to i32, !dbg !1590
  call void @llvm.dbg.value(metadata i32 %71, metadata !1547, metadata !DIExpression()), !dbg !1519
  %72 = trunc i64 %62 to i32, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %72, metadata !1550, metadata !DIExpression()), !dbg !1519
  %73 = trunc i64 %66 to i32, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %73, metadata !1553, metadata !DIExpression()), !dbg !1519
  %74 = trunc i64 %70 to i32, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %74, metadata !1556, metadata !DIExpression()), !dbg !1519
  %75 = lshr i64 %70, 32, !dbg !1594
  %76 = trunc i64 %75 to i32, !dbg !1595
  %77 = add i32 %76, %3, !dbg !1596
  %78 = add i32 %.02, %77, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %78, metadata !1559, metadata !DIExpression()), !dbg !1519
  %79 = call i64 @mul64(i32 %71, i32 %7), !dbg !1598
  %80 = call i64 @mul64(i32 %72, i32 %22), !dbg !1599
  %81 = add i64 %79, %80, !dbg !1600
  %82 = call i64 @mul64(i32 %73, i32 %20), !dbg !1601
  %83 = add i64 %81, %82, !dbg !1602
  %84 = call i64 @mul64(i32 %74, i32 %18), !dbg !1603
  %85 = add i64 %83, %84, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %85, metadata !1569, metadata !DIExpression()), !dbg !1519
  %86 = call i64 @mul64(i32 %71, i32 %10), !dbg !1605
  %87 = call i64 @mul64(i32 %72, i32 %7), !dbg !1606
  %88 = add i64 %86, %87, !dbg !1607
  %89 = call i64 @mul64(i32 %73, i32 %22), !dbg !1608
  %90 = add i64 %88, %89, !dbg !1609
  %91 = call i64 @mul64(i32 %74, i32 %20), !dbg !1610
  %92 = add i64 %90, %91, !dbg !1611
  %93 = call i64 @mul64(i32 %78, i32 %18), !dbg !1612
  %94 = add i64 %92, %93, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %94, metadata !1571, metadata !DIExpression()), !dbg !1519
  %95 = call i64 @mul64(i32 %71, i32 %13), !dbg !1614
  %96 = call i64 @mul64(i32 %72, i32 %10), !dbg !1615
  %97 = add i64 %95, %96, !dbg !1616
  %98 = call i64 @mul64(i32 %73, i32 %7), !dbg !1617
  %99 = add i64 %97, %98, !dbg !1618
  %100 = call i64 @mul64(i32 %74, i32 %22), !dbg !1619
  %101 = add i64 %99, %100, !dbg !1620
  %102 = call i64 @mul64(i32 %78, i32 %20), !dbg !1621
  %103 = add i64 %101, %102, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %103, metadata !1573, metadata !DIExpression()), !dbg !1519
  %104 = call i64 @mul64(i32 %71, i32 %16), !dbg !1623
  %105 = call i64 @mul64(i32 %72, i32 %13), !dbg !1624
  %106 = add i64 %104, %105, !dbg !1625
  %107 = call i64 @mul64(i32 %73, i32 %10), !dbg !1626
  %108 = add i64 %106, %107, !dbg !1627
  %109 = call i64 @mul64(i32 %74, i32 %7), !dbg !1628
  %110 = add i64 %108, %109, !dbg !1629
  %111 = call i64 @mul64(i32 %78, i32 %22), !dbg !1630
  %112 = add i64 %110, %111, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %112, metadata !1575, metadata !DIExpression()), !dbg !1519
  %113 = mul i32 %78, %7, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %113, metadata !1559, metadata !DIExpression()), !dbg !1519
  %114 = lshr i64 %85, 32, !dbg !1633
  %115 = add i64 %94, %114, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %115, metadata !1571, metadata !DIExpression()), !dbg !1519
  %116 = lshr i64 %115, 32, !dbg !1635
  %117 = add i64 %103, %116, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %117, metadata !1573, metadata !DIExpression()), !dbg !1519
  %118 = lshr i64 %117, 32, !dbg !1637
  %119 = add i64 %112, %118, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %119, metadata !1575, metadata !DIExpression()), !dbg !1519
  %120 = trunc i64 %85 to i32, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %120, metadata !1547, metadata !DIExpression()), !dbg !1519
  %121 = trunc i64 %115 to i32, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %121, metadata !1550, metadata !DIExpression()), !dbg !1519
  %122 = trunc i64 %117 to i32, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %122, metadata !1553, metadata !DIExpression()), !dbg !1519
  %123 = trunc i64 %119 to i32, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %123, metadata !1556, metadata !DIExpression()), !dbg !1519
  %124 = lshr i64 %119, 32, !dbg !1643
  %125 = trunc i64 %124 to i32, !dbg !1644
  %126 = add i32 %125, %113, !dbg !1645
  call void @llvm.dbg.value(metadata i32 %126, metadata !1559, metadata !DIExpression()), !dbg !1519
  %127 = zext i32 %120 to i64, !dbg !1646
  %128 = lshr i32 %126, 2, !dbg !1647
  %129 = zext i32 %128 to i64, !dbg !1648
  %130 = add i64 %127, %129, !dbg !1649
  %131 = and i32 %126, -4, !dbg !1650
  %132 = zext i32 %131 to i64, !dbg !1651
  %133 = add i64 %130, %132, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %133, metadata !1569, metadata !DIExpression()), !dbg !1519
  %134 = and i32 %126, 3, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %134, metadata !1559, metadata !DIExpression()), !dbg !1519
  %135 = trunc i64 %133 to i32, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %135, metadata !1547, metadata !DIExpression()), !dbg !1519
  %136 = zext i32 %121 to i64, !dbg !1655
  %137 = lshr i64 %133, 32, !dbg !1656
  %138 = add i64 %136, %137, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %138, metadata !1569, metadata !DIExpression()), !dbg !1519
  %139 = trunc i64 %138 to i32, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %139, metadata !1550, metadata !DIExpression()), !dbg !1519
  %140 = zext i32 %122 to i64, !dbg !1659
  %141 = lshr i64 %138, 32, !dbg !1660
  %142 = add i64 %140, %141, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %142, metadata !1569, metadata !DIExpression()), !dbg !1519
  %143 = trunc i64 %142 to i32, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %143, metadata !1553, metadata !DIExpression()), !dbg !1519
  %144 = zext i32 %123 to i64, !dbg !1663
  %145 = lshr i64 %142, 32, !dbg !1664
  %146 = add i64 %144, %145, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %146, metadata !1569, metadata !DIExpression()), !dbg !1519
  %147 = trunc i64 %146 to i32, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %147, metadata !1556, metadata !DIExpression()), !dbg !1519
  %148 = zext i32 %134 to i64, !dbg !1667
  %149 = lshr i64 %146, 32, !dbg !1668
  %150 = add i64 %148, %149, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %150, metadata !1569, metadata !DIExpression()), !dbg !1519
  %151 = trunc i64 %150 to i32, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %151, metadata !1559, metadata !DIExpression()), !dbg !1519
  %152 = add i64 %.01, 16, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %152, metadata !1523, metadata !DIExpression()), !dbg !1519
  br label %153, !dbg !1672

153:                                              ; preds = %40
  %154 = add i64 %.0, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %154, metadata !1560, metadata !DIExpression()), !dbg !1519
  br label %38, !dbg !1674, !llvm.loop !1675

155:                                              ; preds = %38
  %156 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1677
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %156, i64 0, i64 0, !dbg !1678
  store i32 %.06, i32* %157, align 8, !dbg !1679
  %158 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1680
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %158, i64 0, i64 1, !dbg !1681
  store i32 %.05, i32* %159, align 4, !dbg !1682
  %160 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1683
  %161 = getelementptr inbounds [5 x i32], [5 x i32]* %160, i64 0, i64 2, !dbg !1684
  store i32 %.04, i32* %161, align 8, !dbg !1685
  %162 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1686
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %162, i64 0, i64 3, !dbg !1687
  store i32 %.03, i32* %163, align 4, !dbg !1688
  %164 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1689
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %164, i64 0, i64 4, !dbg !1690
  store i32 %.02, i32* %165, align 8, !dbg !1691
  ret void, !dbg !1692
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mul64(i32 %0, i32 %1) #0 !dbg !1693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1696, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %1, metadata !1698, metadata !DIExpression()), !dbg !1697
  %3 = zext i32 %0 to i64, !dbg !1699
  %4 = zext i32 %1 to i64, !dbg !1700
  %5 = mul i64 %3, %4, !dbg !1701
  ret i64 %5, !dbg !1702
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* noalias %0, i8* noalias %1) #0 !dbg !1703 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1706, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %1, metadata !1708, metadata !DIExpression()), !dbg !1707
  %3 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1709
  %4 = load i64, i64* %3, align 8, !dbg !1709
  %5 = icmp ugt i64 %4, 0, !dbg !1711
  br i1 %5, label %6, label %23, !dbg !1712

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1713
  %8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1715
  %9 = load i64, i64* %8, align 8, !dbg !1715
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %9, !dbg !1716
  store i8 1, i8* %10, align 1, !dbg !1717
  %11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1718
  %12 = load i64, i64* %11, align 8, !dbg !1719
  %13 = add i64 %12, 1, !dbg !1719
  store i64 %13, i64* %11, align 8, !dbg !1719
  %14 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1720
  %15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1721
  %16 = load i64, i64* %15, align 8, !dbg !1721
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %16, !dbg !1722
  %18 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4, !dbg !1723
  %19 = load i64, i64* %18, align 8, !dbg !1723
  %20 = sub i64 16, %19, !dbg !1724
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 %20, i1 false), !dbg !1725
  %21 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 3, !dbg !1726
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0, !dbg !1727
  call void @poly1305_process(%struct.mbedtls_poly1305_context* %0, i64 1, i8* %22, i32 0), !dbg !1728
  br label %23, !dbg !1729

23:                                               ; preds = %6, %2
  call void @poly1305_compute_mac(%struct.mbedtls_poly1305_context* %0, i8* %1), !dbg !1730
  ret i32 0, !dbg !1731
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_compute_mac(%struct.mbedtls_poly1305_context* noalias %0, i8* noalias %1) #0 !dbg !1732 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_poly1305_context* %0, metadata !1737, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8* %1, metadata !1739, metadata !DIExpression()), !dbg !1738
  %3 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1740
  %4 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0, !dbg !1741
  %5 = load i32, i32* %4, align 8, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %5, metadata !1742, metadata !DIExpression()), !dbg !1738
  %6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1743
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1, !dbg !1744
  %8 = load i32, i32* %7, align 4, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %8, metadata !1745, metadata !DIExpression()), !dbg !1738
  %9 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1746
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2, !dbg !1747
  %11 = load i32, i32* %10, align 8, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %11, metadata !1748, metadata !DIExpression()), !dbg !1738
  %12 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1749
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3, !dbg !1750
  %14 = load i32, i32* %13, align 4, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %14, metadata !1751, metadata !DIExpression()), !dbg !1738
  %15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2, !dbg !1752
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4, !dbg !1753
  %17 = load i32, i32* %16, align 8, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %17, metadata !1754, metadata !DIExpression()), !dbg !1738
  %18 = zext i32 %5 to i64, !dbg !1755
  %19 = add i64 %18, 5, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %19, metadata !1757, metadata !DIExpression()), !dbg !1738
  %20 = trunc i64 %19 to i32, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %20, metadata !1759, metadata !DIExpression()), !dbg !1738
  %21 = zext i32 %8 to i64, !dbg !1760
  %22 = lshr i64 %19, 32, !dbg !1761
  %23 = add i64 %21, %22, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %23, metadata !1757, metadata !DIExpression()), !dbg !1738
  %24 = trunc i64 %23 to i32, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %24, metadata !1764, metadata !DIExpression()), !dbg !1738
  %25 = zext i32 %11 to i64, !dbg !1765
  %26 = lshr i64 %23, 32, !dbg !1766
  %27 = add i64 %25, %26, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %27, metadata !1757, metadata !DIExpression()), !dbg !1738
  %28 = trunc i64 %27 to i32, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %28, metadata !1769, metadata !DIExpression()), !dbg !1738
  %29 = zext i32 %14 to i64, !dbg !1770
  %30 = lshr i64 %27, 32, !dbg !1771
  %31 = add i64 %29, %30, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %31, metadata !1757, metadata !DIExpression()), !dbg !1738
  %32 = trunc i64 %31 to i32, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %32, metadata !1774, metadata !DIExpression()), !dbg !1738
  %33 = lshr i64 %31, 32, !dbg !1775
  %34 = trunc i64 %33 to i32, !dbg !1776
  %35 = add i32 %17, %34, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %35, metadata !1778, metadata !DIExpression()), !dbg !1738
  %36 = lshr i32 %35, 2, !dbg !1779
  %37 = sub i32 0, %36, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %37, metadata !1781, metadata !DIExpression()), !dbg !1738
  %38 = xor i32 %37, -1, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %38, metadata !1783, metadata !DIExpression()), !dbg !1738
  %39 = and i32 %5, %38, !dbg !1784
  %40 = and i32 %20, %37, !dbg !1785
  %41 = or i32 %39, %40, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %41, metadata !1742, metadata !DIExpression()), !dbg !1738
  %42 = and i32 %8, %38, !dbg !1787
  %43 = and i32 %24, %37, !dbg !1788
  %44 = or i32 %42, %43, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %44, metadata !1745, metadata !DIExpression()), !dbg !1738
  %45 = and i32 %11, %38, !dbg !1790
  %46 = and i32 %28, %37, !dbg !1791
  %47 = or i32 %45, %46, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %47, metadata !1748, metadata !DIExpression()), !dbg !1738
  %48 = and i32 %14, %38, !dbg !1793
  %49 = and i32 %32, %37, !dbg !1794
  %50 = or i32 %48, %49, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %50, metadata !1751, metadata !DIExpression()), !dbg !1738
  %51 = zext i32 %41 to i64, !dbg !1796
  %52 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1797
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i64 0, i64 0, !dbg !1798
  %54 = load i32, i32* %53, align 8, !dbg !1798
  %55 = zext i32 %54 to i64, !dbg !1798
  %56 = add i64 %51, %55, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %56, metadata !1757, metadata !DIExpression()), !dbg !1738
  %57 = trunc i64 %56 to i32, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %57, metadata !1742, metadata !DIExpression()), !dbg !1738
  %58 = zext i32 %44 to i64, !dbg !1801
  %59 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1802
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 0, i64 1, !dbg !1803
  %61 = load i32, i32* %60, align 4, !dbg !1803
  %62 = zext i32 %61 to i64, !dbg !1803
  %63 = add i64 %58, %62, !dbg !1804
  %64 = lshr i64 %56, 32, !dbg !1805
  %65 = add i64 %63, %64, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %65, metadata !1757, metadata !DIExpression()), !dbg !1738
  %66 = trunc i64 %65 to i32, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %66, metadata !1745, metadata !DIExpression()), !dbg !1738
  %67 = zext i32 %47 to i64, !dbg !1808
  %68 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1809
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i64 0, i64 2, !dbg !1810
  %70 = load i32, i32* %69, align 8, !dbg !1810
  %71 = zext i32 %70 to i64, !dbg !1810
  %72 = add i64 %67, %71, !dbg !1811
  %73 = lshr i64 %65, 32, !dbg !1812
  %74 = add i64 %72, %73, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %74, metadata !1757, metadata !DIExpression()), !dbg !1738
  %75 = trunc i64 %74 to i32, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %75, metadata !1748, metadata !DIExpression()), !dbg !1738
  %76 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 1, !dbg !1815
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 3, !dbg !1816
  %78 = load i32, i32* %77, align 4, !dbg !1816
  %79 = lshr i64 %74, 32, !dbg !1817
  %80 = trunc i64 %79 to i32, !dbg !1818
  %81 = add i32 %78, %80, !dbg !1819
  %82 = add i32 %50, %81, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %82, metadata !1751, metadata !DIExpression()), !dbg !1738
  %83 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1821
  call void @mbedtls_put_unaligned_uint32(i8* %83, i32 %57), !dbg !1821
  %84 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1825
  call void @mbedtls_put_unaligned_uint32(i8* %84, i32 %66), !dbg !1825
  %85 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1829
  call void @mbedtls_put_unaligned_uint32(i8* %85, i32 %75), !dbg !1829
  %86 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1833
  call void @mbedtls_put_unaligned_uint32(i8* %86, i32 %82), !dbg !1833
  ret void, !dbg !1837
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_mac(i8* noalias %0, i8* noalias %1, i64 %2, i8* noalias %3) #0 !dbg !1838 {
  %5 = alloca %struct.mbedtls_poly1305_context, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1841, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %1, metadata !1843, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %2, metadata !1844, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %3, metadata !1845, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.declare(metadata %struct.mbedtls_poly1305_context* %5, metadata !1846, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 -110, metadata !1848, metadata !DIExpression()), !dbg !1842
  call void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* %5), !dbg !1849
  %6 = call i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* %5, i8* %0), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %6, metadata !1848, metadata !DIExpression()), !dbg !1842
  %7 = icmp ne i32 %6, 0, !dbg !1851
  br i1 %7, label %8, label %9, !dbg !1853

8:                                                ; preds = %4
  br label %15, !dbg !1854

9:                                                ; preds = %4
  %10 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* %5, i8* %1, i64 %2), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %10, metadata !1848, metadata !DIExpression()), !dbg !1842
  %11 = icmp ne i32 %10, 0, !dbg !1856
  br i1 %11, label %12, label %13, !dbg !1858

12:                                               ; preds = %9
  br label %15, !dbg !1859

13:                                               ; preds = %9
  %14 = call i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* %5, i8* %3), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %14, metadata !1848, metadata !DIExpression()), !dbg !1842
  br label %15, !dbg !1861

15:                                               ; preds = %13, %12, %8
  %.0 = phi i32 [ %6, %8 ], [ %10, %12 ], [ %14, %13 ], !dbg !1842
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1848, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.label(metadata !1862), !dbg !1863
  call void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* %5), !dbg !1864
  ret i32 %.0, !dbg !1865
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_poly1305_self_test(i32 %0) #0 !dbg !1866 {
  %2 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !1869, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 -110, metadata !1871, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 0, metadata !1872, metadata !DIExpression()), !dbg !1868
  br label %3, !dbg !1873

3:                                                ; preds = %48, %1
  %.01 = phi i32 [ 0, %1 ], [ %49, %48 ], !dbg !1875
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1872, metadata !DIExpression()), !dbg !1868
  %4 = icmp ult i32 %.01, 2, !dbg !1876
  br i1 %4, label %5, label %50, !dbg !1878

5:                                                ; preds = %3
  %6 = icmp ne i32 %0, 0, !dbg !1879
  br i1 %6, label %7, label %9, !dbg !1882

7:                                                ; preds = %5
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 %.01), !dbg !1883
  br label %9, !dbg !1883

9:                                                ; preds = %7, %5
  %10 = zext i32 %.01 to i64, !dbg !1884
  %11 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* @test_keys.34, i64 0, i64 %10, !dbg !1884
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0, !dbg !1884
  %13 = zext i32 %.01 to i64, !dbg !1885
  %14 = getelementptr inbounds [2 x [127 x i8]], [2 x [127 x i8]]* bitcast (<{ <{ [34 x i8], [93 x i8] }>, [127 x i8] }>* @test_data to [2 x [127 x i8]]*), i64 0, i64 %13, !dbg !1885
  %15 = getelementptr inbounds [127 x i8], [127 x i8]* %14, i64 0, i64 0, !dbg !1885
  %16 = zext i32 %.01 to i64, !dbg !1886
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* @test_data_len, i64 0, i64 %16, !dbg !1886
  %18 = load i64, i64* %17, align 8, !dbg !1886
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !1887
  %20 = call i32 @mbedtls_poly1305_mac(i8* %12, i8* %15, i64 %18, i8* %19), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %20, metadata !1871, metadata !DIExpression()), !dbg !1868
  br label %21, !dbg !1889

21:                                               ; preds = %9
  %22 = icmp eq i32 0, %20, !dbg !1890
  br i1 %22, label %28, label %23, !dbg !1893

23:                                               ; preds = %21
  %24 = icmp ne i32 %0, 0, !dbg !1894
  br i1 %24, label %25, label %27, !dbg !1897

25:                                               ; preds = %23
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.35, i64 0, i64 0), i32 %20), !dbg !1894
  br label %27, !dbg !1894

27:                                               ; preds = %25, %23
  br label %55, !dbg !1897

28:                                               ; preds = %21
  br label %29, !dbg !1893

29:                                               ; preds = %28
  br label %30, !dbg !1898

30:                                               ; preds = %29
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !1899
  %32 = zext i32 %.01 to i64, !dbg !1899
  %33 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* @test_mac.36, i64 0, i64 %32, !dbg !1899
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i64 0, i64 0, !dbg !1899
  %35 = call i32 @memcmp(i8* %31, i8* %34, i64 16) #7, !dbg !1899
  %36 = icmp eq i32 0, %35, !dbg !1899
  br i1 %36, label %42, label %37, !dbg !1902

37:                                               ; preds = %30
  %38 = icmp ne i32 %0, 0, !dbg !1903
  br i1 %38, label %39, label %41, !dbg !1906

39:                                               ; preds = %37
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.37, i64 0, i64 0)), !dbg !1903
  br label %41, !dbg !1903

41:                                               ; preds = %39, %37
  br label %55, !dbg !1906

42:                                               ; preds = %30
  br label %43, !dbg !1902

43:                                               ; preds = %42
  %44 = icmp ne i32 %0, 0, !dbg !1907
  br i1 %44, label %45, label %47, !dbg !1909

45:                                               ; preds = %43
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.38, i64 0, i64 0)), !dbg !1910
  br label %47, !dbg !1910

47:                                               ; preds = %45, %43
  br label %48, !dbg !1911

48:                                               ; preds = %47
  %49 = add i32 %.01, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %49, metadata !1872, metadata !DIExpression()), !dbg !1868
  br label %3, !dbg !1913, !llvm.loop !1914

50:                                               ; preds = %3
  %51 = icmp ne i32 %0, 0, !dbg !1916
  br i1 %51, label %52, label %54, !dbg !1918

52:                                               ; preds = %50
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.39, i64 0, i64 0)), !dbg !1919
  br label %54, !dbg !1919

54:                                               ; preds = %52, %50
  br label %55, !dbg !1920

55:                                               ; preds = %54, %41, %27
  %.0 = phi i32 [ -1, %41 ], [ -1, %27 ], [ 0, %54 ], !dbg !1868
  ret i32 %.0, !dbg !1921
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

!llvm.dbg.cu = !{!2, !45, !100, !102, !86}
!llvm.ident = !{!104, !104, !104, !104, !104}
!llvm.module.flags = !{!105, !106, !107}

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
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "encrypt_and_tag.c", directory: "/home/luwei/bech/Mbed/chacha20poly")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../mbedtls/library/platform_util.c", directory: "/home/luwei/bech/Mbed/chacha20poly")
!104 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!105 = !{i32 7, !"Dwarf Version", i32 4}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = distinct !DISubprogram(name: "mbedtls_chacha20_init", scope: !3, file: !3, line: 155, type: !109, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chacha20_context", file: !113, line: 56, baseType: !114)
!113 = !DIFile(filename: "../mbedtls/include/mbedtls/chacha20.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chacha20_context", file: !113, line: 50, size: 1088, elements: !115)
!115 = !{!116, !119, !125}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !114, file: !113, line: 52, baseType: !117, size: 512)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !118)
!118 = !{!81}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "keystream8", scope: !114, file: !113, line: 53, baseType: !120, size: 512, offset: 512)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !123)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !17)
!123 = !{!124}
!124 = !DISubrange(count: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "keystream_bytes_used", scope: !114, file: !113, line: 54, baseType: !30, size: 64, offset: 1024)
!126 = !DILocalVariable(name: "ctx", arg: 1, scope: !108, file: !3, line: 155, type: !111)
!127 = !DILocation(line: 0, scope: !108)
!128 = !DILocation(line: 157, column: 36, scope: !108)
!129 = !DILocation(line: 157, column: 31, scope: !108)
!130 = !DILocation(line: 157, column: 5, scope: !108)
!131 = !DILocation(line: 158, column: 36, scope: !108)
!132 = !DILocation(line: 158, column: 31, scope: !108)
!133 = !DILocation(line: 158, column: 5, scope: !108)
!134 = !DILocation(line: 161, column: 10, scope: !108)
!135 = !DILocation(line: 161, column: 31, scope: !108)
!136 = !DILocation(line: 162, column: 1, scope: !108)
!137 = distinct !DISubprogram(name: "mbedtls_chacha20_free", scope: !3, file: !3, line: 164, type: !109, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DILocalVariable(name: "ctx", arg: 1, scope: !137, file: !3, line: 164, type: !111)
!139 = !DILocation(line: 0, scope: !137)
!140 = !DILocation(line: 166, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 166, column: 9)
!142 = !DILocation(line: 166, column: 9, scope: !137)
!143 = !DILocation(line: 168, column: 35, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 167, column: 5)
!145 = !DILocation(line: 168, column: 9, scope: !144)
!146 = !DILocation(line: 169, column: 5, scope: !144)
!147 = !DILocation(line: 170, column: 1, scope: !137)
!148 = distinct !DISubprogram(name: "mbedtls_chacha20_setkey", scope: !3, file: !3, line: 172, type: !149, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !111, !152}
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!153 = !DILocalVariable(name: "ctx", arg: 1, scope: !148, file: !3, line: 172, type: !111)
!154 = !DILocation(line: 0, scope: !148)
!155 = !DILocalVariable(name: "key", arg: 2, scope: !148, file: !3, line: 173, type: !152)
!156 = !DILocation(line: 176, column: 10, scope: !148)
!157 = !DILocation(line: 176, column: 5, scope: !148)
!158 = !DILocation(line: 176, column: 19, scope: !148)
!159 = !DILocation(line: 177, column: 10, scope: !148)
!160 = !DILocation(line: 177, column: 5, scope: !148)
!161 = !DILocation(line: 177, column: 19, scope: !148)
!162 = !DILocation(line: 178, column: 10, scope: !148)
!163 = !DILocation(line: 178, column: 5, scope: !148)
!164 = !DILocation(line: 178, column: 19, scope: !148)
!165 = !DILocation(line: 179, column: 10, scope: !148)
!166 = !DILocation(line: 179, column: 5, scope: !148)
!167 = !DILocation(line: 179, column: 19, scope: !148)
!168 = !DILocation(line: 182, column: 22, scope: !148)
!169 = !DILocation(line: 182, column: 10, scope: !148)
!170 = !DILocation(line: 182, column: 5, scope: !148)
!171 = !DILocation(line: 182, column: 20, scope: !148)
!172 = !DILocation(line: 183, column: 22, scope: !148)
!173 = !DILocation(line: 183, column: 10, scope: !148)
!174 = !DILocation(line: 183, column: 5, scope: !148)
!175 = !DILocation(line: 183, column: 20, scope: !148)
!176 = !DILocation(line: 184, column: 22, scope: !148)
!177 = !DILocation(line: 184, column: 10, scope: !148)
!178 = !DILocation(line: 184, column: 5, scope: !148)
!179 = !DILocation(line: 184, column: 20, scope: !148)
!180 = !DILocation(line: 185, column: 22, scope: !148)
!181 = !DILocation(line: 185, column: 10, scope: !148)
!182 = !DILocation(line: 185, column: 5, scope: !148)
!183 = !DILocation(line: 185, column: 20, scope: !148)
!184 = !DILocation(line: 186, column: 22, scope: !148)
!185 = !DILocation(line: 186, column: 10, scope: !148)
!186 = !DILocation(line: 186, column: 5, scope: !148)
!187 = !DILocation(line: 186, column: 20, scope: !148)
!188 = !DILocation(line: 187, column: 22, scope: !148)
!189 = !DILocation(line: 187, column: 10, scope: !148)
!190 = !DILocation(line: 187, column: 5, scope: !148)
!191 = !DILocation(line: 187, column: 20, scope: !148)
!192 = !DILocation(line: 188, column: 22, scope: !148)
!193 = !DILocation(line: 188, column: 10, scope: !148)
!194 = !DILocation(line: 188, column: 5, scope: !148)
!195 = !DILocation(line: 188, column: 20, scope: !148)
!196 = !DILocation(line: 189, column: 22, scope: !148)
!197 = !DILocation(line: 189, column: 10, scope: !148)
!198 = !DILocation(line: 189, column: 5, scope: !148)
!199 = !DILocation(line: 189, column: 20, scope: !148)
!200 = !DILocation(line: 191, column: 5, scope: !148)
!201 = distinct !DISubprogram(name: "mbedtls_chacha20_starts", scope: !3, file: !3, line: 194, type: !202, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!202 = !DISubroutineType(types: !203)
!203 = !{!151, !111, !152, !7}
!204 = !DILocalVariable(name: "ctx", arg: 1, scope: !201, file: !3, line: 194, type: !111)
!205 = !DILocation(line: 0, scope: !201)
!206 = !DILocalVariable(name: "nonce", arg: 2, scope: !201, file: !3, line: 195, type: !152)
!207 = !DILocalVariable(name: "counter", arg: 3, scope: !201, file: !3, line: 196, type: !7)
!208 = !DILocation(line: 199, column: 10, scope: !201)
!209 = !DILocation(line: 199, column: 5, scope: !201)
!210 = !DILocation(line: 199, column: 20, scope: !201)
!211 = !DILocation(line: 202, column: 22, scope: !201)
!212 = !DILocation(line: 202, column: 10, scope: !201)
!213 = !DILocation(line: 202, column: 5, scope: !201)
!214 = !DILocation(line: 202, column: 20, scope: !201)
!215 = !DILocation(line: 203, column: 22, scope: !201)
!216 = !DILocation(line: 203, column: 10, scope: !201)
!217 = !DILocation(line: 203, column: 5, scope: !201)
!218 = !DILocation(line: 203, column: 20, scope: !201)
!219 = !DILocation(line: 204, column: 22, scope: !201)
!220 = !DILocation(line: 204, column: 10, scope: !201)
!221 = !DILocation(line: 204, column: 5, scope: !201)
!222 = !DILocation(line: 204, column: 20, scope: !201)
!223 = !DILocation(line: 206, column: 36, scope: !201)
!224 = !DILocation(line: 206, column: 31, scope: !201)
!225 = !DILocation(line: 206, column: 5, scope: !201)
!226 = !DILocation(line: 209, column: 10, scope: !201)
!227 = !DILocation(line: 209, column: 31, scope: !201)
!228 = !DILocation(line: 211, column: 5, scope: !201)
!229 = distinct !DISubprogram(name: "mbedtls_chacha20_update", scope: !3, file: !3, line: 214, type: !230, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!230 = !DISubroutineType(types: !231)
!231 = !{!151, !111, !30, !152, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!233 = !DILocalVariable(name: "ctx", arg: 1, scope: !229, file: !3, line: 214, type: !111)
!234 = !DILocation(line: 0, scope: !229)
!235 = !DILocalVariable(name: "size", arg: 2, scope: !229, file: !3, line: 215, type: !30)
!236 = !DILocalVariable(name: "input", arg: 3, scope: !229, file: !3, line: 216, type: !152)
!237 = !DILocalVariable(name: "output", arg: 4, scope: !229, file: !3, line: 217, type: !232)
!238 = !DILocalVariable(name: "offset", scope: !229, file: !3, line: 219, type: !30)
!239 = !DILocation(line: 222, column: 5, scope: !229)
!240 = !DILocation(line: 222, column: 17, scope: !229)
!241 = !DILocation(line: 222, column: 22, scope: !229)
!242 = !DILocation(line: 222, column: 30, scope: !229)
!243 = !DILocation(line: 222, column: 51, scope: !229)
!244 = !DILocation(line: 224, column: 26, scope: !245)
!245 = distinct !DILexicalBlock(scope: !229, file: !3, line: 223, column: 5)
!246 = !DILocation(line: 225, column: 31, scope: !245)
!247 = !DILocation(line: 225, column: 47, scope: !245)
!248 = !DILocation(line: 225, column: 26, scope: !245)
!249 = !DILocation(line: 225, column: 24, scope: !245)
!250 = !DILocation(line: 224, column: 9, scope: !245)
!251 = !DILocation(line: 224, column: 24, scope: !245)
!252 = !DILocation(line: 227, column: 14, scope: !245)
!253 = !DILocation(line: 227, column: 34, scope: !245)
!254 = !DILocation(line: 228, column: 15, scope: !245)
!255 = !DILocation(line: 229, column: 13, scope: !245)
!256 = distinct !{!256, !239, !257, !258}
!257 = !DILocation(line: 230, column: 5, scope: !229)
!258 = !{!"llvm.loop.mustprogress"}
!259 = !DILocation(line: 233, column: 5, scope: !229)
!260 = !DILocation(line: 233, column: 17, scope: !229)
!261 = !DILocation(line: 236, column: 30, scope: !262)
!262 = distinct !DILexicalBlock(scope: !229, file: !3, line: 234, column: 5)
!263 = !DILocation(line: 236, column: 25, scope: !262)
!264 = !DILocation(line: 236, column: 42, scope: !262)
!265 = !DILocation(line: 236, column: 37, scope: !262)
!266 = !DILocation(line: 236, column: 9, scope: !262)
!267 = !DILocation(line: 237, column: 14, scope: !262)
!268 = !DILocation(line: 237, column: 9, scope: !262)
!269 = !DILocation(line: 237, column: 39, scope: !262)
!270 = !DILocation(line: 239, column: 29, scope: !262)
!271 = !DILocation(line: 239, column: 45, scope: !262)
!272 = !DILocation(line: 239, column: 60, scope: !262)
!273 = !DILocation(line: 239, column: 55, scope: !262)
!274 = !DILocation(line: 239, column: 9, scope: !262)
!275 = !DILocation(line: 241, column: 16, scope: !262)
!276 = !DILocation(line: 242, column: 16, scope: !262)
!277 = distinct !{!277, !259, !278, !258}
!278 = !DILocation(line: 243, column: 5, scope: !229)
!279 = !DILocation(line: 246, column: 14, scope: !280)
!280 = distinct !DILexicalBlock(scope: !229, file: !3, line: 246, column: 9)
!281 = !DILocation(line: 246, column: 9, scope: !229)
!282 = !DILocation(line: 249, column: 30, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 247, column: 5)
!284 = !DILocation(line: 249, column: 25, scope: !283)
!285 = !DILocation(line: 249, column: 42, scope: !283)
!286 = !DILocation(line: 249, column: 37, scope: !283)
!287 = !DILocation(line: 249, column: 9, scope: !283)
!288 = !DILocation(line: 250, column: 14, scope: !283)
!289 = !DILocation(line: 250, column: 9, scope: !283)
!290 = !DILocation(line: 250, column: 39, scope: !283)
!291 = !DILocation(line: 252, column: 29, scope: !283)
!292 = !DILocation(line: 252, column: 45, scope: !283)
!293 = !DILocation(line: 252, column: 60, scope: !283)
!294 = !DILocation(line: 252, column: 55, scope: !283)
!295 = !DILocation(line: 252, column: 9, scope: !283)
!296 = !DILocation(line: 254, column: 14, scope: !283)
!297 = !DILocation(line: 254, column: 35, scope: !283)
!298 = !DILocation(line: 256, column: 5, scope: !283)
!299 = !DILocation(line: 258, column: 5, scope: !229)
!300 = distinct !DISubprogram(name: "chacha20_block", scope: !3, file: !3, line: 115, type: !301, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303, !232}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!304 = !DILocalVariable(name: "initial_state", arg: 1, scope: !300, file: !3, line: 115, type: !303)
!305 = !DILocation(line: 0, scope: !300)
!306 = !DILocalVariable(name: "keystream", arg: 2, scope: !300, file: !3, line: 116, type: !232)
!307 = !DILocalVariable(name: "working_state", scope: !300, file: !3, line: 118, type: !117)
!308 = !DILocation(line: 118, column: 14, scope: !300)
!309 = !DILocation(line: 121, column: 5, scope: !300)
!310 = !DILocalVariable(name: "i", scope: !300, file: !3, line: 119, type: !30)
!311 = !DILocation(line: 125, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !300, file: !3, line: 125, column: 5)
!313 = !DILocation(line: 0, scope: !312)
!314 = !DILocation(line: 125, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 125, column: 5)
!316 = !DILocation(line: 125, column: 5, scope: !312)
!317 = !DILocation(line: 126, column: 31, scope: !315)
!318 = !DILocation(line: 126, column: 9, scope: !315)
!319 = !DILocation(line: 125, column: 28, scope: !315)
!320 = !DILocation(line: 125, column: 5, scope: !315)
!321 = distinct !{!321, !316, !322, !258}
!322 = !DILocation(line: 126, column: 45, scope: !312)
!323 = !DILocation(line: 128, column: 26, scope: !300)
!324 = !DILocation(line: 128, column: 5, scope: !300)
!325 = !DILocation(line: 128, column: 23, scope: !300)
!326 = !DILocation(line: 129, column: 26, scope: !300)
!327 = !DILocation(line: 129, column: 5, scope: !300)
!328 = !DILocation(line: 129, column: 23, scope: !300)
!329 = !DILocation(line: 130, column: 26, scope: !300)
!330 = !DILocation(line: 130, column: 5, scope: !300)
!331 = !DILocation(line: 130, column: 23, scope: !300)
!332 = !DILocation(line: 131, column: 26, scope: !300)
!333 = !DILocation(line: 131, column: 5, scope: !300)
!334 = !DILocation(line: 131, column: 23, scope: !300)
!335 = !DILocation(line: 132, column: 26, scope: !300)
!336 = !DILocation(line: 132, column: 5, scope: !300)
!337 = !DILocation(line: 132, column: 23, scope: !300)
!338 = !DILocation(line: 133, column: 26, scope: !300)
!339 = !DILocation(line: 133, column: 5, scope: !300)
!340 = !DILocation(line: 133, column: 23, scope: !300)
!341 = !DILocation(line: 134, column: 26, scope: !300)
!342 = !DILocation(line: 134, column: 5, scope: !300)
!343 = !DILocation(line: 134, column: 23, scope: !300)
!344 = !DILocation(line: 135, column: 26, scope: !300)
!345 = !DILocation(line: 135, column: 5, scope: !300)
!346 = !DILocation(line: 135, column: 23, scope: !300)
!347 = !DILocation(line: 136, column: 26, scope: !300)
!348 = !DILocation(line: 136, column: 5, scope: !300)
!349 = !DILocation(line: 136, column: 23, scope: !300)
!350 = !DILocation(line: 137, column: 26, scope: !300)
!351 = !DILocation(line: 137, column: 5, scope: !300)
!352 = !DILocation(line: 137, column: 23, scope: !300)
!353 = !DILocation(line: 138, column: 26, scope: !300)
!354 = !DILocation(line: 138, column: 5, scope: !300)
!355 = !DILocation(line: 138, column: 23, scope: !300)
!356 = !DILocation(line: 139, column: 26, scope: !300)
!357 = !DILocation(line: 139, column: 5, scope: !300)
!358 = !DILocation(line: 139, column: 23, scope: !300)
!359 = !DILocation(line: 140, column: 26, scope: !300)
!360 = !DILocation(line: 140, column: 5, scope: !300)
!361 = !DILocation(line: 140, column: 23, scope: !300)
!362 = !DILocation(line: 141, column: 26, scope: !300)
!363 = !DILocation(line: 141, column: 5, scope: !300)
!364 = !DILocation(line: 141, column: 23, scope: !300)
!365 = !DILocation(line: 142, column: 26, scope: !300)
!366 = !DILocation(line: 142, column: 5, scope: !300)
!367 = !DILocation(line: 142, column: 23, scope: !300)
!368 = !DILocation(line: 143, column: 26, scope: !300)
!369 = !DILocation(line: 143, column: 5, scope: !300)
!370 = !DILocation(line: 143, column: 23, scope: !300)
!371 = !DILocation(line: 145, column: 10, scope: !372)
!372 = distinct !DILexicalBlock(scope: !300, file: !3, line: 145, column: 5)
!373 = !DILocation(line: 0, scope: !372)
!374 = !DILocation(line: 145, column: 20, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !3, line: 145, column: 5)
!376 = !DILocation(line: 145, column: 5, scope: !372)
!377 = !DILocation(line: 147, column: 27, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 146, column: 5)
!379 = !DILocalVariable(name: "offset", scope: !378, file: !3, line: 147, type: !30)
!380 = !DILocation(line: 0, scope: !378)
!381 = !DILocation(line: 149, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 149, column: 9)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 149, column: 9)
!384 = distinct !DILexicalBlock(scope: !378, file: !3, line: 149, column: 9)
!385 = !DILocation(line: 150, column: 5, scope: !378)
!386 = !DILocation(line: 145, column: 27, scope: !375)
!387 = !DILocation(line: 145, column: 5, scope: !375)
!388 = distinct !{!388, !376, !389, !258}
!389 = !DILocation(line: 150, column: 5, scope: !372)
!390 = !DILocation(line: 152, column: 31, scope: !300)
!391 = !DILocation(line: 152, column: 5, scope: !300)
!392 = !DILocation(line: 153, column: 1, scope: !300)
!393 = distinct !DISubprogram(name: "chacha20_inner_block", scope: !3, file: !3, line: 96, type: !394, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!397 = !DILocalVariable(name: "state", arg: 1, scope: !393, file: !3, line: 96, type: !396)
!398 = !DILocation(line: 0, scope: !393)
!399 = !DILocation(line: 98, column: 5, scope: !393)
!400 = !DILocation(line: 99, column: 5, scope: !393)
!401 = !DILocation(line: 100, column: 5, scope: !393)
!402 = !DILocation(line: 101, column: 5, scope: !393)
!403 = !DILocation(line: 103, column: 5, scope: !393)
!404 = !DILocation(line: 104, column: 5, scope: !393)
!405 = !DILocation(line: 105, column: 5, scope: !393)
!406 = !DILocation(line: 106, column: 5, scope: !393)
!407 = !DILocation(line: 107, column: 1, scope: !393)
!408 = distinct !DISubprogram(name: "chacha20_quarter_round", scope: !3, file: !3, line: 61, type: !409, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !396, !30, !30, !30, !30}
!411 = !DILocalVariable(name: "state", arg: 1, scope: !408, file: !3, line: 61, type: !396)
!412 = !DILocation(line: 0, scope: !408)
!413 = !DILocalVariable(name: "a", arg: 2, scope: !408, file: !3, line: 62, type: !30)
!414 = !DILocalVariable(name: "b", arg: 3, scope: !408, file: !3, line: 63, type: !30)
!415 = !DILocalVariable(name: "c", arg: 4, scope: !408, file: !3, line: 64, type: !30)
!416 = !DILocalVariable(name: "d", arg: 5, scope: !408, file: !3, line: 65, type: !30)
!417 = !DILocation(line: 68, column: 17, scope: !408)
!418 = !DILocation(line: 68, column: 5, scope: !408)
!419 = !DILocation(line: 68, column: 14, scope: !408)
!420 = !DILocation(line: 69, column: 17, scope: !408)
!421 = !DILocation(line: 69, column: 5, scope: !408)
!422 = !DILocation(line: 69, column: 14, scope: !408)
!423 = !DILocation(line: 70, column: 16, scope: !408)
!424 = !DILocation(line: 70, column: 5, scope: !408)
!425 = !DILocation(line: 70, column: 14, scope: !408)
!426 = !DILocation(line: 73, column: 17, scope: !408)
!427 = !DILocation(line: 73, column: 5, scope: !408)
!428 = !DILocation(line: 73, column: 14, scope: !408)
!429 = !DILocation(line: 74, column: 17, scope: !408)
!430 = !DILocation(line: 74, column: 5, scope: !408)
!431 = !DILocation(line: 74, column: 14, scope: !408)
!432 = !DILocation(line: 75, column: 16, scope: !408)
!433 = !DILocation(line: 75, column: 5, scope: !408)
!434 = !DILocation(line: 75, column: 14, scope: !408)
!435 = !DILocation(line: 78, column: 17, scope: !408)
!436 = !DILocation(line: 78, column: 5, scope: !408)
!437 = !DILocation(line: 78, column: 14, scope: !408)
!438 = !DILocation(line: 79, column: 17, scope: !408)
!439 = !DILocation(line: 79, column: 5, scope: !408)
!440 = !DILocation(line: 79, column: 14, scope: !408)
!441 = !DILocation(line: 80, column: 16, scope: !408)
!442 = !DILocation(line: 80, column: 5, scope: !408)
!443 = !DILocation(line: 80, column: 14, scope: !408)
!444 = !DILocation(line: 83, column: 17, scope: !408)
!445 = !DILocation(line: 83, column: 5, scope: !408)
!446 = !DILocation(line: 83, column: 14, scope: !408)
!447 = !DILocation(line: 84, column: 17, scope: !408)
!448 = !DILocation(line: 84, column: 5, scope: !408)
!449 = !DILocation(line: 84, column: 14, scope: !408)
!450 = !DILocation(line: 85, column: 16, scope: !408)
!451 = !DILocation(line: 85, column: 5, scope: !408)
!452 = !DILocation(line: 85, column: 14, scope: !408)
!453 = !DILocation(line: 86, column: 1, scope: !408)
!454 = distinct !DISubprogram(name: "mbedtls_chacha20_crypt", scope: !3, file: !3, line: 261, type: !455, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!455 = !DISubroutineType(types: !456)
!456 = !{!151, !152, !152, !7, !30, !152, !232}
!457 = !DILocalVariable(name: "key", arg: 1, scope: !454, file: !3, line: 261, type: !152)
!458 = !DILocation(line: 0, scope: !454)
!459 = !DILocalVariable(name: "nonce", arg: 2, scope: !454, file: !3, line: 262, type: !152)
!460 = !DILocalVariable(name: "counter", arg: 3, scope: !454, file: !3, line: 263, type: !7)
!461 = !DILocalVariable(name: "data_len", arg: 4, scope: !454, file: !3, line: 264, type: !30)
!462 = !DILocalVariable(name: "input", arg: 5, scope: !454, file: !3, line: 265, type: !152)
!463 = !DILocalVariable(name: "output", arg: 6, scope: !454, file: !3, line: 266, type: !232)
!464 = !DILocalVariable(name: "ctx", scope: !454, file: !3, line: 268, type: !112)
!465 = !DILocation(line: 268, column: 30, scope: !454)
!466 = !DILocalVariable(name: "ret", scope: !454, file: !3, line: 269, type: !151)
!467 = !DILocation(line: 271, column: 5, scope: !454)
!468 = !DILocation(line: 273, column: 11, scope: !454)
!469 = !DILocation(line: 274, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !454, file: !3, line: 274, column: 9)
!471 = !DILocation(line: 274, column: 9, scope: !454)
!472 = !DILocation(line: 275, column: 9, scope: !470)
!473 = !DILocation(line: 277, column: 11, scope: !454)
!474 = !DILocation(line: 278, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !454, file: !3, line: 278, column: 9)
!476 = !DILocation(line: 278, column: 9, scope: !454)
!477 = !DILocation(line: 279, column: 9, scope: !475)
!478 = !DILocation(line: 281, column: 11, scope: !454)
!479 = !DILocation(line: 281, column: 5, scope: !454)
!480 = !DILabel(scope: !454, name: "cleanup", file: !3, line: 283)
!481 = !DILocation(line: 283, column: 1, scope: !454)
!482 = !DILocation(line: 284, column: 5, scope: !454)
!483 = !DILocation(line: 285, column: 5, scope: !454)
!484 = distinct !DISubprogram(name: "mbedtls_chacha20_self_test", scope: !3, file: !3, line: 474, type: !485, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!485 = !DISubroutineType(types: !486)
!486 = !{!151, !151}
!487 = !DILocalVariable(name: "verbose", arg: 1, scope: !484, file: !3, line: 474, type: !151)
!488 = !DILocation(line: 0, scope: !484)
!489 = !DILocalVariable(name: "output", scope: !484, file: !3, line: 476, type: !490)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 3048, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 381)
!493 = !DILocation(line: 476, column: 19, scope: !484)
!494 = !DILocalVariable(name: "ret", scope: !484, file: !3, line: 478, type: !151)
!495 = !DILocalVariable(name: "i", scope: !484, file: !3, line: 477, type: !11)
!496 = !DILocation(line: 480, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !484, file: !3, line: 480, column: 5)
!498 = !DILocation(line: 0, scope: !497)
!499 = !DILocation(line: 480, column: 20, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 480, column: 5)
!501 = !DILocation(line: 480, column: 5, scope: !497)
!502 = !DILocation(line: 482, column: 21, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 482, column: 13)
!504 = distinct !DILexicalBlock(scope: !500, file: !3, line: 481, column: 5)
!505 = !DILocation(line: 482, column: 13, scope: !504)
!506 = !DILocation(line: 483, column: 13, scope: !503)
!507 = !DILocation(line: 485, column: 39, scope: !504)
!508 = !DILocation(line: 486, column: 39, scope: !504)
!509 = !DILocation(line: 487, column: 39, scope: !504)
!510 = !DILocation(line: 488, column: 39, scope: !504)
!511 = !DILocation(line: 489, column: 39, scope: !504)
!512 = !DILocation(line: 490, column: 39, scope: !504)
!513 = !DILocation(line: 485, column: 15, scope: !504)
!514 = !DILocation(line: 492, column: 9, scope: !504)
!515 = !DILocation(line: 492, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 492, column: 9)
!517 = distinct !DILexicalBlock(scope: !504, file: !3, line: 492, column: 9)
!518 = !DILocation(line: 492, column: 9, scope: !517)
!519 = !DILocation(line: 492, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 492, column: 9)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 492, column: 9)
!522 = !DILocation(line: 492, column: 9, scope: !521)
!523 = !DILocation(line: 494, column: 9, scope: !504)
!524 = !DILocation(line: 494, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 494, column: 9)
!526 = distinct !DILexicalBlock(scope: !504, file: !3, line: 494, column: 9)
!527 = !DILocation(line: 494, column: 9, scope: !526)
!528 = !DILocation(line: 494, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 494, column: 9)
!530 = distinct !DILexicalBlock(scope: !525, file: !3, line: 494, column: 9)
!531 = !DILocation(line: 494, column: 9, scope: !530)
!532 = !DILocation(line: 497, column: 21, scope: !533)
!533 = distinct !DILexicalBlock(scope: !504, file: !3, line: 497, column: 13)
!534 = !DILocation(line: 497, column: 13, scope: !504)
!535 = !DILocation(line: 498, column: 13, scope: !533)
!536 = !DILocation(line: 499, column: 5, scope: !504)
!537 = !DILocation(line: 480, column: 27, scope: !500)
!538 = !DILocation(line: 480, column: 5, scope: !500)
!539 = distinct !{!539, !501, !540, !258}
!540 = !DILocation(line: 499, column: 5, scope: !497)
!541 = !DILocation(line: 501, column: 17, scope: !542)
!542 = distinct !DILexicalBlock(scope: !484, file: !3, line: 501, column: 9)
!543 = !DILocation(line: 501, column: 9, scope: !484)
!544 = !DILocation(line: 502, column: 9, scope: !542)
!545 = !DILocation(line: 504, column: 5, scope: !484)
!546 = !DILocation(line: 505, column: 1, scope: !484)
!547 = distinct !DISubprogram(name: "mbedtls_chachapoly_init", scope: !46, file: !46, line: 79, type: !548, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chachapoly_context", file: !49, line: 70, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chachapoly_context", file: !49, line: 61, size: 1920, elements: !553)
!553 = !{!554, !561, !578, !579, !580, !581}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "chacha20_ctx", scope: !552, file: !49, line: 63, baseType: !555, size: 1088)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chacha20_context", file: !113, line: 56, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chacha20_context", file: !113, line: 50, size: 1088, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !556, file: !113, line: 52, baseType: !117, size: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "keystream8", scope: !556, file: !113, line: 53, baseType: !120, size: 512, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "keystream_bytes_used", scope: !556, file: !113, line: 54, baseType: !30, size: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "poly1305_ctx", scope: !552, file: !49, line: 64, baseType: !562, size: 640, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_poly1305_context", file: !563, line: 58, baseType: !564)
!563 = !DIFile(filename: "../mbedtls/include/mbedtls/poly1305.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_poly1305_context", file: !563, line: 50, size: 640, elements: !565)
!565 = !{!566, !570, !571, !575, !577}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !564, file: !563, line: 52, baseType: !567, size: 128)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 4)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !564, file: !563, line: 53, baseType: !567, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !564, file: !563, line: 54, baseType: !572, size: 160, offset: 256)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 5)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !564, file: !563, line: 55, baseType: !576, size: 128, offset: 416)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !118)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "queue_len", scope: !564, file: !563, line: 56, baseType: !30, size: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "aad_len", scope: !552, file: !49, line: 65, baseType: !54, size: 64, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ciphertext_len", scope: !552, file: !49, line: 66, baseType: !54, size: 64, offset: 1792)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !552, file: !49, line: 67, baseType: !151, size: 32, offset: 1856)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !552, file: !49, line: 68, baseType: !582, size: 32, offset: 1888)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chachapoly_mode_t", file: !49, line: 55, baseType: !48)
!583 = !DILocalVariable(name: "ctx", arg: 1, scope: !547, file: !46, line: 79, type: !550)
!584 = !DILocation(line: 0, scope: !547)
!585 = !DILocation(line: 81, column: 34, scope: !547)
!586 = !DILocation(line: 81, column: 5, scope: !547)
!587 = !DILocation(line: 82, column: 34, scope: !547)
!588 = !DILocation(line: 82, column: 5, scope: !547)
!589 = !DILocation(line: 83, column: 10, scope: !547)
!590 = !DILocation(line: 83, column: 25, scope: !547)
!591 = !DILocation(line: 84, column: 10, scope: !547)
!592 = !DILocation(line: 84, column: 25, scope: !547)
!593 = !DILocation(line: 85, column: 10, scope: !547)
!594 = !DILocation(line: 85, column: 25, scope: !547)
!595 = !DILocation(line: 86, column: 10, scope: !547)
!596 = !DILocation(line: 86, column: 25, scope: !547)
!597 = !DILocation(line: 87, column: 1, scope: !547)
!598 = distinct !DISubprogram(name: "mbedtls_chachapoly_free", scope: !46, file: !46, line: 89, type: !548, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!599 = !DILocalVariable(name: "ctx", arg: 1, scope: !598, file: !46, line: 89, type: !550)
!600 = !DILocation(line: 0, scope: !598)
!601 = !DILocation(line: 91, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !46, line: 91, column: 9)
!603 = !DILocation(line: 91, column: 9, scope: !598)
!604 = !DILocation(line: 92, column: 9, scope: !602)
!605 = !DILocation(line: 94, column: 34, scope: !598)
!606 = !DILocation(line: 94, column: 5, scope: !598)
!607 = !DILocation(line: 95, column: 34, scope: !598)
!608 = !DILocation(line: 95, column: 5, scope: !598)
!609 = !DILocation(line: 96, column: 10, scope: !598)
!610 = !DILocation(line: 96, column: 25, scope: !598)
!611 = !DILocation(line: 97, column: 10, scope: !598)
!612 = !DILocation(line: 97, column: 25, scope: !598)
!613 = !DILocation(line: 98, column: 10, scope: !598)
!614 = !DILocation(line: 98, column: 25, scope: !598)
!615 = !DILocation(line: 99, column: 10, scope: !598)
!616 = !DILocation(line: 99, column: 25, scope: !598)
!617 = !DILocation(line: 100, column: 1, scope: !598)
!618 = distinct !DISubprogram(name: "mbedtls_chachapoly_setkey", scope: !46, file: !46, line: 102, type: !619, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!619 = !DISubroutineType(types: !620)
!620 = !{!151, !550, !152}
!621 = !DILocalVariable(name: "ctx", arg: 1, scope: !618, file: !46, line: 102, type: !550)
!622 = !DILocation(line: 0, scope: !618)
!623 = !DILocalVariable(name: "key", arg: 2, scope: !618, file: !46, line: 103, type: !152)
!624 = !DILocalVariable(name: "ret", scope: !618, file: !46, line: 105, type: !151)
!625 = !DILocation(line: 107, column: 42, scope: !618)
!626 = !DILocation(line: 107, column: 11, scope: !618)
!627 = !DILocation(line: 109, column: 5, scope: !618)
!628 = distinct !DISubprogram(name: "mbedtls_chachapoly_starts", scope: !46, file: !46, line: 112, type: !629, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!629 = !DISubroutineType(types: !630)
!630 = !{!151, !550, !152, !582}
!631 = !DILocalVariable(name: "ctx", arg: 1, scope: !628, file: !46, line: 112, type: !550)
!632 = !DILocation(line: 0, scope: !628)
!633 = !DILocalVariable(name: "nonce", arg: 2, scope: !628, file: !46, line: 113, type: !152)
!634 = !DILocalVariable(name: "mode", arg: 3, scope: !628, file: !46, line: 114, type: !582)
!635 = !DILocalVariable(name: "ret", scope: !628, file: !46, line: 116, type: !151)
!636 = !DILocalVariable(name: "poly1305_key", scope: !628, file: !46, line: 117, type: !637)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !123)
!638 = !DILocation(line: 117, column: 19, scope: !628)
!639 = !DILocation(line: 120, column: 42, scope: !628)
!640 = !DILocation(line: 120, column: 11, scope: !628)
!641 = !DILocation(line: 121, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !628, file: !46, line: 121, column: 9)
!643 = !DILocation(line: 121, column: 9, scope: !628)
!644 = !DILocation(line: 122, column: 9, scope: !642)
!645 = !DILocation(line: 129, column: 5, scope: !628)
!646 = !DILocation(line: 130, column: 42, scope: !628)
!647 = !DILocation(line: 131, column: 39, scope: !628)
!648 = !DILocation(line: 131, column: 53, scope: !628)
!649 = !DILocation(line: 130, column: 11, scope: !628)
!650 = !DILocation(line: 132, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !628, file: !46, line: 132, column: 9)
!652 = !DILocation(line: 132, column: 9, scope: !628)
!653 = !DILocation(line: 133, column: 9, scope: !651)
!654 = !DILocation(line: 135, column: 42, scope: !628)
!655 = !DILocation(line: 135, column: 56, scope: !628)
!656 = !DILocation(line: 135, column: 11, scope: !628)
!657 = !DILocation(line: 137, column: 13, scope: !658)
!658 = distinct !DILexicalBlock(scope: !628, file: !46, line: 137, column: 9)
!659 = !DILocation(line: 137, column: 9, scope: !628)
!660 = !DILocation(line: 139, column: 14, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !46, line: 138, column: 5)
!662 = !DILocation(line: 139, column: 29, scope: !661)
!663 = !DILocation(line: 140, column: 14, scope: !661)
!664 = !DILocation(line: 140, column: 29, scope: !661)
!665 = !DILocation(line: 141, column: 14, scope: !661)
!666 = !DILocation(line: 141, column: 29, scope: !661)
!667 = !DILocation(line: 142, column: 14, scope: !661)
!668 = !DILocation(line: 142, column: 29, scope: !661)
!669 = !DILocation(line: 143, column: 5, scope: !661)
!670 = !DILocation(line: 137, column: 16, scope: !658)
!671 = !DILabel(scope: !628, name: "cleanup", file: !46, line: 145)
!672 = !DILocation(line: 145, column: 1, scope: !628)
!673 = !DILocation(line: 146, column: 31, scope: !628)
!674 = !DILocation(line: 146, column: 5, scope: !628)
!675 = !DILocation(line: 147, column: 5, scope: !628)
!676 = distinct !DISubprogram(name: "mbedtls_chachapoly_update_aad", scope: !46, file: !46, line: 150, type: !677, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!677 = !DISubroutineType(types: !678)
!678 = !{!151, !550, !152, !30}
!679 = !DILocalVariable(name: "ctx", arg: 1, scope: !676, file: !46, line: 150, type: !550)
!680 = !DILocation(line: 0, scope: !676)
!681 = !DILocalVariable(name: "aad", arg: 2, scope: !676, file: !46, line: 151, type: !152)
!682 = !DILocalVariable(name: "aad_len", arg: 3, scope: !676, file: !46, line: 152, type: !30)
!683 = !DILocation(line: 154, column: 14, scope: !684)
!684 = distinct !DILexicalBlock(scope: !676, file: !46, line: 154, column: 9)
!685 = !DILocation(line: 154, column: 20, scope: !684)
!686 = !DILocation(line: 154, column: 9, scope: !676)
!687 = !DILocation(line: 155, column: 9, scope: !684)
!688 = !DILocation(line: 157, column: 10, scope: !676)
!689 = !DILocation(line: 157, column: 18, scope: !676)
!690 = !DILocation(line: 159, column: 44, scope: !676)
!691 = !DILocation(line: 159, column: 13, scope: !676)
!692 = !DILocation(line: 159, column: 5, scope: !676)
!693 = !DILocation(line: 160, column: 1, scope: !676)
!694 = distinct !DISubprogram(name: "mbedtls_chachapoly_update", scope: !46, file: !46, line: 162, type: !695, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!695 = !DISubroutineType(types: !696)
!696 = !{!151, !550, !30, !152, !232}
!697 = !DILocalVariable(name: "ctx", arg: 1, scope: !694, file: !46, line: 162, type: !550)
!698 = !DILocation(line: 0, scope: !694)
!699 = !DILocalVariable(name: "len", arg: 2, scope: !694, file: !46, line: 163, type: !30)
!700 = !DILocalVariable(name: "input", arg: 3, scope: !694, file: !46, line: 164, type: !152)
!701 = !DILocalVariable(name: "output", arg: 4, scope: !694, file: !46, line: 165, type: !232)
!702 = !DILocalVariable(name: "ret", scope: !694, file: !46, line: 167, type: !151)
!703 = !DILocation(line: 169, column: 16, scope: !704)
!704 = distinct !DILexicalBlock(scope: !694, file: !46, line: 169, column: 9)
!705 = !DILocation(line: 169, column: 22, scope: !704)
!706 = !DILocation(line: 169, column: 48, scope: !704)
!707 = !DILocation(line: 170, column: 16, scope: !704)
!708 = !DILocation(line: 170, column: 22, scope: !704)
!709 = !DILocation(line: 169, column: 9, scope: !694)
!710 = !DILocation(line: 172, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !704, file: !46, line: 171, column: 5)
!712 = !DILocation(line: 175, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !694, file: !46, line: 175, column: 9)
!714 = !DILocation(line: 175, column: 20, scope: !713)
!715 = !DILocation(line: 175, column: 9, scope: !694)
!716 = !DILocation(line: 177, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !46, line: 176, column: 5)
!718 = !DILocation(line: 177, column: 20, scope: !717)
!719 = !DILocation(line: 179, column: 15, scope: !717)
!720 = !DILocation(line: 180, column: 17, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !46, line: 180, column: 13)
!722 = !DILocation(line: 180, column: 13, scope: !717)
!723 = !DILocation(line: 181, column: 13, scope: !721)
!724 = !DILocation(line: 182, column: 5, scope: !717)
!725 = !DILocation(line: 184, column: 10, scope: !694)
!726 = !DILocation(line: 184, column: 25, scope: !694)
!727 = !DILocation(line: 186, column: 14, scope: !728)
!728 = distinct !DILexicalBlock(scope: !694, file: !46, line: 186, column: 9)
!729 = !DILocation(line: 186, column: 19, scope: !728)
!730 = !DILocation(line: 186, column: 9, scope: !694)
!731 = !DILocation(line: 188, column: 46, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !46, line: 187, column: 5)
!733 = !DILocation(line: 188, column: 15, scope: !732)
!734 = !DILocation(line: 189, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !46, line: 189, column: 13)
!736 = !DILocation(line: 189, column: 13, scope: !732)
!737 = !DILocation(line: 190, column: 13, scope: !735)
!738 = !DILocation(line: 192, column: 46, scope: !732)
!739 = !DILocation(line: 192, column: 15, scope: !732)
!740 = !DILocation(line: 193, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !732, file: !46, line: 193, column: 13)
!742 = !DILocation(line: 193, column: 13, scope: !732)
!743 = !DILocation(line: 194, column: 13, scope: !741)
!744 = !DILocation(line: 195, column: 5, scope: !732)
!745 = !DILocation(line: 198, column: 46, scope: !746)
!746 = distinct !DILexicalBlock(scope: !728, file: !46, line: 197, column: 5)
!747 = !DILocation(line: 198, column: 15, scope: !746)
!748 = !DILocation(line: 199, column: 17, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !46, line: 199, column: 13)
!750 = !DILocation(line: 199, column: 13, scope: !746)
!751 = !DILocation(line: 200, column: 13, scope: !749)
!752 = !DILocation(line: 202, column: 46, scope: !746)
!753 = !DILocation(line: 202, column: 15, scope: !746)
!754 = !DILocation(line: 203, column: 17, scope: !755)
!755 = distinct !DILexicalBlock(scope: !746, file: !46, line: 203, column: 13)
!756 = !DILocation(line: 203, column: 13, scope: !746)
!757 = !DILocation(line: 204, column: 13, scope: !755)
!758 = !DILocation(line: 207, column: 5, scope: !694)
!759 = !DILocation(line: 208, column: 1, scope: !694)
!760 = distinct !DISubprogram(name: "chachapoly_pad_aad", scope: !46, file: !46, line: 45, type: !761, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !4)
!761 = !DISubroutineType(types: !762)
!762 = !{!151, !550}
!763 = !DILocalVariable(name: "ctx", arg: 1, scope: !760, file: !46, line: 45, type: !550)
!764 = !DILocation(line: 0, scope: !760)
!765 = !DILocation(line: 47, column: 52, scope: !760)
!766 = !DILocation(line: 47, column: 60, scope: !760)
!767 = !DILocation(line: 47, column: 34, scope: !760)
!768 = !DILocalVariable(name: "partial_block_len", scope: !760, file: !46, line: 47, type: !7)
!769 = !DILocalVariable(name: "zeroes", scope: !760, file: !46, line: 48, type: !770)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 120, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 15)
!773 = !DILocation(line: 48, column: 19, scope: !760)
!774 = !DILocation(line: 50, column: 27, scope: !775)
!775 = distinct !DILexicalBlock(scope: !760, file: !46, line: 50, column: 9)
!776 = !DILocation(line: 50, column: 9, scope: !760)
!777 = !DILocation(line: 51, column: 9, scope: !775)
!778 = !DILocation(line: 53, column: 5, scope: !760)
!779 = !DILocation(line: 55, column: 44, scope: !760)
!780 = !DILocation(line: 56, column: 38, scope: !760)
!781 = !DILocation(line: 57, column: 42, scope: !760)
!782 = !DILocation(line: 57, column: 38, scope: !760)
!783 = !DILocation(line: 55, column: 13, scope: !760)
!784 = !DILocation(line: 55, column: 5, scope: !760)
!785 = !DILocation(line: 58, column: 1, scope: !760)
!786 = distinct !DISubprogram(name: "mbedtls_chachapoly_finish", scope: !46, file: !46, line: 210, type: !787, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!787 = !DISubroutineType(types: !788)
!788 = !{!151, !550, !232}
!789 = !DILocalVariable(name: "ctx", arg: 1, scope: !786, file: !46, line: 210, type: !550)
!790 = !DILocation(line: 0, scope: !786)
!791 = !DILocalVariable(name: "mac", arg: 2, scope: !786, file: !46, line: 211, type: !232)
!792 = !DILocalVariable(name: "ret", scope: !786, file: !46, line: 213, type: !151)
!793 = !DILocalVariable(name: "len_block", scope: !786, file: !46, line: 214, type: !794)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !118)
!795 = !DILocation(line: 214, column: 19, scope: !786)
!796 = !DILocation(line: 216, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !786, file: !46, line: 216, column: 9)
!798 = !DILocation(line: 216, column: 20, scope: !797)
!799 = !DILocation(line: 216, column: 9, scope: !786)
!800 = !DILocation(line: 218, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !46, line: 217, column: 5)
!802 = !DILocation(line: 221, column: 14, scope: !803)
!803 = distinct !DILexicalBlock(scope: !786, file: !46, line: 221, column: 9)
!804 = !DILocation(line: 221, column: 20, scope: !803)
!805 = !DILocation(line: 221, column: 9, scope: !786)
!806 = !DILocation(line: 223, column: 15, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !46, line: 222, column: 5)
!808 = !DILocation(line: 224, column: 17, scope: !809)
!809 = distinct !DILexicalBlock(scope: !807, file: !46, line: 224, column: 13)
!810 = !DILocation(line: 224, column: 13, scope: !807)
!811 = !DILocation(line: 225, column: 13, scope: !809)
!812 = !DILocation(line: 226, column: 5, scope: !807)
!813 = !DILocation(line: 227, column: 19, scope: !814)
!814 = distinct !DILexicalBlock(scope: !803, file: !46, line: 227, column: 14)
!815 = !DILocation(line: 227, column: 25, scope: !814)
!816 = !DILocation(line: 227, column: 14, scope: !803)
!817 = !DILocation(line: 229, column: 15, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !46, line: 228, column: 5)
!819 = !DILocation(line: 230, column: 17, scope: !820)
!820 = distinct !DILexicalBlock(scope: !818, file: !46, line: 230, column: 13)
!821 = !DILocation(line: 230, column: 13, scope: !818)
!822 = !DILocation(line: 231, column: 13, scope: !820)
!823 = !DILocation(line: 232, column: 5, scope: !818)
!824 = !DILocation(line: 234, column: 10, scope: !786)
!825 = !DILocation(line: 234, column: 16, scope: !786)
!826 = !DILocation(line: 239, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !46, line: 239, column: 5)
!828 = distinct !DILexicalBlock(scope: !829, file: !46, line: 239, column: 5)
!829 = distinct !DILexicalBlock(scope: !786, file: !46, line: 239, column: 5)
!830 = !DILocation(line: 240, column: 5, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !46, line: 240, column: 5)
!832 = distinct !DILexicalBlock(scope: !833, file: !46, line: 240, column: 5)
!833 = distinct !DILexicalBlock(scope: !786, file: !46, line: 240, column: 5)
!834 = !DILocation(line: 242, column: 42, scope: !786)
!835 = !DILocation(line: 242, column: 56, scope: !786)
!836 = !DILocation(line: 242, column: 11, scope: !786)
!837 = !DILocation(line: 243, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !786, file: !46, line: 243, column: 9)
!839 = !DILocation(line: 243, column: 9, scope: !786)
!840 = !DILocation(line: 244, column: 9, scope: !838)
!841 = !DILocation(line: 246, column: 42, scope: !786)
!842 = !DILocation(line: 246, column: 11, scope: !786)
!843 = !DILocation(line: 248, column: 5, scope: !786)
!844 = !DILocation(line: 249, column: 1, scope: !786)
!845 = distinct !DISubprogram(name: "chachapoly_pad_ciphertext", scope: !46, file: !46, line: 65, type: !761, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !4)
!846 = !DILocalVariable(name: "ctx", arg: 1, scope: !845, file: !46, line: 65, type: !550)
!847 = !DILocation(line: 0, scope: !845)
!848 = !DILocation(line: 67, column: 52, scope: !845)
!849 = !DILocation(line: 67, column: 67, scope: !845)
!850 = !DILocation(line: 67, column: 34, scope: !845)
!851 = !DILocalVariable(name: "partial_block_len", scope: !845, file: !46, line: 67, type: !7)
!852 = !DILocalVariable(name: "zeroes", scope: !845, file: !46, line: 68, type: !770)
!853 = !DILocation(line: 68, column: 19, scope: !845)
!854 = !DILocation(line: 70, column: 27, scope: !855)
!855 = distinct !DILexicalBlock(scope: !845, file: !46, line: 70, column: 9)
!856 = !DILocation(line: 70, column: 9, scope: !845)
!857 = !DILocation(line: 71, column: 9, scope: !855)
!858 = !DILocation(line: 73, column: 5, scope: !845)
!859 = !DILocation(line: 74, column: 44, scope: !845)
!860 = !DILocation(line: 75, column: 38, scope: !845)
!861 = !DILocation(line: 76, column: 42, scope: !845)
!862 = !DILocation(line: 76, column: 38, scope: !845)
!863 = !DILocation(line: 74, column: 13, scope: !845)
!864 = !DILocation(line: 74, column: 5, scope: !845)
!865 = !DILocation(line: 77, column: 1, scope: !845)
!866 = distinct !DISubprogram(name: "mbedtls_chachapoly_encrypt_and_tag", scope: !46, file: !46, line: 281, type: !867, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!867 = !DISubroutineType(types: !868)
!868 = !{!151, !550, !30, !152, !152, !30, !152, !232, !232}
!869 = !DILocalVariable(name: "ctx", arg: 1, scope: !866, file: !46, line: 281, type: !550)
!870 = !DILocation(line: 0, scope: !866)
!871 = !DILocalVariable(name: "length", arg: 2, scope: !866, file: !46, line: 282, type: !30)
!872 = !DILocalVariable(name: "nonce", arg: 3, scope: !866, file: !46, line: 283, type: !152)
!873 = !DILocalVariable(name: "aad", arg: 4, scope: !866, file: !46, line: 284, type: !152)
!874 = !DILocalVariable(name: "aad_len", arg: 5, scope: !866, file: !46, line: 285, type: !30)
!875 = !DILocalVariable(name: "input", arg: 6, scope: !866, file: !46, line: 286, type: !152)
!876 = !DILocalVariable(name: "output", arg: 7, scope: !866, file: !46, line: 287, type: !232)
!877 = !DILocalVariable(name: "tag", arg: 8, scope: !866, file: !46, line: 288, type: !232)
!878 = !DILocation(line: 290, column: 13, scope: !866)
!879 = !DILocation(line: 290, column: 5, scope: !866)
!880 = distinct !DISubprogram(name: "chachapoly_crypt_and_tag", scope: !46, file: !46, line: 251, type: !881, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !4)
!881 = !DISubroutineType(types: !882)
!882 = !{!151, !550, !582, !30, !152, !152, !30, !152, !232, !232}
!883 = !DILocalVariable(name: "ctx", arg: 1, scope: !880, file: !46, line: 251, type: !550)
!884 = !DILocation(line: 0, scope: !880)
!885 = !DILocalVariable(name: "mode", arg: 2, scope: !880, file: !46, line: 252, type: !582)
!886 = !DILocalVariable(name: "length", arg: 3, scope: !880, file: !46, line: 253, type: !30)
!887 = !DILocalVariable(name: "nonce", arg: 4, scope: !880, file: !46, line: 254, type: !152)
!888 = !DILocalVariable(name: "aad", arg: 5, scope: !880, file: !46, line: 255, type: !152)
!889 = !DILocalVariable(name: "aad_len", arg: 6, scope: !880, file: !46, line: 256, type: !30)
!890 = !DILocalVariable(name: "input", arg: 7, scope: !880, file: !46, line: 257, type: !152)
!891 = !DILocalVariable(name: "output", arg: 8, scope: !880, file: !46, line: 258, type: !232)
!892 = !DILocalVariable(name: "tag", arg: 9, scope: !880, file: !46, line: 259, type: !232)
!893 = !DILocalVariable(name: "ret", scope: !880, file: !46, line: 261, type: !151)
!894 = !DILocation(line: 263, column: 11, scope: !880)
!895 = !DILocation(line: 264, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !880, file: !46, line: 264, column: 9)
!897 = !DILocation(line: 264, column: 9, scope: !880)
!898 = !DILocation(line: 265, column: 9, scope: !896)
!899 = !DILocation(line: 267, column: 11, scope: !880)
!900 = !DILocation(line: 268, column: 13, scope: !901)
!901 = distinct !DILexicalBlock(scope: !880, file: !46, line: 268, column: 9)
!902 = !DILocation(line: 268, column: 9, scope: !880)
!903 = !DILocation(line: 269, column: 9, scope: !901)
!904 = !DILocation(line: 271, column: 11, scope: !880)
!905 = !DILocation(line: 272, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !880, file: !46, line: 272, column: 9)
!907 = !DILocation(line: 272, column: 9, scope: !880)
!908 = !DILocation(line: 273, column: 9, scope: !906)
!909 = !DILocation(line: 275, column: 11, scope: !880)
!910 = !DILocation(line: 275, column: 5, scope: !880)
!911 = !DILabel(scope: !880, name: "cleanup", file: !46, line: 277)
!912 = !DILocation(line: 277, column: 1, scope: !880)
!913 = !DILocation(line: 278, column: 5, scope: !880)
!914 = distinct !DISubprogram(name: "mbedtls_chachapoly_auth_decrypt", scope: !46, file: !46, line: 295, type: !915, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!915 = !DISubroutineType(types: !916)
!916 = !{!151, !550, !30, !152, !152, !30, !152, !152, !232}
!917 = !DILocalVariable(name: "ctx", arg: 1, scope: !914, file: !46, line: 295, type: !550)
!918 = !DILocation(line: 0, scope: !914)
!919 = !DILocalVariable(name: "length", arg: 2, scope: !914, file: !46, line: 296, type: !30)
!920 = !DILocalVariable(name: "nonce", arg: 3, scope: !914, file: !46, line: 297, type: !152)
!921 = !DILocalVariable(name: "aad", arg: 4, scope: !914, file: !46, line: 298, type: !152)
!922 = !DILocalVariable(name: "aad_len", arg: 5, scope: !914, file: !46, line: 299, type: !30)
!923 = !DILocalVariable(name: "tag", arg: 6, scope: !914, file: !46, line: 300, type: !152)
!924 = !DILocalVariable(name: "input", arg: 7, scope: !914, file: !46, line: 301, type: !152)
!925 = !DILocalVariable(name: "output", arg: 8, scope: !914, file: !46, line: 302, type: !232)
!926 = !DILocalVariable(name: "ret", scope: !914, file: !46, line: 304, type: !151)
!927 = !DILocalVariable(name: "check_tag", scope: !914, file: !46, line: 305, type: !794)
!928 = !DILocation(line: 305, column: 19, scope: !914)
!929 = !DILocation(line: 311, column: 54, scope: !930)
!930 = distinct !DILexicalBlock(scope: !914, file: !46, line: 309, column: 9)
!931 = !DILocation(line: 309, column: 17, scope: !930)
!932 = !DILocation(line: 311, column: 68, scope: !930)
!933 = !DILocation(line: 309, column: 9, scope: !914)
!934 = !DILocation(line: 313, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !930, file: !46, line: 312, column: 5)
!936 = !DILocalVariable(name: "diff", scope: !914, file: !46, line: 307, type: !151)
!937 = !DILocalVariable(name: "i", scope: !914, file: !46, line: 306, type: !30)
!938 = !DILocation(line: 317, column: 10, scope: !939)
!939 = distinct !DILexicalBlock(scope: !914, file: !46, line: 317, column: 5)
!940 = !DILocation(line: 0, scope: !939)
!941 = !DILocation(line: 317, column: 29, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !46, line: 317, column: 5)
!943 = !DILocation(line: 317, column: 5, scope: !939)
!944 = !DILocation(line: 318, column: 17, scope: !942)
!945 = !DILocation(line: 318, column: 26, scope: !942)
!946 = !DILocation(line: 318, column: 24, scope: !942)
!947 = !DILocation(line: 318, column: 14, scope: !942)
!948 = !DILocation(line: 318, column: 9, scope: !942)
!949 = !DILocation(line: 317, column: 53, scope: !942)
!950 = !DILocation(line: 317, column: 5, scope: !942)
!951 = distinct !{!951, !943, !952, !258}
!952 = !DILocation(line: 318, column: 37, scope: !939)
!953 = !DILocation(line: 320, column: 14, scope: !954)
!954 = distinct !DILexicalBlock(scope: !914, file: !46, line: 320, column: 9)
!955 = !DILocation(line: 320, column: 9, scope: !914)
!956 = !DILocation(line: 322, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !46, line: 321, column: 5)
!958 = !DILocation(line: 323, column: 9, scope: !957)
!959 = !DILocation(line: 326, column: 5, scope: !914)
!960 = !DILocation(line: 327, column: 1, scope: !914)
!961 = distinct !DISubprogram(name: "mbedtls_chachapoly_self_test", scope: !46, file: !46, line: 435, type: !485, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!962 = !DILocalVariable(name: "verbose", arg: 1, scope: !961, file: !46, line: 435, type: !151)
!963 = !DILocation(line: 0, scope: !961)
!964 = !DILocalVariable(name: "ctx", scope: !961, file: !46, line: 437, type: !551)
!965 = !DILocation(line: 437, column: 32, scope: !961)
!966 = !DILocalVariable(name: "ret", scope: !961, file: !46, line: 439, type: !151)
!967 = !DILocalVariable(name: "output", scope: !961, file: !46, line: 440, type: !968)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1600, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 200)
!971 = !DILocation(line: 440, column: 19, scope: !961)
!972 = !DILocalVariable(name: "mac", scope: !961, file: !46, line: 441, type: !794)
!973 = !DILocation(line: 441, column: 19, scope: !961)
!974 = !DILocalVariable(name: "i", scope: !961, file: !46, line: 438, type: !11)
!975 = !DILocation(line: 443, column: 10, scope: !976)
!976 = distinct !DILexicalBlock(scope: !961, file: !46, line: 443, column: 5)
!977 = !DILocation(line: 0, scope: !976)
!978 = !DILocation(line: 443, column: 20, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !46, line: 443, column: 5)
!980 = !DILocation(line: 443, column: 5, scope: !976)
!981 = !DILocation(line: 445, column: 21, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !46, line: 445, column: 13)
!983 = distinct !DILexicalBlock(scope: !979, file: !46, line: 444, column: 5)
!984 = !DILocation(line: 445, column: 13, scope: !983)
!985 = !DILocation(line: 446, column: 13, scope: !982)
!986 = !DILocation(line: 448, column: 9, scope: !983)
!987 = !DILocation(line: 450, column: 48, scope: !983)
!988 = !DILocation(line: 450, column: 15, scope: !983)
!989 = !DILocation(line: 451, column: 9, scope: !983)
!990 = !DILocation(line: 451, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !46, line: 451, column: 9)
!992 = distinct !DILexicalBlock(scope: !983, file: !46, line: 451, column: 9)
!993 = !DILocation(line: 451, column: 9, scope: !992)
!994 = !DILocation(line: 451, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !46, line: 451, column: 9)
!996 = distinct !DILexicalBlock(scope: !991, file: !46, line: 451, column: 9)
!997 = !DILocation(line: 451, column: 9, scope: !996)
!998 = !DILocation(line: 454, column: 51, scope: !983)
!999 = !DILocation(line: 455, column: 51, scope: !983)
!1000 = !DILocation(line: 456, column: 51, scope: !983)
!1001 = !DILocation(line: 457, column: 51, scope: !983)
!1002 = !DILocation(line: 458, column: 51, scope: !983)
!1003 = !DILocation(line: 459, column: 51, scope: !983)
!1004 = !DILocation(line: 460, column: 51, scope: !983)
!1005 = !DILocation(line: 453, column: 15, scope: !983)
!1006 = !DILocation(line: 462, column: 9, scope: !983)
!1007 = !DILocation(line: 462, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !46, line: 462, column: 9)
!1009 = distinct !DILexicalBlock(scope: !983, file: !46, line: 462, column: 9)
!1010 = !DILocation(line: 462, column: 9, scope: !1009)
!1011 = !DILocation(line: 462, column: 9, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !46, line: 462, column: 9)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !46, line: 462, column: 9)
!1014 = !DILocation(line: 462, column: 9, scope: !1013)
!1015 = !DILocation(line: 464, column: 9, scope: !983)
!1016 = !DILocation(line: 464, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !46, line: 464, column: 9)
!1018 = distinct !DILexicalBlock(scope: !983, file: !46, line: 464, column: 9)
!1019 = !DILocation(line: 464, column: 9, scope: !1018)
!1020 = !DILocation(line: 464, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !46, line: 464, column: 9)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !46, line: 464, column: 9)
!1023 = !DILocation(line: 464, column: 9, scope: !1022)
!1024 = !DILocation(line: 467, column: 9, scope: !983)
!1025 = !DILocation(line: 467, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !46, line: 467, column: 9)
!1027 = distinct !DILexicalBlock(scope: !983, file: !46, line: 467, column: 9)
!1028 = !DILocation(line: 467, column: 9, scope: !1027)
!1029 = !DILocation(line: 467, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !46, line: 467, column: 9)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !46, line: 467, column: 9)
!1032 = !DILocation(line: 467, column: 9, scope: !1031)
!1033 = !DILocation(line: 470, column: 9, scope: !983)
!1034 = !DILocation(line: 472, column: 21, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !983, file: !46, line: 472, column: 13)
!1036 = !DILocation(line: 472, column: 13, scope: !983)
!1037 = !DILocation(line: 473, column: 13, scope: !1035)
!1038 = !DILocation(line: 474, column: 5, scope: !983)
!1039 = !DILocation(line: 443, column: 27, scope: !979)
!1040 = !DILocation(line: 443, column: 5, scope: !979)
!1041 = distinct !{!1041, !980, !1042, !258}
!1042 = !DILocation(line: 474, column: 5, scope: !976)
!1043 = !DILocation(line: 476, column: 17, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !961, file: !46, line: 476, column: 9)
!1045 = !DILocation(line: 476, column: 9, scope: !961)
!1046 = !DILocation(line: 477, column: 9, scope: !1044)
!1047 = !DILocation(line: 479, column: 5, scope: !961)
!1048 = !DILocation(line: 480, column: 1, scope: !961)
!1049 = distinct !DISubprogram(name: "encrypt_and_tag_wrapper", scope: !101, file: !101, line: 3, type: !1050, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !1052, !30, !232, !152, !30, !152, !232, !152}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chachapoly_context", file: !49, line: 70, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chachapoly_context", file: !49, line: 61, size: 1920, elements: !1055)
!1055 = !{!1056, !1063, !1072, !1073, !1074, !1075}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "private_chacha20_ctx", scope: !1054, file: !49, line: 63, baseType: !1057, size: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_chacha20_context", file: !113, line: 56, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_chacha20_context", file: !113, line: 50, size: 1088, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "private_state", scope: !1058, file: !113, line: 52, baseType: !117, size: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private_keystream8", scope: !1058, file: !113, line: 53, baseType: !120, size: 512, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private_keystream_bytes_used", scope: !1058, file: !113, line: 54, baseType: !30, size: 64, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "private_poly1305_ctx", scope: !1054, file: !49, line: 64, baseType: !1064, size: 640, offset: 1088)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_poly1305_context", file: !563, line: 58, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_poly1305_context", file: !563, line: 50, size: 640, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "private_r", scope: !1065, file: !563, line: 52, baseType: !567, size: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "private_s", scope: !1065, file: !563, line: 53, baseType: !567, size: 128, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "private_acc", scope: !1065, file: !563, line: 54, baseType: !572, size: 160, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "private_queue", scope: !1065, file: !563, line: 55, baseType: !576, size: 128, offset: 416)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "private_queue_len", scope: !1065, file: !563, line: 56, baseType: !30, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "private_aad_len", scope: !1054, file: !49, line: 65, baseType: !54, size: 64, offset: 1728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "private_ciphertext_len", scope: !1054, file: !49, line: 66, baseType: !54, size: 64, offset: 1792)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "private_state", scope: !1054, file: !49, line: 67, baseType: !151, size: 32, offset: 1856)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "private_mode", scope: !1054, file: !49, line: 68, baseType: !582, size: 32, offset: 1888)
!1076 = !DILocalVariable(name: "ctx", arg: 1, scope: !1049, file: !101, line: 3, type: !1052)
!1077 = !DILocation(line: 0, scope: !1049)
!1078 = !DILocalVariable(name: "length", arg: 2, scope: !1049, file: !101, line: 4, type: !30)
!1079 = !DILocalVariable(name: "tag", arg: 3, scope: !1049, file: !101, line: 5, type: !232)
!1080 = !DILocalVariable(name: "aad", arg: 4, scope: !1049, file: !101, line: 6, type: !152)
!1081 = !DILocalVariable(name: "aad_len", arg: 5, scope: !1049, file: !101, line: 7, type: !30)
!1082 = !DILocalVariable(name: "input", arg: 6, scope: !1049, file: !101, line: 8, type: !152)
!1083 = !DILocalVariable(name: "output", arg: 7, scope: !1049, file: !101, line: 9, type: !232)
!1084 = !DILocalVariable(name: "nonce", arg: 8, scope: !1049, file: !101, line: 10, type: !152)
!1085 = !DILocation(line: 12, column: 12, scope: !1049)
!1086 = !DILocation(line: 12, column: 2, scope: !1049)
!1087 = !DILocation(line: 13, column: 12, scope: !1049)
!1088 = !DILocation(line: 13, column: 2, scope: !1049)
!1089 = !DILocation(line: 14, column: 12, scope: !1049)
!1090 = !DILocation(line: 14, column: 2, scope: !1049)
!1091 = !DILocation(line: 15, column: 12, scope: !1049)
!1092 = !DILocation(line: 15, column: 2, scope: !1049)
!1093 = !DILocation(line: 16, column: 12, scope: !1049)
!1094 = !DILocation(line: 16, column: 2, scope: !1049)
!1095 = !DILocation(line: 17, column: 12, scope: !1049)
!1096 = !DILocation(line: 17, column: 2, scope: !1049)
!1097 = !DILocation(line: 18, column: 12, scope: !1049)
!1098 = !DILocation(line: 18, column: 2, scope: !1049)
!1099 = !DILocation(line: 19, column: 12, scope: !1049)
!1100 = !DILocation(line: 19, column: 2, scope: !1049)
!1101 = !DILocation(line: 22, column: 12, scope: !1049)
!1102 = !DILocation(line: 22, column: 2, scope: !1049)
!1103 = !DILocation(line: 23, column: 12, scope: !1049)
!1104 = !DILocation(line: 23, column: 2, scope: !1049)
!1105 = !DILocation(line: 24, column: 12, scope: !1049)
!1106 = !DILocation(line: 24, column: 2, scope: !1049)
!1107 = !DILocation(line: 25, column: 12, scope: !1049)
!1108 = !DILocation(line: 25, column: 2, scope: !1049)
!1109 = !DILocation(line: 27, column: 31, scope: !1049)
!1110 = !DILocation(line: 27, column: 12, scope: !1049)
!1111 = !DILocation(line: 27, column: 2, scope: !1049)
!1112 = !DILocation(line: 28, column: 31, scope: !1049)
!1113 = !DILocation(line: 28, column: 12, scope: !1049)
!1114 = !DILocation(line: 28, column: 2, scope: !1049)
!1115 = !DILocation(line: 29, column: 31, scope: !1049)
!1116 = !DILocation(line: 29, column: 12, scope: !1049)
!1117 = !DILocation(line: 29, column: 2, scope: !1049)
!1118 = !DILocation(line: 30, column: 31, scope: !1049)
!1119 = !DILocation(line: 30, column: 12, scope: !1049)
!1120 = !DILocation(line: 30, column: 2, scope: !1049)
!1121 = !DILocation(line: 32, column: 31, scope: !1049)
!1122 = !DILocation(line: 32, column: 12, scope: !1049)
!1123 = !DILocation(line: 32, column: 2, scope: !1049)
!1124 = !DILocation(line: 33, column: 31, scope: !1049)
!1125 = !DILocation(line: 33, column: 12, scope: !1049)
!1126 = !DILocation(line: 33, column: 2, scope: !1049)
!1127 = !DILocation(line: 35, column: 31, scope: !1049)
!1128 = !DILocation(line: 35, column: 52, scope: !1049)
!1129 = !DILocation(line: 35, column: 26, scope: !1049)
!1130 = !DILocation(line: 35, column: 12, scope: !1049)
!1131 = !DILocation(line: 35, column: 2, scope: !1049)
!1132 = !DILocation(line: 36, column: 31, scope: !1049)
!1133 = !DILocation(line: 36, column: 52, scope: !1049)
!1134 = !DILocation(line: 36, column: 12, scope: !1049)
!1135 = !DILocation(line: 36, column: 2, scope: !1049)
!1136 = !DILocation(line: 37, column: 31, scope: !1049)
!1137 = !DILocation(line: 37, column: 52, scope: !1049)
!1138 = !DILocation(line: 37, column: 26, scope: !1049)
!1139 = !DILocation(line: 37, column: 12, scope: !1049)
!1140 = !DILocation(line: 37, column: 2, scope: !1049)
!1141 = !DILocation(line: 39, column: 31, scope: !1049)
!1142 = !DILocation(line: 39, column: 52, scope: !1049)
!1143 = !DILocation(line: 39, column: 26, scope: !1049)
!1144 = !DILocation(line: 39, column: 12, scope: !1049)
!1145 = !DILocation(line: 39, column: 2, scope: !1049)
!1146 = !DILocation(line: 40, column: 31, scope: !1049)
!1147 = !DILocation(line: 40, column: 52, scope: !1049)
!1148 = !DILocation(line: 40, column: 26, scope: !1049)
!1149 = !DILocation(line: 40, column: 12, scope: !1049)
!1150 = !DILocation(line: 40, column: 2, scope: !1049)
!1151 = !DILocation(line: 41, column: 31, scope: !1049)
!1152 = !DILocation(line: 41, column: 52, scope: !1049)
!1153 = !DILocation(line: 41, column: 12, scope: !1049)
!1154 = !DILocation(line: 41, column: 2, scope: !1049)
!1155 = !DILocation(line: 42, column: 31, scope: !1049)
!1156 = !DILocation(line: 42, column: 52, scope: !1049)
!1157 = !DILocation(line: 42, column: 26, scope: !1049)
!1158 = !DILocation(line: 42, column: 12, scope: !1049)
!1159 = !DILocation(line: 42, column: 2, scope: !1049)
!1160 = !DILocation(line: 43, column: 31, scope: !1049)
!1161 = !DILocation(line: 43, column: 52, scope: !1049)
!1162 = !DILocation(line: 43, column: 26, scope: !1049)
!1163 = !DILocation(line: 43, column: 12, scope: !1049)
!1164 = !DILocation(line: 43, column: 2, scope: !1049)
!1165 = !DILocation(line: 45, column: 32, scope: !1049)
!1166 = !DILocation(line: 45, column: 53, scope: !1049)
!1167 = !DILocation(line: 45, column: 27, scope: !1049)
!1168 = !DILocation(line: 45, column: 12, scope: !1049)
!1169 = !DILocation(line: 45, column: 2, scope: !1049)
!1170 = !DILocation(line: 54, column: 2, scope: !1049)
!1171 = !DILocation(line: 56, column: 1, scope: !1049)
!1172 = distinct !DISubprogram(name: "encrypt_and_tag_wrapper_t", scope: !101, file: !101, line: 66, type: !1173, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null}
!1175 = !DILocation(line: 68, column: 36, scope: !1172)
!1176 = !DILocalVariable(name: "ctx", scope: !1172, file: !101, line: 68, type: !1052)
!1177 = !DILocation(line: 0, scope: !1172)
!1178 = !DILocation(line: 69, column: 37, scope: !1172)
!1179 = !DILocalVariable(name: "length", scope: !1172, file: !101, line: 69, type: !30)
!1180 = !DILocalVariable(name: "nonce", scope: !1172, file: !101, line: 70, type: !1181)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 96, elements: !1182)
!1182 = !{!20}
!1183 = !DILocation(line: 70, column: 26, scope: !1172)
!1184 = !DILocation(line: 71, column: 50, scope: !1172)
!1185 = !DILocalVariable(name: "input", scope: !1172, file: !101, line: 71, type: !152)
!1186 = !DILocation(line: 72, column: 45, scope: !1172)
!1187 = !DILocalVariable(name: "output", scope: !1172, file: !101, line: 72, type: !232)
!1188 = !DILocation(line: 73, column: 33, scope: !1172)
!1189 = !DILocalVariable(name: "aad", scope: !1172, file: !101, line: 73, type: !152)
!1190 = !DILocation(line: 74, column: 23, scope: !1172)
!1191 = !DILocalVariable(name: "aad_len", scope: !1172, file: !101, line: 74, type: !30)
!1192 = !DILocation(line: 75, column: 27, scope: !1172)
!1193 = !DILocalVariable(name: "tag", scope: !1172, file: !101, line: 75, type: !232)
!1194 = !DILocation(line: 78, column: 50, scope: !1172)
!1195 = !DILocation(line: 78, column: 2, scope: !1172)
!1196 = !DILocation(line: 79, column: 1, scope: !1172)
!1197 = distinct !DISubprogram(name: "mbedtls_platform_zeroize", scope: !103, file: !103, line: 67, type: !1198, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !6, !30}
!1200 = !DILocalVariable(name: "buf", arg: 1, scope: !1197, file: !103, line: 67, type: !6)
!1201 = !DILocation(line: 0, scope: !1197)
!1202 = !DILocalVariable(name: "len", arg: 2, scope: !1197, file: !103, line: 67, type: !30)
!1203 = !DILocation(line: 69, column: 5, scope: !1197)
!1204 = !DILocation(line: 69, column: 5, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !103, line: 69, column: 5)
!1206 = !DILocation(line: 71, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1197, file: !103, line: 71, column: 9)
!1208 = !DILocation(line: 71, column: 9, scope: !1197)
!1209 = !DILocation(line: 72, column: 9, scope: !1207)
!1210 = !DILocation(line: 75, column: 1, scope: !1197)
!1211 = distinct !DISubprogram(name: "mbedtls_platform_gmtime_r", scope: !103, file: !103, line: 107, type: !1212, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!1214, !1233, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1216, line: 7, size: 448, elements: !1217)
!1216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1229}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1215, file: !1216, line: 9, baseType: !151, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1215, file: !1216, line: 10, baseType: !151, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1215, file: !1216, line: 11, baseType: !151, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1215, file: !1216, line: 12, baseType: !151, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1215, file: !1216, line: 13, baseType: !151, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1215, file: !1216, line: 14, baseType: !151, size: 32, offset: 160)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1215, file: !1216, line: 15, baseType: !151, size: 32, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1215, file: !1216, line: 16, baseType: !151, size: 32, offset: 224)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1215, file: !1216, line: 17, baseType: !151, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !1215, file: !1216, line: 23, baseType: !1228, size: 64, offset: 320)
!1228 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !1215, file: !1216, line: 24, baseType: !1230, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_time_t", file: !1236, line: 39, baseType: !1237)
!1236 = !DIFile(filename: "../mbedtls/include/mbedtls/platform_time.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1238, line: 7, baseType: !1239)
!1238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !1228)
!1240 = !DILocalVariable(name: "tt", arg: 1, scope: !1211, file: !103, line: 107, type: !1233)
!1241 = !DILocation(line: 0, scope: !1211)
!1242 = !DILocalVariable(name: "tm_buf", arg: 2, scope: !1211, file: !103, line: 108, type: !1214)
!1243 = !DILocation(line: 118, column: 13, scope: !1211)
!1244 = !DILocation(line: 118, column: 5, scope: !1211)
!1245 = distinct !DISubprogram(name: "mbedtls_xor", scope: !1246, file: !1246, line: 123, type: !1247, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1246 = !DIFile(filename: "../mbedtls/library/common.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !232, !152, !152, !30}
!1249 = !DILocalVariable(name: "r", arg: 1, scope: !1245, file: !1246, line: 123, type: !232)
!1250 = !DILocation(line: 0, scope: !1245)
!1251 = !DILocalVariable(name: "a", arg: 2, scope: !1245, file: !1246, line: 123, type: !152)
!1252 = !DILocalVariable(name: "b", arg: 3, scope: !1245, file: !1246, line: 123, type: !152)
!1253 = !DILocalVariable(name: "n", arg: 4, scope: !1245, file: !1246, line: 123, type: !30)
!1254 = !DILocalVariable(name: "i", scope: !1245, file: !1246, line: 125, type: !30)
!1255 = !DILocation(line: 126, column: 11, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1245, file: !1246, line: 126, column: 5)
!1257 = !DILocation(line: 0, scope: !1256)
!1258 = !DILocation(line: 126, column: 22, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !1246, line: 126, column: 5)
!1260 = !DILocation(line: 126, column: 28, scope: !1259)
!1261 = !DILocation(line: 126, column: 5, scope: !1256)
!1262 = !DILocation(line: 128, column: 54, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !1246, line: 127, column: 5)
!1264 = !DILocation(line: 128, column: 22, scope: !1263)
!1265 = !DILocation(line: 128, column: 94, scope: !1263)
!1266 = !DILocation(line: 128, column: 62, scope: !1263)
!1267 = !DILocation(line: 128, column: 60, scope: !1263)
!1268 = !DILocalVariable(name: "x", scope: !1263, file: !1246, line: 128, type: !7)
!1269 = !DILocation(line: 0, scope: !1263)
!1270 = !DILocation(line: 129, column: 41, scope: !1263)
!1271 = !DILocation(line: 129, column: 9, scope: !1263)
!1272 = !DILocation(line: 130, column: 5, scope: !1263)
!1273 = !DILocation(line: 126, column: 36, scope: !1259)
!1274 = !DILocation(line: 126, column: 5, scope: !1259)
!1275 = distinct !{!1275, !1261, !1276, !258}
!1276 = !DILocation(line: 130, column: 5, scope: !1256)
!1277 = !DILocation(line: 131, column: 5, scope: !1245)
!1278 = !DILocation(line: 131, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !1246, line: 131, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1245, file: !1246, line: 131, column: 5)
!1281 = !DILocation(line: 131, column: 5, scope: !1280)
!1282 = !DILocation(line: 133, column: 16, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !1246, line: 132, column: 5)
!1284 = !DILocation(line: 133, column: 23, scope: !1283)
!1285 = !DILocation(line: 133, column: 21, scope: !1283)
!1286 = !DILocation(line: 133, column: 9, scope: !1283)
!1287 = !DILocation(line: 133, column: 14, scope: !1283)
!1288 = !DILocation(line: 134, column: 5, scope: !1283)
!1289 = !DILocation(line: 131, column: 21, scope: !1279)
!1290 = !DILocation(line: 131, column: 5, scope: !1279)
!1291 = distinct !{!1291, !1281, !1292, !258}
!1292 = !DILocation(line: 134, column: 5, scope: !1280)
!1293 = !DILocation(line: 135, column: 1, scope: !1245)
!1294 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint32", scope: !1295, file: !1295, line: 65, type: !1296, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1295 = !DIFile(filename: "../mbedtls/library/alignment.h", directory: "/home/luwei/bech/Mbed/chacha20poly")
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!7, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1300 = !DILocalVariable(name: "p", arg: 1, scope: !1294, file: !1295, line: 65, type: !1298)
!1301 = !DILocation(line: 0, scope: !1294)
!1302 = !DILocalVariable(name: "r", scope: !1294, file: !1295, line: 67, type: !7)
!1303 = !DILocation(line: 67, column: 14, scope: !1294)
!1304 = !DILocation(line: 68, column: 5, scope: !1294)
!1305 = !DILocation(line: 69, column: 12, scope: !1294)
!1306 = !DILocation(line: 69, column: 5, scope: !1294)
!1307 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint32", scope: !1295, file: !1295, line: 79, type: !1308, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !6, !7}
!1310 = !DILocalVariable(name: "p", arg: 1, scope: !1307, file: !1295, line: 79, type: !6)
!1311 = !DILocation(line: 0, scope: !1307)
!1312 = !DILocalVariable(name: "x", arg: 2, scope: !1307, file: !1295, line: 79, type: !7)
!1313 = !DILocation(line: 79, column: 61, scope: !1307)
!1314 = !DILocation(line: 81, column: 5, scope: !1307)
!1315 = !DILocation(line: 82, column: 1, scope: !1307)
!1316 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint16", scope: !1295, file: !1295, line: 39, type: !1317, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1319, !1298}
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 25, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 40, baseType: !1321)
!1321 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1322 = !DILocalVariable(name: "p", arg: 1, scope: !1316, file: !1295, line: 39, type: !1298)
!1323 = !DILocation(line: 0, scope: !1316)
!1324 = !DILocalVariable(name: "r", scope: !1316, file: !1295, line: 41, type: !1319)
!1325 = !DILocation(line: 41, column: 14, scope: !1316)
!1326 = !DILocation(line: 42, column: 5, scope: !1316)
!1327 = !DILocation(line: 43, column: 12, scope: !1316)
!1328 = !DILocation(line: 43, column: 5, scope: !1316)
!1329 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint16", scope: !1295, file: !1295, line: 53, type: !1330, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !6, !1319}
!1332 = !DILocalVariable(name: "p", arg: 1, scope: !1329, file: !1295, line: 53, type: !6)
!1333 = !DILocation(line: 0, scope: !1329)
!1334 = !DILocalVariable(name: "x", arg: 2, scope: !1329, file: !1295, line: 53, type: !1319)
!1335 = !DILocation(line: 53, column: 61, scope: !1329)
!1336 = !DILocation(line: 55, column: 5, scope: !1329)
!1337 = !DILocation(line: 56, column: 1, scope: !1329)
!1338 = distinct !DISubprogram(name: "mbedtls_get_unaligned_uint64", scope: !1295, file: !1295, line: 91, type: !1339, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!54, !1298}
!1341 = !DILocalVariable(name: "p", arg: 1, scope: !1338, file: !1295, line: 91, type: !1298)
!1342 = !DILocation(line: 0, scope: !1338)
!1343 = !DILocalVariable(name: "r", scope: !1338, file: !1295, line: 93, type: !54)
!1344 = !DILocation(line: 93, column: 14, scope: !1338)
!1345 = !DILocation(line: 94, column: 5, scope: !1338)
!1346 = !DILocation(line: 95, column: 12, scope: !1338)
!1347 = !DILocation(line: 95, column: 5, scope: !1338)
!1348 = distinct !DISubprogram(name: "mbedtls_put_unaligned_uint64", scope: !1295, file: !1295, line: 105, type: !1349, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !6, !54}
!1351 = !DILocalVariable(name: "p", arg: 1, scope: !1348, file: !1295, line: 105, type: !6)
!1352 = !DILocation(line: 0, scope: !1348)
!1353 = !DILocalVariable(name: "x", arg: 2, scope: !1348, file: !1295, line: 105, type: !54)
!1354 = !DILocation(line: 105, column: 61, scope: !1348)
!1355 = !DILocation(line: 107, column: 5, scope: !1348)
!1356 = !DILocation(line: 108, column: 1, scope: !1348)
!1357 = distinct !DISubprogram(name: "mbedtls_poly1305_init", scope: !87, file: !87, line: 241, type: !1358, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_poly1305_context", file: !563, line: 58, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_poly1305_context", file: !563, line: 50, size: 640, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1362, file: !563, line: 52, baseType: !567, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1362, file: !563, line: 53, baseType: !567, size: 128, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !1362, file: !563, line: 54, baseType: !572, size: 160, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1362, file: !563, line: 55, baseType: !576, size: 128, offset: 416)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "queue_len", scope: !1362, file: !563, line: 56, baseType: !30, size: 64, offset: 576)
!1369 = !DILocalVariable(name: "ctx", arg: 1, scope: !1357, file: !87, line: 241, type: !1360)
!1370 = !DILocation(line: 0, scope: !1357)
!1371 = !DILocation(line: 243, column: 31, scope: !1357)
!1372 = !DILocation(line: 243, column: 5, scope: !1357)
!1373 = !DILocation(line: 244, column: 1, scope: !1357)
!1374 = distinct !DISubprogram(name: "mbedtls_poly1305_free", scope: !87, file: !87, line: 246, type: !1358, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1375 = !DILocalVariable(name: "ctx", arg: 1, scope: !1374, file: !87, line: 246, type: !1360)
!1376 = !DILocation(line: 0, scope: !1374)
!1377 = !DILocation(line: 248, column: 13, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !87, line: 248, column: 9)
!1379 = !DILocation(line: 248, column: 9, scope: !1374)
!1380 = !DILocation(line: 249, column: 9, scope: !1378)
!1381 = !DILocation(line: 251, column: 31, scope: !1374)
!1382 = !DILocation(line: 251, column: 5, scope: !1374)
!1383 = !DILocation(line: 252, column: 1, scope: !1374)
!1384 = distinct !DISubprogram(name: "mbedtls_poly1305_starts", scope: !87, file: !87, line: 254, type: !1385, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!151, !1360, !152}
!1387 = !DILocalVariable(name: "ctx", arg: 1, scope: !1384, file: !87, line: 254, type: !1360)
!1388 = !DILocation(line: 0, scope: !1384)
!1389 = !DILocalVariable(name: "key", arg: 2, scope: !1384, file: !87, line: 255, type: !152)
!1390 = !DILocation(line: 258, column: 17, scope: !1384)
!1391 = !DILocation(line: 258, column: 50, scope: !1384)
!1392 = !DILocation(line: 258, column: 10, scope: !1384)
!1393 = !DILocation(line: 258, column: 5, scope: !1384)
!1394 = !DILocation(line: 258, column: 15, scope: !1384)
!1395 = !DILocation(line: 259, column: 17, scope: !1384)
!1396 = !DILocation(line: 259, column: 50, scope: !1384)
!1397 = !DILocation(line: 259, column: 10, scope: !1384)
!1398 = !DILocation(line: 259, column: 5, scope: !1384)
!1399 = !DILocation(line: 259, column: 15, scope: !1384)
!1400 = !DILocation(line: 260, column: 17, scope: !1384)
!1401 = !DILocation(line: 260, column: 50, scope: !1384)
!1402 = !DILocation(line: 260, column: 10, scope: !1384)
!1403 = !DILocation(line: 260, column: 5, scope: !1384)
!1404 = !DILocation(line: 260, column: 15, scope: !1384)
!1405 = !DILocation(line: 261, column: 17, scope: !1384)
!1406 = !DILocation(line: 261, column: 50, scope: !1384)
!1407 = !DILocation(line: 261, column: 10, scope: !1384)
!1408 = !DILocation(line: 261, column: 5, scope: !1384)
!1409 = !DILocation(line: 261, column: 15, scope: !1384)
!1410 = !DILocation(line: 263, column: 17, scope: !1384)
!1411 = !DILocation(line: 263, column: 10, scope: !1384)
!1412 = !DILocation(line: 263, column: 5, scope: !1384)
!1413 = !DILocation(line: 263, column: 15, scope: !1384)
!1414 = !DILocation(line: 264, column: 17, scope: !1384)
!1415 = !DILocation(line: 264, column: 10, scope: !1384)
!1416 = !DILocation(line: 264, column: 5, scope: !1384)
!1417 = !DILocation(line: 264, column: 15, scope: !1384)
!1418 = !DILocation(line: 265, column: 17, scope: !1384)
!1419 = !DILocation(line: 265, column: 10, scope: !1384)
!1420 = !DILocation(line: 265, column: 5, scope: !1384)
!1421 = !DILocation(line: 265, column: 15, scope: !1384)
!1422 = !DILocation(line: 266, column: 17, scope: !1384)
!1423 = !DILocation(line: 266, column: 10, scope: !1384)
!1424 = !DILocation(line: 266, column: 5, scope: !1384)
!1425 = !DILocation(line: 266, column: 15, scope: !1384)
!1426 = !DILocation(line: 269, column: 10, scope: !1384)
!1427 = !DILocation(line: 269, column: 5, scope: !1384)
!1428 = !DILocation(line: 269, column: 17, scope: !1384)
!1429 = !DILocation(line: 270, column: 10, scope: !1384)
!1430 = !DILocation(line: 270, column: 5, scope: !1384)
!1431 = !DILocation(line: 270, column: 17, scope: !1384)
!1432 = !DILocation(line: 271, column: 10, scope: !1384)
!1433 = !DILocation(line: 271, column: 5, scope: !1384)
!1434 = !DILocation(line: 271, column: 17, scope: !1384)
!1435 = !DILocation(line: 272, column: 10, scope: !1384)
!1436 = !DILocation(line: 272, column: 5, scope: !1384)
!1437 = !DILocation(line: 272, column: 17, scope: !1384)
!1438 = !DILocation(line: 273, column: 10, scope: !1384)
!1439 = !DILocation(line: 273, column: 5, scope: !1384)
!1440 = !DILocation(line: 273, column: 17, scope: !1384)
!1441 = !DILocation(line: 276, column: 36, scope: !1384)
!1442 = !DILocation(line: 276, column: 31, scope: !1384)
!1443 = !DILocation(line: 276, column: 5, scope: !1384)
!1444 = !DILocation(line: 277, column: 10, scope: !1384)
!1445 = !DILocation(line: 277, column: 20, scope: !1384)
!1446 = !DILocation(line: 279, column: 5, scope: !1384)
!1447 = distinct !DISubprogram(name: "mbedtls_poly1305_update", scope: !87, file: !87, line: 282, type: !1448, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!151, !1360, !152, !30}
!1450 = !DILocalVariable(name: "ctx", arg: 1, scope: !1447, file: !87, line: 282, type: !1360)
!1451 = !DILocation(line: 0, scope: !1447)
!1452 = !DILocalVariable(name: "input", arg: 2, scope: !1447, file: !87, line: 283, type: !152)
!1453 = !DILocalVariable(name: "ilen", arg: 3, scope: !1447, file: !87, line: 284, type: !30)
!1454 = !DILocalVariable(name: "offset", scope: !1447, file: !87, line: 286, type: !30)
!1455 = !DILocalVariable(name: "remaining", scope: !1447, file: !87, line: 287, type: !30)
!1456 = !DILocation(line: 291, column: 21, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1447, file: !87, line: 291, column: 9)
!1458 = !DILocation(line: 291, column: 28, scope: !1457)
!1459 = !DILocation(line: 291, column: 38, scope: !1457)
!1460 = !DILocation(line: 291, column: 48, scope: !1457)
!1461 = !DILocation(line: 291, column: 9, scope: !1447)
!1462 = !DILocation(line: 293, column: 61, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !87, line: 292, column: 5)
!1464 = !DILocation(line: 293, column: 54, scope: !1463)
!1465 = !DILocalVariable(name: "queue_free_len", scope: !1447, file: !87, line: 288, type: !30)
!1466 = !DILocation(line: 295, column: 18, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !87, line: 295, column: 13)
!1468 = !DILocation(line: 295, column: 13, scope: !1463)
!1469 = !DILocation(line: 300, column: 27, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !87, line: 296, column: 9)
!1471 = !DILocation(line: 300, column: 38, scope: !1470)
!1472 = !DILocation(line: 300, column: 22, scope: !1470)
!1473 = !DILocation(line: 300, column: 13, scope: !1470)
!1474 = !DILocation(line: 304, column: 18, scope: !1470)
!1475 = !DILocation(line: 304, column: 28, scope: !1470)
!1476 = !DILocation(line: 307, column: 9, scope: !1470)
!1477 = !DILocation(line: 311, column: 27, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1467, file: !87, line: 309, column: 9)
!1479 = !DILocation(line: 311, column: 38, scope: !1478)
!1480 = !DILocation(line: 311, column: 22, scope: !1478)
!1481 = !DILocation(line: 311, column: 13, scope: !1478)
!1482 = !DILocation(line: 315, column: 18, scope: !1478)
!1483 = !DILocation(line: 315, column: 28, scope: !1478)
!1484 = !DILocation(line: 317, column: 45, scope: !1478)
!1485 = !DILocation(line: 317, column: 40, scope: !1478)
!1486 = !DILocation(line: 317, column: 13, scope: !1478)
!1487 = !DILocation(line: 319, column: 23, scope: !1478)
!1488 = !DILocation(line: 320, column: 23, scope: !1478)
!1489 = !DILocation(line: 0, scope: !1467)
!1490 = !DILocation(line: 322, column: 5, scope: !1463)
!1491 = !DILocation(line: 286, column: 12, scope: !1447)
!1492 = !DILocation(line: 324, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1447, file: !87, line: 324, column: 9)
!1494 = !DILocation(line: 324, column: 9, scope: !1447)
!1495 = !DILocation(line: 326, column: 29, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !87, line: 325, column: 5)
!1497 = !DILocalVariable(name: "nblocks", scope: !1447, file: !87, line: 289, type: !30)
!1498 = !DILocation(line: 328, column: 42, scope: !1496)
!1499 = !DILocation(line: 328, column: 9, scope: !1496)
!1500 = !DILocation(line: 330, column: 27, scope: !1496)
!1501 = !DILocation(line: 330, column: 16, scope: !1496)
!1502 = !DILocation(line: 331, column: 19, scope: !1496)
!1503 = !DILocation(line: 332, column: 5, scope: !1496)
!1504 = !DILocation(line: 334, column: 19, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1447, file: !87, line: 334, column: 9)
!1506 = !DILocation(line: 334, column: 9, scope: !1447)
!1507 = !DILocation(line: 337, column: 14, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1505, file: !87, line: 335, column: 5)
!1509 = !DILocation(line: 337, column: 24, scope: !1508)
!1510 = !DILocation(line: 338, column: 22, scope: !1508)
!1511 = !DILocation(line: 338, column: 9, scope: !1508)
!1512 = !DILocation(line: 338, column: 30, scope: !1508)
!1513 = !DILocation(line: 339, column: 5, scope: !1508)
!1514 = !DILocation(line: 341, column: 5, scope: !1447)
!1515 = distinct !DISubprogram(name: "poly1305_process", scope: !87, file: !87, line: 76, type: !1516, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1360, !30, !152, !7}
!1518 = !DILocalVariable(name: "ctx", arg: 1, scope: !1515, file: !87, line: 76, type: !1360)
!1519 = !DILocation(line: 0, scope: !1515)
!1520 = !DILocalVariable(name: "nblocks", arg: 2, scope: !1515, file: !87, line: 77, type: !30)
!1521 = !DILocalVariable(name: "input", arg: 3, scope: !1515, file: !87, line: 78, type: !152)
!1522 = !DILocalVariable(name: "needs_padding", arg: 4, scope: !1515, file: !87, line: 79, type: !7)
!1523 = !DILocalVariable(name: "offset", scope: !1515, file: !87, line: 85, type: !30)
!1524 = !DILocation(line: 88, column: 15, scope: !1515)
!1525 = !DILocation(line: 88, column: 10, scope: !1515)
!1526 = !DILocalVariable(name: "r0", scope: !1515, file: !87, line: 83, type: !7)
!1527 = !DILocation(line: 89, column: 15, scope: !1515)
!1528 = !DILocation(line: 89, column: 10, scope: !1515)
!1529 = !DILocalVariable(name: "r1", scope: !1515, file: !87, line: 83, type: !7)
!1530 = !DILocation(line: 90, column: 15, scope: !1515)
!1531 = !DILocation(line: 90, column: 10, scope: !1515)
!1532 = !DILocalVariable(name: "r2", scope: !1515, file: !87, line: 83, type: !7)
!1533 = !DILocation(line: 91, column: 15, scope: !1515)
!1534 = !DILocation(line: 91, column: 10, scope: !1515)
!1535 = !DILocalVariable(name: "r3", scope: !1515, file: !87, line: 83, type: !7)
!1536 = !DILocation(line: 93, column: 21, scope: !1515)
!1537 = !DILocation(line: 93, column: 14, scope: !1515)
!1538 = !DILocalVariable(name: "rs1", scope: !1515, file: !87, line: 84, type: !7)
!1539 = !DILocation(line: 94, column: 21, scope: !1515)
!1540 = !DILocation(line: 94, column: 14, scope: !1515)
!1541 = !DILocalVariable(name: "rs2", scope: !1515, file: !87, line: 84, type: !7)
!1542 = !DILocation(line: 95, column: 21, scope: !1515)
!1543 = !DILocation(line: 95, column: 14, scope: !1515)
!1544 = !DILocalVariable(name: "rs3", scope: !1515, file: !87, line: 84, type: !7)
!1545 = !DILocation(line: 97, column: 17, scope: !1515)
!1546 = !DILocation(line: 97, column: 12, scope: !1515)
!1547 = !DILocalVariable(name: "acc0", scope: !1515, file: !87, line: 82, type: !7)
!1548 = !DILocation(line: 98, column: 17, scope: !1515)
!1549 = !DILocation(line: 98, column: 12, scope: !1515)
!1550 = !DILocalVariable(name: "acc1", scope: !1515, file: !87, line: 82, type: !7)
!1551 = !DILocation(line: 99, column: 17, scope: !1515)
!1552 = !DILocation(line: 99, column: 12, scope: !1515)
!1553 = !DILocalVariable(name: "acc2", scope: !1515, file: !87, line: 82, type: !7)
!1554 = !DILocation(line: 100, column: 17, scope: !1515)
!1555 = !DILocation(line: 100, column: 12, scope: !1515)
!1556 = !DILocalVariable(name: "acc3", scope: !1515, file: !87, line: 82, type: !7)
!1557 = !DILocation(line: 101, column: 17, scope: !1515)
!1558 = !DILocation(line: 101, column: 12, scope: !1515)
!1559 = !DILocalVariable(name: "acc4", scope: !1515, file: !87, line: 82, type: !7)
!1560 = !DILocalVariable(name: "i", scope: !1515, file: !87, line: 86, type: !30)
!1561 = !DILocation(line: 104, column: 10, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1515, file: !87, line: 104, column: 5)
!1563 = !DILocation(line: 0, scope: !1562)
!1564 = !DILocation(line: 104, column: 20, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !87, line: 104, column: 5)
!1566 = !DILocation(line: 104, column: 5, scope: !1562)
!1567 = !DILocation(line: 107, column: 16, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !87, line: 105, column: 5)
!1569 = !DILocalVariable(name: "d0", scope: !1515, file: !87, line: 81, type: !54)
!1570 = !DILocation(line: 108, column: 16, scope: !1568)
!1571 = !DILocalVariable(name: "d1", scope: !1515, file: !87, line: 81, type: !54)
!1572 = !DILocation(line: 109, column: 16, scope: !1568)
!1573 = !DILocalVariable(name: "d2", scope: !1515, file: !87, line: 81, type: !54)
!1574 = !DILocation(line: 110, column: 16, scope: !1568)
!1575 = !DILocalVariable(name: "d3", scope: !1515, file: !87, line: 81, type: !54)
!1576 = !DILocation(line: 113, column: 16, scope: !1568)
!1577 = !DILocation(line: 113, column: 13, scope: !1568)
!1578 = !DILocation(line: 114, column: 16, scope: !1568)
!1579 = !DILocation(line: 114, column: 39, scope: !1568)
!1580 = !DILocation(line: 114, column: 32, scope: !1568)
!1581 = !DILocation(line: 114, column: 13, scope: !1568)
!1582 = !DILocation(line: 115, column: 16, scope: !1568)
!1583 = !DILocation(line: 115, column: 39, scope: !1568)
!1584 = !DILocation(line: 115, column: 32, scope: !1568)
!1585 = !DILocation(line: 115, column: 13, scope: !1568)
!1586 = !DILocation(line: 116, column: 16, scope: !1568)
!1587 = !DILocation(line: 116, column: 39, scope: !1568)
!1588 = !DILocation(line: 116, column: 32, scope: !1568)
!1589 = !DILocation(line: 116, column: 13, scope: !1568)
!1590 = !DILocation(line: 117, column: 16, scope: !1568)
!1591 = !DILocation(line: 118, column: 16, scope: !1568)
!1592 = !DILocation(line: 119, column: 16, scope: !1568)
!1593 = !DILocation(line: 120, column: 16, scope: !1568)
!1594 = !DILocation(line: 121, column: 33, scope: !1568)
!1595 = !DILocation(line: 121, column: 17, scope: !1568)
!1596 = !DILocation(line: 121, column: 42, scope: !1568)
!1597 = !DILocation(line: 121, column: 14, scope: !1568)
!1598 = !DILocation(line: 124, column: 14, scope: !1568)
!1599 = !DILocation(line: 125, column: 14, scope: !1568)
!1600 = !DILocation(line: 124, column: 33, scope: !1568)
!1601 = !DILocation(line: 126, column: 14, scope: !1568)
!1602 = !DILocation(line: 125, column: 33, scope: !1568)
!1603 = !DILocation(line: 127, column: 14, scope: !1568)
!1604 = !DILocation(line: 126, column: 33, scope: !1568)
!1605 = !DILocation(line: 128, column: 14, scope: !1568)
!1606 = !DILocation(line: 129, column: 14, scope: !1568)
!1607 = !DILocation(line: 128, column: 33, scope: !1568)
!1608 = !DILocation(line: 130, column: 14, scope: !1568)
!1609 = !DILocation(line: 129, column: 33, scope: !1568)
!1610 = !DILocation(line: 131, column: 14, scope: !1568)
!1611 = !DILocation(line: 130, column: 33, scope: !1568)
!1612 = !DILocation(line: 132, column: 14, scope: !1568)
!1613 = !DILocation(line: 131, column: 33, scope: !1568)
!1614 = !DILocation(line: 133, column: 14, scope: !1568)
!1615 = !DILocation(line: 134, column: 14, scope: !1568)
!1616 = !DILocation(line: 133, column: 33, scope: !1568)
!1617 = !DILocation(line: 135, column: 14, scope: !1568)
!1618 = !DILocation(line: 134, column: 33, scope: !1568)
!1619 = !DILocation(line: 136, column: 14, scope: !1568)
!1620 = !DILocation(line: 135, column: 33, scope: !1568)
!1621 = !DILocation(line: 137, column: 14, scope: !1568)
!1622 = !DILocation(line: 136, column: 33, scope: !1568)
!1623 = !DILocation(line: 138, column: 14, scope: !1568)
!1624 = !DILocation(line: 139, column: 14, scope: !1568)
!1625 = !DILocation(line: 138, column: 33, scope: !1568)
!1626 = !DILocation(line: 140, column: 14, scope: !1568)
!1627 = !DILocation(line: 139, column: 33, scope: !1568)
!1628 = !DILocation(line: 141, column: 14, scope: !1568)
!1629 = !DILocation(line: 140, column: 33, scope: !1568)
!1630 = !DILocation(line: 142, column: 14, scope: !1568)
!1631 = !DILocation(line: 141, column: 33, scope: !1568)
!1632 = !DILocation(line: 143, column: 14, scope: !1568)
!1633 = !DILocation(line: 146, column: 20, scope: !1568)
!1634 = !DILocation(line: 146, column: 12, scope: !1568)
!1635 = !DILocation(line: 147, column: 20, scope: !1568)
!1636 = !DILocation(line: 147, column: 12, scope: !1568)
!1637 = !DILocation(line: 148, column: 20, scope: !1568)
!1638 = !DILocation(line: 148, column: 12, scope: !1568)
!1639 = !DILocation(line: 149, column: 16, scope: !1568)
!1640 = !DILocation(line: 150, column: 16, scope: !1568)
!1641 = !DILocation(line: 151, column: 16, scope: !1568)
!1642 = !DILocation(line: 152, column: 16, scope: !1568)
!1643 = !DILocation(line: 153, column: 32, scope: !1568)
!1644 = !DILocation(line: 153, column: 16, scope: !1568)
!1645 = !DILocation(line: 153, column: 40, scope: !1568)
!1646 = !DILocation(line: 155, column: 14, scope: !1568)
!1647 = !DILocation(line: 155, column: 39, scope: !1568)
!1648 = !DILocation(line: 155, column: 32, scope: !1568)
!1649 = !DILocation(line: 155, column: 30, scope: !1568)
!1650 = !DILocation(line: 155, column: 55, scope: !1568)
!1651 = !DILocation(line: 155, column: 48, scope: !1568)
!1652 = !DILocation(line: 155, column: 46, scope: !1568)
!1653 = !DILocation(line: 156, column: 14, scope: !1568)
!1654 = !DILocation(line: 157, column: 16, scope: !1568)
!1655 = !DILocation(line: 158, column: 14, scope: !1568)
!1656 = !DILocation(line: 158, column: 37, scope: !1568)
!1657 = !DILocation(line: 158, column: 30, scope: !1568)
!1658 = !DILocation(line: 159, column: 16, scope: !1568)
!1659 = !DILocation(line: 160, column: 14, scope: !1568)
!1660 = !DILocation(line: 160, column: 37, scope: !1568)
!1661 = !DILocation(line: 160, column: 30, scope: !1568)
!1662 = !DILocation(line: 161, column: 16, scope: !1568)
!1663 = !DILocation(line: 162, column: 14, scope: !1568)
!1664 = !DILocation(line: 162, column: 37, scope: !1568)
!1665 = !DILocation(line: 162, column: 30, scope: !1568)
!1666 = !DILocation(line: 163, column: 16, scope: !1568)
!1667 = !DILocation(line: 164, column: 14, scope: !1568)
!1668 = !DILocation(line: 164, column: 37, scope: !1568)
!1669 = !DILocation(line: 164, column: 30, scope: !1568)
!1670 = !DILocation(line: 165, column: 16, scope: !1568)
!1671 = !DILocation(line: 167, column: 19, scope: !1568)
!1672 = !DILocation(line: 168, column: 5, scope: !1568)
!1673 = !DILocation(line: 104, column: 32, scope: !1565)
!1674 = !DILocation(line: 104, column: 5, scope: !1565)
!1675 = distinct !{!1675, !1566, !1676, !258}
!1676 = !DILocation(line: 168, column: 5, scope: !1562)
!1677 = !DILocation(line: 170, column: 10, scope: !1515)
!1678 = !DILocation(line: 170, column: 5, scope: !1515)
!1679 = !DILocation(line: 170, column: 17, scope: !1515)
!1680 = !DILocation(line: 171, column: 10, scope: !1515)
!1681 = !DILocation(line: 171, column: 5, scope: !1515)
!1682 = !DILocation(line: 171, column: 17, scope: !1515)
!1683 = !DILocation(line: 172, column: 10, scope: !1515)
!1684 = !DILocation(line: 172, column: 5, scope: !1515)
!1685 = !DILocation(line: 172, column: 17, scope: !1515)
!1686 = !DILocation(line: 173, column: 10, scope: !1515)
!1687 = !DILocation(line: 173, column: 5, scope: !1515)
!1688 = !DILocation(line: 173, column: 17, scope: !1515)
!1689 = !DILocation(line: 174, column: 10, scope: !1515)
!1690 = !DILocation(line: 174, column: 5, scope: !1515)
!1691 = !DILocation(line: 174, column: 17, scope: !1515)
!1692 = !DILocation(line: 175, column: 1, scope: !1515)
!1693 = distinct !DISubprogram(name: "mul64", scope: !87, file: !87, line: 58, type: !1694, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!54, !7, !7}
!1696 = !DILocalVariable(name: "a", arg: 1, scope: !1693, file: !87, line: 58, type: !7)
!1697 = !DILocation(line: 0, scope: !1693)
!1698 = !DILocalVariable(name: "b", arg: 2, scope: !1693, file: !87, line: 58, type: !7)
!1699 = !DILocation(line: 60, column: 13, scope: !1693)
!1700 = !DILocation(line: 60, column: 28, scope: !1693)
!1701 = !DILocation(line: 60, column: 26, scope: !1693)
!1702 = !DILocation(line: 60, column: 5, scope: !1693)
!1703 = distinct !DISubprogram(name: "mbedtls_poly1305_finish", scope: !87, file: !87, line: 344, type: !1704, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!151, !1360, !232}
!1706 = !DILocalVariable(name: "ctx", arg: 1, scope: !1703, file: !87, line: 344, type: !1360)
!1707 = !DILocation(line: 0, scope: !1703)
!1708 = !DILocalVariable(name: "mac", arg: 2, scope: !1703, file: !87, line: 345, type: !232)
!1709 = !DILocation(line: 348, column: 14, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1703, file: !87, line: 348, column: 9)
!1711 = !DILocation(line: 348, column: 24, scope: !1710)
!1712 = !DILocation(line: 348, column: 9, scope: !1703)
!1713 = !DILocation(line: 351, column: 14, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !87, line: 349, column: 5)
!1715 = !DILocation(line: 351, column: 25, scope: !1714)
!1716 = !DILocation(line: 351, column: 9, scope: !1714)
!1717 = !DILocation(line: 351, column: 36, scope: !1714)
!1718 = !DILocation(line: 352, column: 14, scope: !1714)
!1719 = !DILocation(line: 352, column: 23, scope: !1714)
!1720 = !DILocation(line: 355, column: 23, scope: !1714)
!1721 = !DILocation(line: 355, column: 34, scope: !1714)
!1722 = !DILocation(line: 355, column: 18, scope: !1714)
!1723 = !DILocation(line: 357, column: 50, scope: !1714)
!1724 = !DILocation(line: 357, column: 43, scope: !1714)
!1725 = !DILocation(line: 355, column: 9, scope: !1714)
!1726 = !DILocation(line: 360, column: 32, scope: !1714)
!1727 = !DILocation(line: 360, column: 27, scope: !1714)
!1728 = !DILocation(line: 359, column: 9, scope: !1714)
!1729 = !DILocation(line: 361, column: 5, scope: !1714)
!1730 = !DILocation(line: 363, column: 5, scope: !1703)
!1731 = !DILocation(line: 365, column: 5, scope: !1703)
!1732 = distinct !DISubprogram(name: "poly1305_compute_mac", scope: !87, file: !87, line: 184, type: !1733, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1735, !232}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1737 = !DILocalVariable(name: "ctx", arg: 1, scope: !1732, file: !87, line: 184, type: !1735)
!1738 = !DILocation(line: 0, scope: !1732)
!1739 = !DILocalVariable(name: "mac", arg: 2, scope: !1732, file: !87, line: 185, type: !232)
!1740 = !DILocation(line: 193, column: 17, scope: !1732)
!1741 = !DILocation(line: 193, column: 12, scope: !1732)
!1742 = !DILocalVariable(name: "acc0", scope: !1732, file: !87, line: 189, type: !7)
!1743 = !DILocation(line: 194, column: 17, scope: !1732)
!1744 = !DILocation(line: 194, column: 12, scope: !1732)
!1745 = !DILocalVariable(name: "acc1", scope: !1732, file: !87, line: 189, type: !7)
!1746 = !DILocation(line: 195, column: 17, scope: !1732)
!1747 = !DILocation(line: 195, column: 12, scope: !1732)
!1748 = !DILocalVariable(name: "acc2", scope: !1732, file: !87, line: 189, type: !7)
!1749 = !DILocation(line: 196, column: 17, scope: !1732)
!1750 = !DILocation(line: 196, column: 12, scope: !1732)
!1751 = !DILocalVariable(name: "acc3", scope: !1732, file: !87, line: 189, type: !7)
!1752 = !DILocation(line: 197, column: 17, scope: !1732)
!1753 = !DILocation(line: 197, column: 12, scope: !1732)
!1754 = !DILocalVariable(name: "acc4", scope: !1732, file: !87, line: 189, type: !7)
!1755 = !DILocation(line: 205, column: 12, scope: !1732)
!1756 = !DILocation(line: 205, column: 28, scope: !1732)
!1757 = !DILocalVariable(name: "d", scope: !1732, file: !87, line: 187, type: !54)
!1758 = !DILocation(line: 206, column: 10, scope: !1732)
!1759 = !DILocalVariable(name: "g0", scope: !1732, file: !87, line: 188, type: !7)
!1760 = !DILocation(line: 207, column: 12, scope: !1732)
!1761 = !DILocation(line: 207, column: 34, scope: !1732)
!1762 = !DILocation(line: 207, column: 28, scope: !1732)
!1763 = !DILocation(line: 208, column: 10, scope: !1732)
!1764 = !DILocalVariable(name: "g1", scope: !1732, file: !87, line: 188, type: !7)
!1765 = !DILocation(line: 209, column: 12, scope: !1732)
!1766 = !DILocation(line: 209, column: 34, scope: !1732)
!1767 = !DILocation(line: 209, column: 28, scope: !1732)
!1768 = !DILocation(line: 210, column: 10, scope: !1732)
!1769 = !DILocalVariable(name: "g2", scope: !1732, file: !87, line: 188, type: !7)
!1770 = !DILocation(line: 211, column: 12, scope: !1732)
!1771 = !DILocation(line: 211, column: 34, scope: !1732)
!1772 = !DILocation(line: 211, column: 28, scope: !1732)
!1773 = !DILocation(line: 212, column: 10, scope: !1732)
!1774 = !DILocalVariable(name: "g3", scope: !1732, file: !87, line: 188, type: !7)
!1775 = !DILocation(line: 213, column: 32, scope: !1732)
!1776 = !DILocation(line: 213, column: 17, scope: !1732)
!1777 = !DILocation(line: 213, column: 15, scope: !1732)
!1778 = !DILocalVariable(name: "g4", scope: !1732, file: !87, line: 188, type: !7)
!1779 = !DILocation(line: 216, column: 33, scope: !1732)
!1780 = !DILocation(line: 216, column: 26, scope: !1732)
!1781 = !DILocalVariable(name: "mask", scope: !1732, file: !87, line: 190, type: !7)
!1782 = !DILocation(line: 217, column: 16, scope: !1732)
!1783 = !DILocalVariable(name: "mask_inv", scope: !1732, file: !87, line: 191, type: !7)
!1784 = !DILocation(line: 220, column: 19, scope: !1732)
!1785 = !DILocation(line: 220, column: 39, scope: !1732)
!1786 = !DILocation(line: 220, column: 32, scope: !1732)
!1787 = !DILocation(line: 221, column: 19, scope: !1732)
!1788 = !DILocation(line: 221, column: 39, scope: !1732)
!1789 = !DILocation(line: 221, column: 32, scope: !1732)
!1790 = !DILocation(line: 222, column: 19, scope: !1732)
!1791 = !DILocation(line: 222, column: 39, scope: !1732)
!1792 = !DILocation(line: 222, column: 32, scope: !1732)
!1793 = !DILocation(line: 223, column: 19, scope: !1732)
!1794 = !DILocation(line: 223, column: 39, scope: !1732)
!1795 = !DILocation(line: 223, column: 32, scope: !1732)
!1796 = !DILocation(line: 226, column: 9, scope: !1732)
!1797 = !DILocation(line: 226, column: 32, scope: !1732)
!1798 = !DILocation(line: 226, column: 27, scope: !1732)
!1799 = !DILocation(line: 226, column: 25, scope: !1732)
!1800 = !DILocation(line: 227, column: 12, scope: !1732)
!1801 = !DILocation(line: 228, column: 9, scope: !1732)
!1802 = !DILocation(line: 228, column: 32, scope: !1732)
!1803 = !DILocation(line: 228, column: 27, scope: !1732)
!1804 = !DILocation(line: 228, column: 25, scope: !1732)
!1805 = !DILocation(line: 228, column: 43, scope: !1732)
!1806 = !DILocation(line: 228, column: 37, scope: !1732)
!1807 = !DILocation(line: 229, column: 12, scope: !1732)
!1808 = !DILocation(line: 230, column: 9, scope: !1732)
!1809 = !DILocation(line: 230, column: 32, scope: !1732)
!1810 = !DILocation(line: 230, column: 27, scope: !1732)
!1811 = !DILocation(line: 230, column: 25, scope: !1732)
!1812 = !DILocation(line: 230, column: 43, scope: !1732)
!1813 = !DILocation(line: 230, column: 37, scope: !1732)
!1814 = !DILocation(line: 231, column: 12, scope: !1732)
!1815 = !DILocation(line: 232, column: 18, scope: !1732)
!1816 = !DILocation(line: 232, column: 13, scope: !1732)
!1817 = !DILocation(line: 232, column: 40, scope: !1732)
!1818 = !DILocation(line: 232, column: 25, scope: !1732)
!1819 = !DILocation(line: 232, column: 23, scope: !1732)
!1820 = !DILocation(line: 232, column: 10, scope: !1732)
!1821 = !DILocation(line: 235, column: 5, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !87, line: 235, column: 5)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !87, line: 235, column: 5)
!1824 = distinct !DILexicalBlock(scope: !1732, file: !87, line: 235, column: 5)
!1825 = !DILocation(line: 236, column: 5, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !87, line: 236, column: 5)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !87, line: 236, column: 5)
!1828 = distinct !DILexicalBlock(scope: !1732, file: !87, line: 236, column: 5)
!1829 = !DILocation(line: 237, column: 5, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !87, line: 237, column: 5)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !87, line: 237, column: 5)
!1832 = distinct !DILexicalBlock(scope: !1732, file: !87, line: 237, column: 5)
!1833 = !DILocation(line: 238, column: 5, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !87, line: 238, column: 5)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !87, line: 238, column: 5)
!1836 = distinct !DILexicalBlock(scope: !1732, file: !87, line: 238, column: 5)
!1837 = !DILocation(line: 239, column: 1, scope: !1732)
!1838 = distinct !DISubprogram(name: "mbedtls_poly1305_mac", scope: !87, file: !87, line: 368, type: !1839, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!151, !152, !152, !30, !232}
!1841 = !DILocalVariable(name: "key", arg: 1, scope: !1838, file: !87, line: 368, type: !152)
!1842 = !DILocation(line: 0, scope: !1838)
!1843 = !DILocalVariable(name: "input", arg: 2, scope: !1838, file: !87, line: 369, type: !152)
!1844 = !DILocalVariable(name: "ilen", arg: 3, scope: !1838, file: !87, line: 370, type: !30)
!1845 = !DILocalVariable(name: "mac", arg: 4, scope: !1838, file: !87, line: 371, type: !232)
!1846 = !DILocalVariable(name: "ctx", scope: !1838, file: !87, line: 373, type: !1361)
!1847 = !DILocation(line: 373, column: 30, scope: !1838)
!1848 = !DILocalVariable(name: "ret", scope: !1838, file: !87, line: 374, type: !151)
!1849 = !DILocation(line: 376, column: 5, scope: !1838)
!1850 = !DILocation(line: 378, column: 11, scope: !1838)
!1851 = !DILocation(line: 379, column: 13, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1838, file: !87, line: 379, column: 9)
!1853 = !DILocation(line: 379, column: 9, scope: !1838)
!1854 = !DILocation(line: 380, column: 9, scope: !1852)
!1855 = !DILocation(line: 382, column: 11, scope: !1838)
!1856 = !DILocation(line: 383, column: 13, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1838, file: !87, line: 383, column: 9)
!1858 = !DILocation(line: 383, column: 9, scope: !1838)
!1859 = !DILocation(line: 384, column: 9, scope: !1857)
!1860 = !DILocation(line: 386, column: 11, scope: !1838)
!1861 = !DILocation(line: 386, column: 5, scope: !1838)
!1862 = !DILabel(scope: !1838, name: "cleanup", file: !87, line: 388)
!1863 = !DILocation(line: 388, column: 1, scope: !1838)
!1864 = !DILocation(line: 389, column: 5, scope: !1838)
!1865 = !DILocation(line: 390, column: 5, scope: !1838)
!1866 = distinct !DISubprogram(name: "mbedtls_poly1305_self_test", scope: !87, file: !87, line: 476, type: !485, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1867 = !DILocalVariable(name: "verbose", arg: 1, scope: !1866, file: !87, line: 476, type: !151)
!1868 = !DILocation(line: 0, scope: !1866)
!1869 = !DILocalVariable(name: "mac", scope: !1866, file: !87, line: 478, type: !794)
!1870 = !DILocation(line: 478, column: 19, scope: !1866)
!1871 = !DILocalVariable(name: "ret", scope: !1866, file: !87, line: 480, type: !151)
!1872 = !DILocalVariable(name: "i", scope: !1866, file: !87, line: 479, type: !11)
!1873 = !DILocation(line: 482, column: 10, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1866, file: !87, line: 482, column: 5)
!1875 = !DILocation(line: 0, scope: !1874)
!1876 = !DILocation(line: 482, column: 20, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !87, line: 482, column: 5)
!1878 = !DILocation(line: 482, column: 5, scope: !1874)
!1879 = !DILocation(line: 484, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !87, line: 484, column: 13)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !87, line: 483, column: 5)
!1882 = !DILocation(line: 484, column: 13, scope: !1881)
!1883 = !DILocation(line: 485, column: 13, scope: !1880)
!1884 = !DILocation(line: 487, column: 37, scope: !1881)
!1885 = !DILocation(line: 488, column: 37, scope: !1881)
!1886 = !DILocation(line: 489, column: 37, scope: !1881)
!1887 = !DILocation(line: 490, column: 37, scope: !1881)
!1888 = !DILocation(line: 487, column: 15, scope: !1881)
!1889 = !DILocation(line: 491, column: 9, scope: !1881)
!1890 = !DILocation(line: 491, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !87, line: 491, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !87, line: 491, column: 9)
!1893 = !DILocation(line: 491, column: 9, scope: !1892)
!1894 = !DILocation(line: 491, column: 9, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !87, line: 491, column: 9)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !87, line: 491, column: 9)
!1897 = !DILocation(line: 491, column: 9, scope: !1896)
!1898 = !DILocation(line: 493, column: 9, scope: !1881)
!1899 = !DILocation(line: 493, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !87, line: 493, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1881, file: !87, line: 493, column: 9)
!1902 = !DILocation(line: 493, column: 9, scope: !1901)
!1903 = !DILocation(line: 493, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !87, line: 493, column: 9)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !87, line: 493, column: 9)
!1906 = !DILocation(line: 493, column: 9, scope: !1905)
!1907 = !DILocation(line: 495, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1881, file: !87, line: 495, column: 13)
!1909 = !DILocation(line: 495, column: 13, scope: !1881)
!1910 = !DILocation(line: 496, column: 13, scope: !1908)
!1911 = !DILocation(line: 497, column: 5, scope: !1881)
!1912 = !DILocation(line: 482, column: 27, scope: !1877)
!1913 = !DILocation(line: 482, column: 5, scope: !1877)
!1914 = distinct !{!1914, !1878, !1915, !258}
!1915 = !DILocation(line: 497, column: 5, scope: !1874)
!1916 = !DILocation(line: 499, column: 17, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1866, file: !87, line: 499, column: 9)
!1918 = !DILocation(line: 499, column: 9, scope: !1866)
!1919 = !DILocation(line: 500, column: 9, scope: !1917)
!1920 = !DILocation(line: 502, column: 5, scope: !1866)
!1921 = !DILocation(line: 503, column: 1, scope: !1866)
