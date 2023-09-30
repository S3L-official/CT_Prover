; ModuleID = 'arcfour.bc'
source_filename = "arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcry_cipher_spec = type { i32, %struct.anon, i8*, i8**, %struct.gcry_cipher_oid_spec*, i64, i64, i64, i32 (i8*, i8*, i32, %struct.cipher_bulk_ops*)*, i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*, i8*, i64)*, void (i8*, i8*, i8*, i64)*, i32 (i32, i32, void (i8*, i32, i8*, i8*)*)*, i32 (i8*, i32, i8*, i64)*, void (i8*, i8*, i64)* }
%struct.anon = type { i8, [3 x i8] }
%struct.gcry_cipher_oid_spec = type { i8*, i32 }
%struct.cipher_bulk_ops = type { void (i8*, i8*, i8*, i8*, i64)*, void (i8*, i8*, i8*, i8*, i64)*, void (i8*, i8*, i8*, i8*, i64, i32)*, void (i8*, i8*, i8*, i8*, i64)*, void (i8*, i8*, i8*, i8*, i64)*, void (i8*, i8*, i8*, i8*, i64)*, void (i8*, i8*, i8*, i8*, i64)*, i64 (%struct.gcry_cipher_handle*, i8*, i8*, i64, i32)*, i64 (%struct.gcry_cipher_handle*, i8*, i64)*, void (i8*, i8*, i8*, i8*, i64, i32)*, i64 (%struct.gcry_cipher_handle*, i8*, i8*, i64, i32)* }
%struct.gcry_cipher_handle = type { i32, i64, i64, %struct.gcry_cipher_spec*, i32, %struct.cipher_mode_ops, %struct.cipher_bulk_ops, i32, i32, %struct.anon.0, %union.anon, %union.anon.1, [16 x i8], i32, [12 x i8], %union.anon.2, %union.cipher_context_alignment_t }
%struct.cipher_mode_ops = type { i32 (%struct.gcry_cipher_handle*, i8*, i64, i8*, i64)*, i32 (%struct.gcry_cipher_handle*, i8*, i64, i8*, i64)*, i32 (%struct.gcry_cipher_handle*, i8*, i64)*, i32 (%struct.gcry_cipher_handle*, i8*, i64)*, i32 (%struct.gcry_cipher_handle*, i8*, i64)*, i32 (%struct.gcry_cipher_handle*, i8*, i64)* }
%struct.anon.0 = type { i8, [3 x i8] }
%union.anon = type { %union.cipher_context_alignment_t }
%union.anon.1 = type { %union.cipher_context_alignment_t }
%union.anon.2 = type { %struct.anon.7 }
%struct.anon.7 = type { %union.anon.8, [16 x i8], i32, [2 x i32], [2 x i32], [16 x i8], i8, [11 x i8], %union.anon.9, [64 x i64], i32 (%struct.gcry_cipher_handle*, i8*, i8*, i64)*, i32 (%struct.gcry_cipher_handle*, i8*, i8*, i64)*, i32, [12 x i8] }
%union.anon.8 = type { %union.cipher_context_alignment_t }
%union.anon.9 = type { %union.cipher_context_alignment_t }
%union.cipher_context_alignment_t = type { %union.PROPERLY_ALIGNED_TYPE, [8 x i8] }
%union.PROPERLY_ALIGNED_TYPE = type { i64 }
%struct.ARCFOUR_context = type { [256 x i32], i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ARCFOUR\00", align 1
@_gcry_cipher_spec_arcfour = dso_local global %struct.gcry_cipher_spec { i32 301, %struct.anon { i8 0, [3 x i8] undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** null, %struct.gcry_cipher_oid_spec* null, i64 1, i64 128, i64 1032, i32 (i8*, i8*, i32, %struct.cipher_bulk_ops*)* @arcfour_setkey, i32 (i8*, i8*, i8*)* null, i32 (i8*, i8*, i8*)* null, void (i8*, i8*, i8*, i64)* @encrypt_stream, void (i8*, i8*, i8*, i64)* @encrypt_stream, i32 (i32, i32, void (i8*, i32, i8*, i8*)*)* null, i32 (i8*, i32, i8*, i64)* null, void (i8*, i8*, i64)* null }, align 8, !dbg !0
@do_arcfour_setkey.initialized = internal global i32 0, align 4, !dbg !604
@do_arcfour_setkey.selftest_failed = internal global i8* null, align 8, !dbg !618
@.str.1 = private unnamed_addr constant [30 x i8] c"ARCFOUR selftest failed (%s)\0A\00", align 1
@selftest.key_1 = internal constant [5 x i8] c"a\8Ac\D2\FB", align 1, !dbg !623
@selftest.plaintext_1 = internal constant [5 x i8] c"\DC\EEL\F9,", align 1, !dbg !631
@selftest.ciphertext_1 = internal constant [5 x i8] c"\F18)\C9\DE", align 1, !dbg !633
@.str.2 = private unnamed_addr constant [34 x i8] c"Arcfour encryption test 1 failed.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Arcfour decryption test 1 failed.\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @arcfour_setkey(i8* %0, i8* %1, i32 %2, %struct.cipher_bulk_ops* %3) #0 !dbg !958 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cipher_bulk_ops*, align 8
  %9 = alloca %struct.ARCFOUR_context*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !962, metadata !DIExpression()), !dbg !963
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !964, metadata !DIExpression()), !dbg !965
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !966, metadata !DIExpression()), !dbg !967
  store %struct.cipher_bulk_ops* %3, %struct.cipher_bulk_ops** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.cipher_bulk_ops** %8, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata %struct.ARCFOUR_context** %9, metadata !970, metadata !DIExpression()), !dbg !971
  %11 = load i8*, i8** %5, align 8, !dbg !972
  %12 = bitcast i8* %11 to %struct.ARCFOUR_context*, !dbg !973
  store %struct.ARCFOUR_context* %12, %struct.ARCFOUR_context** %9, align 8, !dbg !971
  call void @llvm.dbg.declare(metadata i32* %10, metadata !974, metadata !DIExpression()), !dbg !975
  %13 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %9, align 8, !dbg !976
  %14 = bitcast %struct.ARCFOUR_context* %13 to i8*, !dbg !976
  %15 = load i8*, i8** %6, align 8, !dbg !977
  %16 = load i32, i32* %7, align 4, !dbg !978
  %17 = call i32 @do_arcfour_setkey(i8* %14, i8* %15, i32 %16), !dbg !979
  store i32 %17, i32* %10, align 4, !dbg !975
  %18 = load %struct.cipher_bulk_ops*, %struct.cipher_bulk_ops** %8, align 8, !dbg !980
  %19 = load i32, i32* %10, align 4, !dbg !981
  ret i32 %19, !dbg !982
}

; Function Attrs: noinline nounwind uwtable
define internal void @encrypt_stream(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !983 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !986, metadata !DIExpression()), !dbg !987
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !988, metadata !DIExpression()), !dbg !989
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !990, metadata !DIExpression()), !dbg !991
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !992, metadata !DIExpression()), !dbg !993
  %9 = load i8*, i8** %5, align 8, !dbg !994
  %10 = load i64, i64* %8, align 8, !dbg !995
  %11 = load i8*, i8** %7, align 8, !dbg !996
  %12 = load i8*, i8** %6, align 8, !dbg !997
  call void @_gcry_arcfour_amd64(i8* %9, i64 %10, i8* %11, i8* %12), !dbg !998
  ret void, !dbg !999
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @do_arcfour_setkey(i8* %0, i8* %1, i32 %2) #0 !dbg !606 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca %struct.ARCFOUR_context*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1000, metadata !DIExpression()), !dbg !1001
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1008, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !1010, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata %struct.ARCFOUR_context** %11, metadata !1013, metadata !DIExpression()), !dbg !1014
  %13 = load i8*, i8** %5, align 8, !dbg !1015
  %14 = bitcast i8* %13 to %struct.ARCFOUR_context*, !dbg !1016
  store %struct.ARCFOUR_context* %14, %struct.ARCFOUR_context** %11, align 8, !dbg !1014
  %15 = load i32, i32* @do_arcfour_setkey.initialized, align 4, !dbg !1017
  %16 = icmp ne i32 %15, 0, !dbg !1017
  br i1 %16, label %24, label %17, !dbg !1019

17:                                               ; preds = %3
  store i32 1, i32* @do_arcfour_setkey.initialized, align 4, !dbg !1020
  %18 = call i8* @selftest(), !dbg !1022
  store i8* %18, i8** @do_arcfour_setkey.selftest_failed, align 8, !dbg !1023
  %19 = load i8*, i8** @do_arcfour_setkey.selftest_failed, align 8, !dbg !1024
  %20 = icmp ne i8* %19, null, !dbg !1024
  br i1 %20, label %21, label %23, !dbg !1026

21:                                               ; preds = %17
  %22 = load i8*, i8** @do_arcfour_setkey.selftest_failed, align 8, !dbg !1027
  call void (i8*, ...) @_gcry_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %22), !dbg !1028
  br label %23, !dbg !1028

23:                                               ; preds = %21, %17
  br label %24, !dbg !1029

24:                                               ; preds = %23, %3
  %25 = load i8*, i8** @do_arcfour_setkey.selftest_failed, align 8, !dbg !1030
  %26 = icmp ne i8* %25, null, !dbg !1030
  br i1 %26, label %27, label %28, !dbg !1032

27:                                               ; preds = %24
  store i32 50, i32* %4, align 4, !dbg !1033
  br label %126, !dbg !1033

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4, !dbg !1034
  %30 = icmp ult i32 %29, 5, !dbg !1036
  br i1 %30, label %31, label %32, !dbg !1037

31:                                               ; preds = %28
  store i32 44, i32* %4, align 4, !dbg !1038
  br label %126, !dbg !1038

32:                                               ; preds = %28
  %33 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1039
  %34 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %33, i32 0, i32 2, !dbg !1040
  store i32 0, i32* %34, align 4, !dbg !1041
  %35 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1042
  %36 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %35, i32 0, i32 1, !dbg !1043
  store i32 0, i32* %36, align 4, !dbg !1044
  store i32 0, i32* %8, align 4, !dbg !1045
  br label %37, !dbg !1047

37:                                               ; preds = %47, %32
  %38 = load i32, i32* %8, align 4, !dbg !1048
  %39 = icmp slt i32 %38, 256, !dbg !1050
  br i1 %39, label %40, label %50, !dbg !1051

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4, !dbg !1052
  %42 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1053
  %43 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %42, i32 0, i32 0, !dbg !1054
  %44 = load i32, i32* %8, align 4, !dbg !1055
  %45 = sext i32 %44 to i64, !dbg !1053
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %43, i64 0, i64 %45, !dbg !1053
  store i32 %41, i32* %46, align 4, !dbg !1056
  br label %47, !dbg !1053

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4, !dbg !1057
  %49 = add nsw i32 %48, 1, !dbg !1057
  store i32 %49, i32* %8, align 4, !dbg !1057
  br label %37, !dbg !1058, !llvm.loop !1059

50:                                               ; preds = %37
  store i32 0, i32* %9, align 4, !dbg !1062
  store i32 0, i32* %8, align 4, !dbg !1064
  br label %51, !dbg !1065

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %8, align 4, !dbg !1066
  %53 = icmp slt i32 %52, 256, !dbg !1068
  br i1 %53, label %54, label %73, !dbg !1069

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4, !dbg !1070
  %56 = load i32, i32* %7, align 4, !dbg !1073
  %57 = icmp uge i32 %55, %56, !dbg !1074
  br i1 %57, label %58, label %59, !dbg !1075

58:                                               ; preds = %54
  store i32 0, i32* %9, align 4, !dbg !1076
  br label %59, !dbg !1077

59:                                               ; preds = %58, %54
  %60 = load i8*, i8** %6, align 8, !dbg !1078
  %61 = load i32, i32* %9, align 4, !dbg !1079
  %62 = sext i32 %61 to i64, !dbg !1078
  %63 = getelementptr inbounds i8, i8* %60, i64 %62, !dbg !1078
  %64 = load i8, i8* %63, align 1, !dbg !1078
  %65 = load i32, i32* %8, align 4, !dbg !1080
  %66 = sext i32 %65 to i64, !dbg !1081
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %66, !dbg !1081
  store i8 %64, i8* %67, align 1, !dbg !1082
  br label %68, !dbg !1083

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4, !dbg !1084
  %70 = add nsw i32 %69, 1, !dbg !1084
  store i32 %70, i32* %8, align 4, !dbg !1084
  %71 = load i32, i32* %9, align 4, !dbg !1085
  %72 = add nsw i32 %71, 1, !dbg !1085
  store i32 %72, i32* %9, align 4, !dbg !1085
  br label %51, !dbg !1086, !llvm.loop !1087

73:                                               ; preds = %51
  store i32 0, i32* %9, align 4, !dbg !1089
  store i32 0, i32* %8, align 4, !dbg !1091
  br label %74, !dbg !1092

74:                                               ; preds = %116, %73
  %75 = load i32, i32* %8, align 4, !dbg !1093
  %76 = icmp slt i32 %75, 256, !dbg !1095
  br i1 %76, label %77, label %119, !dbg !1096

77:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1097, metadata !DIExpression()), !dbg !1099
  %78 = load i32, i32* %9, align 4, !dbg !1100
  %79 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1101
  %80 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %79, i32 0, i32 0, !dbg !1102
  %81 = load i32, i32* %8, align 4, !dbg !1103
  %82 = sext i32 %81 to i64, !dbg !1101
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %80, i64 0, i64 %82, !dbg !1101
  %84 = load i32, i32* %83, align 4, !dbg !1101
  %85 = add i32 %78, %84, !dbg !1104
  %86 = load i32, i32* %8, align 4, !dbg !1105
  %87 = sext i32 %86 to i64, !dbg !1106
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %87, !dbg !1106
  %89 = load i8, i8* %88, align 1, !dbg !1106
  %90 = zext i8 %89 to i32, !dbg !1106
  %91 = add i32 %85, %90, !dbg !1107
  %92 = and i32 %91, 255, !dbg !1108
  store i32 %92, i32* %9, align 4, !dbg !1109
  %93 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1110
  %94 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %93, i32 0, i32 0, !dbg !1111
  %95 = load i32, i32* %8, align 4, !dbg !1112
  %96 = sext i32 %95 to i64, !dbg !1110
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %94, i64 0, i64 %96, !dbg !1110
  %98 = load i32, i32* %97, align 4, !dbg !1110
  store i32 %98, i32* %12, align 4, !dbg !1113
  %99 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1114
  %100 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %99, i32 0, i32 0, !dbg !1115
  %101 = load i32, i32* %9, align 4, !dbg !1116
  %102 = sext i32 %101 to i64, !dbg !1114
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %100, i64 0, i64 %102, !dbg !1114
  %104 = load i32, i32* %103, align 4, !dbg !1114
  %105 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1117
  %106 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %105, i32 0, i32 0, !dbg !1118
  %107 = load i32, i32* %8, align 4, !dbg !1119
  %108 = sext i32 %107 to i64, !dbg !1117
  %109 = getelementptr inbounds [256 x i32], [256 x i32]* %106, i64 0, i64 %108, !dbg !1117
  store i32 %104, i32* %109, align 4, !dbg !1120
  %110 = load i32, i32* %12, align 4, !dbg !1121
  %111 = load %struct.ARCFOUR_context*, %struct.ARCFOUR_context** %11, align 8, !dbg !1122
  %112 = getelementptr inbounds %struct.ARCFOUR_context, %struct.ARCFOUR_context* %111, i32 0, i32 0, !dbg !1123
  %113 = load i32, i32* %9, align 4, !dbg !1124
  %114 = sext i32 %113 to i64, !dbg !1122
  %115 = getelementptr inbounds [256 x i32], [256 x i32]* %112, i64 0, i64 %114, !dbg !1122
  store i32 %110, i32* %115, align 4, !dbg !1125
  br label %116, !dbg !1126

116:                                              ; preds = %77
  %117 = load i32, i32* %8, align 4, !dbg !1127
  %118 = add nsw i32 %117, 1, !dbg !1127
  store i32 %118, i32* %8, align 4, !dbg !1127
  br label %74, !dbg !1128, !llvm.loop !1129

119:                                              ; preds = %74
  br label %120, !dbg !1131

120:                                              ; preds = %119
  br label %121, !dbg !1132

121:                                              ; preds = %120
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0, !dbg !1136
  call void @llvm.memset.p0i8.i64(i8* align 16 %122, i8 0, i64 256, i1 false), !dbg !1136
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0, !dbg !1136
  call void asm sideeffect "\0A", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %123) #5, !dbg !1136, !srcloc !1138
  br label %124, !dbg !1136

124:                                              ; preds = %121
  br label %125, !dbg !1139

125:                                              ; preds = %124
  store i32 0, i32* %4, align 4, !dbg !1140
  br label %126, !dbg !1140

126:                                              ; preds = %125, %31, %27
  %127 = load i32, i32* %4, align 4, !dbg !1141
  ret i32 %127, !dbg !1141
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @selftest() #0 !dbg !625 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.ARCFOUR_context, align 4
  %3 = alloca [16 x i8], align 16
  call void @llvm.dbg.declare(metadata %struct.ARCFOUR_context* %2, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !1144, metadata !DIExpression()), !dbg !1145
  %4 = bitcast %struct.ARCFOUR_context* %2 to i8*, !dbg !1146
  %5 = call i32 @arcfour_setkey(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @selftest.key_1, i64 0, i64 0), i32 5, %struct.cipher_bulk_ops* null), !dbg !1147
  %6 = bitcast %struct.ARCFOUR_context* %2 to i8*, !dbg !1148
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !1149
  call void @encrypt_stream(i8* %6, i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @selftest.plaintext_1, i64 0, i64 0), i64 5), !dbg !1150
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !1151
  %9 = call i32 @memcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @selftest.ciphertext_1, i64 0, i64 0), i64 5) #6, !dbg !1153
  %10 = icmp ne i32 %9, 0, !dbg !1153
  br i1 %10, label %11, label %12, !dbg !1154

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8, !dbg !1155
  br label %23, !dbg !1155

12:                                               ; preds = %0
  %13 = bitcast %struct.ARCFOUR_context* %2 to i8*, !dbg !1156
  %14 = call i32 @arcfour_setkey(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @selftest.key_1, i64 0, i64 0), i32 5, %struct.cipher_bulk_ops* null), !dbg !1157
  %15 = bitcast %struct.ARCFOUR_context* %2 to i8*, !dbg !1158
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !1159
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !1160
  call void @encrypt_stream(i8* %15, i8* %16, i8* %17, i64 5), !dbg !1161
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !1162
  %19 = call i32 @memcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @selftest.plaintext_1, i64 0, i64 0), i64 5) #6, !dbg !1164
  %20 = icmp ne i32 %19, 0, !dbg !1164
  br i1 %20, label %21, label %22, !dbg !1165

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8, !dbg !1166
  br label %23, !dbg !1166

22:                                               ; preds = %12
  store i8* null, i8** %1, align 8, !dbg !1167
  br label %23, !dbg !1167

23:                                               ; preds = %22, %21, %11
  %24 = load i8*, i8** %1, align 8, !dbg !1168
  ret i8* %24, !dbg !1168
}

declare dso_local void @_gcry_log_error(i8*, ...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

declare dso_local void @_gcry_arcfour_amd64(i8*, i64, i8*, i8*) #2

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!954, !955, !956}
!llvm.ident = !{!957}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_gcry_cipher_spec_arcfour", scope: !2, file: !3, line: 213, type: !635, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.0-3ubuntu1~20.04.5", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !589, globals: !603, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arcfour.c", directory: "/home/luwei/libgcrypt-1.10.1/cipher")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 142, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/local/include/gpg-error.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!9 = !DIEnumerator(name: "GPG_ERR_NO_ERROR", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "GPG_ERR_GENERAL", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_PACKET", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_VERSION", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "GPG_ERR_PUBKEY_ALGO", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "GPG_ERR_DIGEST_ALGO", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "GPG_ERR_BAD_PUBKEY", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "GPG_ERR_BAD_SECKEY", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "GPG_ERR_BAD_SIGNATURE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "GPG_ERR_NO_PUBKEY", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "GPG_ERR_CHECKSUM", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "GPG_ERR_BAD_PASSPHRASE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "GPG_ERR_CIPHER_ALGO", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "GPG_ERR_KEYRING_OPEN", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "GPG_ERR_INV_PACKET", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "GPG_ERR_INV_ARMOR", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "GPG_ERR_NO_USER_ID", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "GPG_ERR_NO_SECKEY", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "GPG_ERR_WRONG_SECKEY", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "GPG_ERR_BAD_KEY", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "GPG_ERR_COMPR_ALGO", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "GPG_ERR_NO_PRIME", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "GPG_ERR_NO_ENCODING_METHOD", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "GPG_ERR_NO_ENCRYPTION_SCHEME", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "GPG_ERR_NO_SIGNATURE_SCHEME", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "GPG_ERR_INV_ATTR", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "GPG_ERR_NO_VALUE", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "GPG_ERR_NOT_FOUND", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "GPG_ERR_VALUE_NOT_FOUND", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "GPG_ERR_SYNTAX", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "GPG_ERR_BAD_MPI", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "GPG_ERR_INV_PASSPHRASE", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "GPG_ERR_SIG_CLASS", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "GPG_ERR_RESOURCE_LIMIT", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "GPG_ERR_INV_KEYRING", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "GPG_ERR_TRUSTDB", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "GPG_ERR_BAD_CERT", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "GPG_ERR_INV_USER_ID", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "GPG_ERR_UNEXPECTED", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "GPG_ERR_TIME_CONFLICT", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "GPG_ERR_KEYSERVER", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "GPG_ERR_WRONG_PUBKEY_ALGO", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "GPG_ERR_TRIBUTE_TO_D_A", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "GPG_ERR_WEAK_KEY", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "GPG_ERR_INV_KEYLEN", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "GPG_ERR_INV_ARG", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "GPG_ERR_BAD_URI", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "GPG_ERR_INV_URI", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "GPG_ERR_NETWORK", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_HOST", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "GPG_ERR_SELFTEST_FAILED", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "GPG_ERR_NOT_ENCRYPTED", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "GPG_ERR_NOT_PROCESSED", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "GPG_ERR_UNUSABLE_PUBKEY", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "GPG_ERR_UNUSABLE_SECKEY", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "GPG_ERR_INV_VALUE", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "GPG_ERR_BAD_CERT_CHAIN", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "GPG_ERR_MISSING_CERT", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "GPG_ERR_NO_DATA", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "GPG_ERR_BUG", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "GPG_ERR_NOT_SUPPORTED", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "GPG_ERR_INV_OP", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "GPG_ERR_TIMEOUT", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "GPG_ERR_INTERNAL", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "GPG_ERR_EOF_GCRYPT", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "GPG_ERR_INV_OBJ", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "GPG_ERR_TOO_SHORT", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "GPG_ERR_TOO_LARGE", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "GPG_ERR_NO_OBJ", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "GPG_ERR_NOT_IMPLEMENTED", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "GPG_ERR_CONFLICT", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "GPG_ERR_INV_CIPHER_MODE", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "GPG_ERR_INV_FLAG", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "GPG_ERR_INV_HANDLE", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "GPG_ERR_TRUNCATED", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "GPG_ERR_INCOMPLETE_LINE", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "GPG_ERR_INV_RESPONSE", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "GPG_ERR_NO_AGENT", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "GPG_ERR_AGENT", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "GPG_ERR_INV_DATA", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "GPG_ERR_ASSUAN_SERVER_FAULT", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "GPG_ERR_ASSUAN", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "GPG_ERR_INV_SESSION_KEY", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "GPG_ERR_INV_SEXP", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_ALGORITHM", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "GPG_ERR_NO_PIN_ENTRY", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "GPG_ERR_PIN_ENTRY", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "GPG_ERR_BAD_PIN", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "GPG_ERR_INV_NAME", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "GPG_ERR_BAD_DATA", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "GPG_ERR_INV_PARAMETER", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "GPG_ERR_WRONG_CARD", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "GPG_ERR_NO_DIRMNGR", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "GPG_ERR_DIRMNGR", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "GPG_ERR_CERT_REVOKED", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "GPG_ERR_NO_CRL_KNOWN", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "GPG_ERR_CRL_TOO_OLD", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "GPG_ERR_LINE_TOO_LONG", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "GPG_ERR_NOT_TRUSTED", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "GPG_ERR_CANCELED", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "GPG_ERR_BAD_CA_CERT", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "GPG_ERR_CERT_EXPIRED", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "GPG_ERR_CERT_TOO_YOUNG", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_CERT", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_SEXP", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_PROTECTION", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "GPG_ERR_CORRUPTED_PROTECTION", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "GPG_ERR_AMBIGUOUS_NAME", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "GPG_ERR_CARD", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "GPG_ERR_CARD_RESET", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "GPG_ERR_CARD_REMOVED", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "GPG_ERR_INV_CARD", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "GPG_ERR_CARD_NOT_PRESENT", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "GPG_ERR_NO_PKCS15_APP", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "GPG_ERR_NOT_CONFIRMED", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "GPG_ERR_CONFIGURATION", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "GPG_ERR_NO_POLICY_MATCH", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "GPG_ERR_INV_INDEX", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "GPG_ERR_INV_ID", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "GPG_ERR_NO_SCDAEMON", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "GPG_ERR_SCDAEMON", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_PROTOCOL", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "GPG_ERR_BAD_PIN_METHOD", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "GPG_ERR_CARD_NOT_INITIALIZED", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_OPERATION", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "GPG_ERR_WRONG_KEY_USAGE", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "GPG_ERR_NOTHING_FOUND", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "GPG_ERR_WRONG_BLOB_TYPE", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "GPG_ERR_MISSING_VALUE", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "GPG_ERR_HARDWARE", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "GPG_ERR_PIN_BLOCKED", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "GPG_ERR_USE_CONDITIONS", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "GPG_ERR_PIN_NOT_SYNCED", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "GPG_ERR_INV_CRL", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "GPG_ERR_BAD_BER", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "GPG_ERR_INV_BER", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "GPG_ERR_ELEMENT_NOT_FOUND", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "GPG_ERR_IDENTIFIER_NOT_FOUND", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "GPG_ERR_INV_TAG", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "GPG_ERR_INV_LENGTH", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "GPG_ERR_INV_KEYINFO", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "GPG_ERR_UNEXPECTED_TAG", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "GPG_ERR_NOT_DER_ENCODED", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "GPG_ERR_NO_CMS_OBJ", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "GPG_ERR_INV_CMS_OBJ", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_CMS_OBJ", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_CMS_OBJ", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_ENCODING", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_CMS_VERSION", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_ALGORITHM", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "GPG_ERR_INV_ENGINE", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "GPG_ERR_PUBKEY_NOT_TRUSTED", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "GPG_ERR_DECRYPT_FAILED", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "GPG_ERR_KEY_EXPIRED", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "GPG_ERR_SIG_EXPIRED", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "GPG_ERR_ENCODING_PROBLEM", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "GPG_ERR_INV_STATE", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "GPG_ERR_DUP_VALUE", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "GPG_ERR_MISSING_ACTION", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "GPG_ERR_MODULE_NOT_FOUND", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "GPG_ERR_INV_OID_STRING", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "GPG_ERR_INV_TIME", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "GPG_ERR_INV_CRL_OBJ", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "GPG_ERR_UNSUPPORTED_CRL_VERSION", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "GPG_ERR_INV_CERT_OBJ", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_NAME", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "GPG_ERR_LOCALE_PROBLEM", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "GPG_ERR_NOT_LOCKED", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "GPG_ERR_PROTOCOL_VIOLATION", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "GPG_ERR_INV_MAC", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "GPG_ERR_INV_REQUEST", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_EXTN", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_CRIT_EXTN", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "GPG_ERR_LOCKED", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_OPTION", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_COMMAND", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "GPG_ERR_NOT_OPERATIONAL", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "GPG_ERR_NO_PASSPHRASE", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "GPG_ERR_NO_PIN", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "GPG_ERR_NOT_ENABLED", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "GPG_ERR_NO_ENGINE", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "GPG_ERR_MISSING_KEY", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "GPG_ERR_TOO_MANY", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "GPG_ERR_LIMIT_REACHED", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "GPG_ERR_NOT_INITIALIZED", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "GPG_ERR_MISSING_ISSUER_CERT", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "GPG_ERR_NO_KEYSERVER", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "GPG_ERR_INV_CURVE", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_CURVE", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "GPG_ERR_DUP_KEY", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "GPG_ERR_AMBIGUOUS", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "GPG_ERR_NO_CRYPT_CTX", value: 191, isUnsigned: true)
!201 = !DIEnumerator(name: "GPG_ERR_WRONG_CRYPT_CTX", value: 192, isUnsigned: true)
!202 = !DIEnumerator(name: "GPG_ERR_BAD_CRYPT_CTX", value: 193, isUnsigned: true)
!203 = !DIEnumerator(name: "GPG_ERR_CRYPT_CTX_CONFLICT", value: 194, isUnsigned: true)
!204 = !DIEnumerator(name: "GPG_ERR_BROKEN_PUBKEY", value: 195, isUnsigned: true)
!205 = !DIEnumerator(name: "GPG_ERR_BROKEN_SECKEY", value: 196, isUnsigned: true)
!206 = !DIEnumerator(name: "GPG_ERR_MAC_ALGO", value: 197, isUnsigned: true)
!207 = !DIEnumerator(name: "GPG_ERR_FULLY_CANCELED", value: 198, isUnsigned: true)
!208 = !DIEnumerator(name: "GPG_ERR_UNFINISHED", value: 199, isUnsigned: true)
!209 = !DIEnumerator(name: "GPG_ERR_BUFFER_TOO_SHORT", value: 200, isUnsigned: true)
!210 = !DIEnumerator(name: "GPG_ERR_SEXP_INV_LEN_SPEC", value: 201, isUnsigned: true)
!211 = !DIEnumerator(name: "GPG_ERR_SEXP_STRING_TOO_LONG", value: 202, isUnsigned: true)
!212 = !DIEnumerator(name: "GPG_ERR_SEXP_UNMATCHED_PAREN", value: 203, isUnsigned: true)
!213 = !DIEnumerator(name: "GPG_ERR_SEXP_NOT_CANONICAL", value: 204, isUnsigned: true)
!214 = !DIEnumerator(name: "GPG_ERR_SEXP_BAD_CHARACTER", value: 205, isUnsigned: true)
!215 = !DIEnumerator(name: "GPG_ERR_SEXP_BAD_QUOTATION", value: 206, isUnsigned: true)
!216 = !DIEnumerator(name: "GPG_ERR_SEXP_ZERO_PREFIX", value: 207, isUnsigned: true)
!217 = !DIEnumerator(name: "GPG_ERR_SEXP_NESTED_DH", value: 208, isUnsigned: true)
!218 = !DIEnumerator(name: "GPG_ERR_SEXP_UNMATCHED_DH", value: 209, isUnsigned: true)
!219 = !DIEnumerator(name: "GPG_ERR_SEXP_UNEXPECTED_PUNC", value: 210, isUnsigned: true)
!220 = !DIEnumerator(name: "GPG_ERR_SEXP_BAD_HEX_CHAR", value: 211, isUnsigned: true)
!221 = !DIEnumerator(name: "GPG_ERR_SEXP_ODD_HEX_NUMBERS", value: 212, isUnsigned: true)
!222 = !DIEnumerator(name: "GPG_ERR_SEXP_BAD_OCT_CHAR", value: 213, isUnsigned: true)
!223 = !DIEnumerator(name: "GPG_ERR_SUBKEYS_EXP_OR_REV", value: 217, isUnsigned: true)
!224 = !DIEnumerator(name: "GPG_ERR_DB_CORRUPTED", value: 218, isUnsigned: true)
!225 = !DIEnumerator(name: "GPG_ERR_SERVER_FAILED", value: 219, isUnsigned: true)
!226 = !DIEnumerator(name: "GPG_ERR_NO_NAME", value: 220, isUnsigned: true)
!227 = !DIEnumerator(name: "GPG_ERR_NO_KEY", value: 221, isUnsigned: true)
!228 = !DIEnumerator(name: "GPG_ERR_LEGACY_KEY", value: 222, isUnsigned: true)
!229 = !DIEnumerator(name: "GPG_ERR_REQUEST_TOO_SHORT", value: 223, isUnsigned: true)
!230 = !DIEnumerator(name: "GPG_ERR_REQUEST_TOO_LONG", value: 224, isUnsigned: true)
!231 = !DIEnumerator(name: "GPG_ERR_OBJ_TERM_STATE", value: 225, isUnsigned: true)
!232 = !DIEnumerator(name: "GPG_ERR_NO_CERT_CHAIN", value: 226, isUnsigned: true)
!233 = !DIEnumerator(name: "GPG_ERR_CERT_TOO_LARGE", value: 227, isUnsigned: true)
!234 = !DIEnumerator(name: "GPG_ERR_INV_RECORD", value: 228, isUnsigned: true)
!235 = !DIEnumerator(name: "GPG_ERR_BAD_MAC", value: 229, isUnsigned: true)
!236 = !DIEnumerator(name: "GPG_ERR_UNEXPECTED_MSG", value: 230, isUnsigned: true)
!237 = !DIEnumerator(name: "GPG_ERR_COMPR_FAILED", value: 231, isUnsigned: true)
!238 = !DIEnumerator(name: "GPG_ERR_WOULD_WRAP", value: 232, isUnsigned: true)
!239 = !DIEnumerator(name: "GPG_ERR_FATAL_ALERT", value: 233, isUnsigned: true)
!240 = !DIEnumerator(name: "GPG_ERR_NO_CIPHER", value: 234, isUnsigned: true)
!241 = !DIEnumerator(name: "GPG_ERR_MISSING_CLIENT_CERT", value: 235, isUnsigned: true)
!242 = !DIEnumerator(name: "GPG_ERR_CLOSE_NOTIFY", value: 236, isUnsigned: true)
!243 = !DIEnumerator(name: "GPG_ERR_TICKET_EXPIRED", value: 237, isUnsigned: true)
!244 = !DIEnumerator(name: "GPG_ERR_BAD_TICKET", value: 238, isUnsigned: true)
!245 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_IDENTITY", value: 239, isUnsigned: true)
!246 = !DIEnumerator(name: "GPG_ERR_BAD_HS_CERT", value: 240, isUnsigned: true)
!247 = !DIEnumerator(name: "GPG_ERR_BAD_HS_CERT_REQ", value: 241, isUnsigned: true)
!248 = !DIEnumerator(name: "GPG_ERR_BAD_HS_CERT_VER", value: 242, isUnsigned: true)
!249 = !DIEnumerator(name: "GPG_ERR_BAD_HS_CHANGE_CIPHER", value: 243, isUnsigned: true)
!250 = !DIEnumerator(name: "GPG_ERR_BAD_HS_CLIENT_HELLO", value: 244, isUnsigned: true)
!251 = !DIEnumerator(name: "GPG_ERR_BAD_HS_SERVER_HELLO", value: 245, isUnsigned: true)
!252 = !DIEnumerator(name: "GPG_ERR_BAD_HS_SERVER_HELLO_DONE", value: 246, isUnsigned: true)
!253 = !DIEnumerator(name: "GPG_ERR_BAD_HS_FINISHED", value: 247, isUnsigned: true)
!254 = !DIEnumerator(name: "GPG_ERR_BAD_HS_SERVER_KEX", value: 248, isUnsigned: true)
!255 = !DIEnumerator(name: "GPG_ERR_BAD_HS_CLIENT_KEX", value: 249, isUnsigned: true)
!256 = !DIEnumerator(name: "GPG_ERR_BOGUS_STRING", value: 250, isUnsigned: true)
!257 = !DIEnumerator(name: "GPG_ERR_FORBIDDEN", value: 251, isUnsigned: true)
!258 = !DIEnumerator(name: "GPG_ERR_KEY_DISABLED", value: 252, isUnsigned: true)
!259 = !DIEnumerator(name: "GPG_ERR_KEY_ON_CARD", value: 253, isUnsigned: true)
!260 = !DIEnumerator(name: "GPG_ERR_INV_LOCK_OBJ", value: 254, isUnsigned: true)
!261 = !DIEnumerator(name: "GPG_ERR_TRUE", value: 255, isUnsigned: true)
!262 = !DIEnumerator(name: "GPG_ERR_FALSE", value: 256, isUnsigned: true)
!263 = !DIEnumerator(name: "GPG_ERR_ASS_GENERAL", value: 257, isUnsigned: true)
!264 = !DIEnumerator(name: "GPG_ERR_ASS_ACCEPT_FAILED", value: 258, isUnsigned: true)
!265 = !DIEnumerator(name: "GPG_ERR_ASS_CONNECT_FAILED", value: 259, isUnsigned: true)
!266 = !DIEnumerator(name: "GPG_ERR_ASS_INV_RESPONSE", value: 260, isUnsigned: true)
!267 = !DIEnumerator(name: "GPG_ERR_ASS_INV_VALUE", value: 261, isUnsigned: true)
!268 = !DIEnumerator(name: "GPG_ERR_ASS_INCOMPLETE_LINE", value: 262, isUnsigned: true)
!269 = !DIEnumerator(name: "GPG_ERR_ASS_LINE_TOO_LONG", value: 263, isUnsigned: true)
!270 = !DIEnumerator(name: "GPG_ERR_ASS_NESTED_COMMANDS", value: 264, isUnsigned: true)
!271 = !DIEnumerator(name: "GPG_ERR_ASS_NO_DATA_CB", value: 265, isUnsigned: true)
!272 = !DIEnumerator(name: "GPG_ERR_ASS_NO_INQUIRE_CB", value: 266, isUnsigned: true)
!273 = !DIEnumerator(name: "GPG_ERR_ASS_NOT_A_SERVER", value: 267, isUnsigned: true)
!274 = !DIEnumerator(name: "GPG_ERR_ASS_NOT_A_CLIENT", value: 268, isUnsigned: true)
!275 = !DIEnumerator(name: "GPG_ERR_ASS_SERVER_START", value: 269, isUnsigned: true)
!276 = !DIEnumerator(name: "GPG_ERR_ASS_READ_ERROR", value: 270, isUnsigned: true)
!277 = !DIEnumerator(name: "GPG_ERR_ASS_WRITE_ERROR", value: 271, isUnsigned: true)
!278 = !DIEnumerator(name: "GPG_ERR_ASS_TOO_MUCH_DATA", value: 273, isUnsigned: true)
!279 = !DIEnumerator(name: "GPG_ERR_ASS_UNEXPECTED_CMD", value: 274, isUnsigned: true)
!280 = !DIEnumerator(name: "GPG_ERR_ASS_UNKNOWN_CMD", value: 275, isUnsigned: true)
!281 = !DIEnumerator(name: "GPG_ERR_ASS_SYNTAX", value: 276, isUnsigned: true)
!282 = !DIEnumerator(name: "GPG_ERR_ASS_CANCELED", value: 277, isUnsigned: true)
!283 = !DIEnumerator(name: "GPG_ERR_ASS_NO_INPUT", value: 278, isUnsigned: true)
!284 = !DIEnumerator(name: "GPG_ERR_ASS_NO_OUTPUT", value: 279, isUnsigned: true)
!285 = !DIEnumerator(name: "GPG_ERR_ASS_PARAMETER", value: 280, isUnsigned: true)
!286 = !DIEnumerator(name: "GPG_ERR_ASS_UNKNOWN_INQUIRE", value: 281, isUnsigned: true)
!287 = !DIEnumerator(name: "GPG_ERR_ENGINE_TOO_OLD", value: 300, isUnsigned: true)
!288 = !DIEnumerator(name: "GPG_ERR_WINDOW_TOO_SMALL", value: 301, isUnsigned: true)
!289 = !DIEnumerator(name: "GPG_ERR_WINDOW_TOO_LARGE", value: 302, isUnsigned: true)
!290 = !DIEnumerator(name: "GPG_ERR_MISSING_ENVVAR", value: 303, isUnsigned: true)
!291 = !DIEnumerator(name: "GPG_ERR_USER_ID_EXISTS", value: 304, isUnsigned: true)
!292 = !DIEnumerator(name: "GPG_ERR_NAME_EXISTS", value: 305, isUnsigned: true)
!293 = !DIEnumerator(name: "GPG_ERR_DUP_NAME", value: 306, isUnsigned: true)
!294 = !DIEnumerator(name: "GPG_ERR_TOO_YOUNG", value: 307, isUnsigned: true)
!295 = !DIEnumerator(name: "GPG_ERR_TOO_OLD", value: 308, isUnsigned: true)
!296 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_FLAG", value: 309, isUnsigned: true)
!297 = !DIEnumerator(name: "GPG_ERR_INV_ORDER", value: 310, isUnsigned: true)
!298 = !DIEnumerator(name: "GPG_ERR_ALREADY_FETCHED", value: 311, isUnsigned: true)
!299 = !DIEnumerator(name: "GPG_ERR_TRY_LATER", value: 312, isUnsigned: true)
!300 = !DIEnumerator(name: "GPG_ERR_WRONG_NAME", value: 313, isUnsigned: true)
!301 = !DIEnumerator(name: "GPG_ERR_NO_AUTH", value: 314, isUnsigned: true)
!302 = !DIEnumerator(name: "GPG_ERR_BAD_AUTH", value: 315, isUnsigned: true)
!303 = !DIEnumerator(name: "GPG_ERR_NO_KEYBOXD", value: 316, isUnsigned: true)
!304 = !DIEnumerator(name: "GPG_ERR_KEYBOXD", value: 317, isUnsigned: true)
!305 = !DIEnumerator(name: "GPG_ERR_NO_SERVICE", value: 318, isUnsigned: true)
!306 = !DIEnumerator(name: "GPG_ERR_SERVICE", value: 319, isUnsigned: true)
!307 = !DIEnumerator(name: "GPG_ERR_SYSTEM_BUG", value: 666, isUnsigned: true)
!308 = !DIEnumerator(name: "GPG_ERR_DNS_UNKNOWN", value: 711, isUnsigned: true)
!309 = !DIEnumerator(name: "GPG_ERR_DNS_SECTION", value: 712, isUnsigned: true)
!310 = !DIEnumerator(name: "GPG_ERR_DNS_ADDRESS", value: 713, isUnsigned: true)
!311 = !DIEnumerator(name: "GPG_ERR_DNS_NO_QUERY", value: 714, isUnsigned: true)
!312 = !DIEnumerator(name: "GPG_ERR_DNS_NO_ANSWER", value: 715, isUnsigned: true)
!313 = !DIEnumerator(name: "GPG_ERR_DNS_CLOSED", value: 716, isUnsigned: true)
!314 = !DIEnumerator(name: "GPG_ERR_DNS_VERIFY", value: 717, isUnsigned: true)
!315 = !DIEnumerator(name: "GPG_ERR_DNS_TIMEOUT", value: 718, isUnsigned: true)
!316 = !DIEnumerator(name: "GPG_ERR_LDAP_GENERAL", value: 721, isUnsigned: true)
!317 = !DIEnumerator(name: "GPG_ERR_LDAP_ATTR_GENERAL", value: 722, isUnsigned: true)
!318 = !DIEnumerator(name: "GPG_ERR_LDAP_NAME_GENERAL", value: 723, isUnsigned: true)
!319 = !DIEnumerator(name: "GPG_ERR_LDAP_SECURITY_GENERAL", value: 724, isUnsigned: true)
!320 = !DIEnumerator(name: "GPG_ERR_LDAP_SERVICE_GENERAL", value: 725, isUnsigned: true)
!321 = !DIEnumerator(name: "GPG_ERR_LDAP_UPDATE_GENERAL", value: 726, isUnsigned: true)
!322 = !DIEnumerator(name: "GPG_ERR_LDAP_E_GENERAL", value: 727, isUnsigned: true)
!323 = !DIEnumerator(name: "GPG_ERR_LDAP_X_GENERAL", value: 728, isUnsigned: true)
!324 = !DIEnumerator(name: "GPG_ERR_LDAP_OTHER_GENERAL", value: 729, isUnsigned: true)
!325 = !DIEnumerator(name: "GPG_ERR_LDAP_X_CONNECTING", value: 750, isUnsigned: true)
!326 = !DIEnumerator(name: "GPG_ERR_LDAP_REFERRAL_LIMIT", value: 751, isUnsigned: true)
!327 = !DIEnumerator(name: "GPG_ERR_LDAP_CLIENT_LOOP", value: 752, isUnsigned: true)
!328 = !DIEnumerator(name: "GPG_ERR_LDAP_NO_RESULTS", value: 754, isUnsigned: true)
!329 = !DIEnumerator(name: "GPG_ERR_LDAP_CONTROL_NOT_FOUND", value: 755, isUnsigned: true)
!330 = !DIEnumerator(name: "GPG_ERR_LDAP_NOT_SUPPORTED", value: 756, isUnsigned: true)
!331 = !DIEnumerator(name: "GPG_ERR_LDAP_CONNECT", value: 757, isUnsigned: true)
!332 = !DIEnumerator(name: "GPG_ERR_LDAP_NO_MEMORY", value: 758, isUnsigned: true)
!333 = !DIEnumerator(name: "GPG_ERR_LDAP_PARAM", value: 759, isUnsigned: true)
!334 = !DIEnumerator(name: "GPG_ERR_LDAP_USER_CANCELLED", value: 760, isUnsigned: true)
!335 = !DIEnumerator(name: "GPG_ERR_LDAP_FILTER", value: 761, isUnsigned: true)
!336 = !DIEnumerator(name: "GPG_ERR_LDAP_AUTH_UNKNOWN", value: 762, isUnsigned: true)
!337 = !DIEnumerator(name: "GPG_ERR_LDAP_TIMEOUT", value: 763, isUnsigned: true)
!338 = !DIEnumerator(name: "GPG_ERR_LDAP_DECODING", value: 764, isUnsigned: true)
!339 = !DIEnumerator(name: "GPG_ERR_LDAP_ENCODING", value: 765, isUnsigned: true)
!340 = !DIEnumerator(name: "GPG_ERR_LDAP_LOCAL", value: 766, isUnsigned: true)
!341 = !DIEnumerator(name: "GPG_ERR_LDAP_SERVER_DOWN", value: 767, isUnsigned: true)
!342 = !DIEnumerator(name: "GPG_ERR_LDAP_SUCCESS", value: 768, isUnsigned: true)
!343 = !DIEnumerator(name: "GPG_ERR_LDAP_OPERATIONS", value: 769, isUnsigned: true)
!344 = !DIEnumerator(name: "GPG_ERR_LDAP_PROTOCOL", value: 770, isUnsigned: true)
!345 = !DIEnumerator(name: "GPG_ERR_LDAP_TIMELIMIT", value: 771, isUnsigned: true)
!346 = !DIEnumerator(name: "GPG_ERR_LDAP_SIZELIMIT", value: 772, isUnsigned: true)
!347 = !DIEnumerator(name: "GPG_ERR_LDAP_COMPARE_FALSE", value: 773, isUnsigned: true)
!348 = !DIEnumerator(name: "GPG_ERR_LDAP_COMPARE_TRUE", value: 774, isUnsigned: true)
!349 = !DIEnumerator(name: "GPG_ERR_LDAP_UNSUPPORTED_AUTH", value: 775, isUnsigned: true)
!350 = !DIEnumerator(name: "GPG_ERR_LDAP_STRONG_AUTH_RQRD", value: 776, isUnsigned: true)
!351 = !DIEnumerator(name: "GPG_ERR_LDAP_PARTIAL_RESULTS", value: 777, isUnsigned: true)
!352 = !DIEnumerator(name: "GPG_ERR_LDAP_REFERRAL", value: 778, isUnsigned: true)
!353 = !DIEnumerator(name: "GPG_ERR_LDAP_ADMINLIMIT", value: 779, isUnsigned: true)
!354 = !DIEnumerator(name: "GPG_ERR_LDAP_UNAVAIL_CRIT_EXTN", value: 780, isUnsigned: true)
!355 = !DIEnumerator(name: "GPG_ERR_LDAP_CONFIDENT_RQRD", value: 781, isUnsigned: true)
!356 = !DIEnumerator(name: "GPG_ERR_LDAP_SASL_BIND_INPROG", value: 782, isUnsigned: true)
!357 = !DIEnumerator(name: "GPG_ERR_LDAP_NO_SUCH_ATTRIBUTE", value: 784, isUnsigned: true)
!358 = !DIEnumerator(name: "GPG_ERR_LDAP_UNDEFINED_TYPE", value: 785, isUnsigned: true)
!359 = !DIEnumerator(name: "GPG_ERR_LDAP_BAD_MATCHING", value: 786, isUnsigned: true)
!360 = !DIEnumerator(name: "GPG_ERR_LDAP_CONST_VIOLATION", value: 787, isUnsigned: true)
!361 = !DIEnumerator(name: "GPG_ERR_LDAP_TYPE_VALUE_EXISTS", value: 788, isUnsigned: true)
!362 = !DIEnumerator(name: "GPG_ERR_LDAP_INV_SYNTAX", value: 789, isUnsigned: true)
!363 = !DIEnumerator(name: "GPG_ERR_LDAP_NO_SUCH_OBJ", value: 800, isUnsigned: true)
!364 = !DIEnumerator(name: "GPG_ERR_LDAP_ALIAS_PROBLEM", value: 801, isUnsigned: true)
!365 = !DIEnumerator(name: "GPG_ERR_LDAP_INV_DN_SYNTAX", value: 802, isUnsigned: true)
!366 = !DIEnumerator(name: "GPG_ERR_LDAP_IS_LEAF", value: 803, isUnsigned: true)
!367 = !DIEnumerator(name: "GPG_ERR_LDAP_ALIAS_DEREF", value: 804, isUnsigned: true)
!368 = !DIEnumerator(name: "GPG_ERR_LDAP_X_PROXY_AUTH_FAIL", value: 815, isUnsigned: true)
!369 = !DIEnumerator(name: "GPG_ERR_LDAP_BAD_AUTH", value: 816, isUnsigned: true)
!370 = !DIEnumerator(name: "GPG_ERR_LDAP_INV_CREDENTIALS", value: 817, isUnsigned: true)
!371 = !DIEnumerator(name: "GPG_ERR_LDAP_INSUFFICIENT_ACC", value: 818, isUnsigned: true)
!372 = !DIEnumerator(name: "GPG_ERR_LDAP_BUSY", value: 819, isUnsigned: true)
!373 = !DIEnumerator(name: "GPG_ERR_LDAP_UNAVAILABLE", value: 820, isUnsigned: true)
!374 = !DIEnumerator(name: "GPG_ERR_LDAP_UNWILL_TO_PERFORM", value: 821, isUnsigned: true)
!375 = !DIEnumerator(name: "GPG_ERR_LDAP_LOOP_DETECT", value: 822, isUnsigned: true)
!376 = !DIEnumerator(name: "GPG_ERR_LDAP_NAMING_VIOLATION", value: 832, isUnsigned: true)
!377 = !DIEnumerator(name: "GPG_ERR_LDAP_OBJ_CLS_VIOLATION", value: 833, isUnsigned: true)
!378 = !DIEnumerator(name: "GPG_ERR_LDAP_NOT_ALLOW_NONLEAF", value: 834, isUnsigned: true)
!379 = !DIEnumerator(name: "GPG_ERR_LDAP_NOT_ALLOW_ON_RDN", value: 835, isUnsigned: true)
!380 = !DIEnumerator(name: "GPG_ERR_LDAP_ALREADY_EXISTS", value: 836, isUnsigned: true)
!381 = !DIEnumerator(name: "GPG_ERR_LDAP_NO_OBJ_CLASS_MODS", value: 837, isUnsigned: true)
!382 = !DIEnumerator(name: "GPG_ERR_LDAP_RESULTS_TOO_LARGE", value: 838, isUnsigned: true)
!383 = !DIEnumerator(name: "GPG_ERR_LDAP_AFFECTS_MULT_DSAS", value: 839, isUnsigned: true)
!384 = !DIEnumerator(name: "GPG_ERR_LDAP_VLV", value: 844, isUnsigned: true)
!385 = !DIEnumerator(name: "GPG_ERR_LDAP_OTHER", value: 848, isUnsigned: true)
!386 = !DIEnumerator(name: "GPG_ERR_LDAP_CUP_RESOURCE_LIMIT", value: 881, isUnsigned: true)
!387 = !DIEnumerator(name: "GPG_ERR_LDAP_CUP_SEC_VIOLATION", value: 882, isUnsigned: true)
!388 = !DIEnumerator(name: "GPG_ERR_LDAP_CUP_INV_DATA", value: 883, isUnsigned: true)
!389 = !DIEnumerator(name: "GPG_ERR_LDAP_CUP_UNSUP_SCHEME", value: 884, isUnsigned: true)
!390 = !DIEnumerator(name: "GPG_ERR_LDAP_CUP_RELOAD", value: 885, isUnsigned: true)
!391 = !DIEnumerator(name: "GPG_ERR_LDAP_CANCELLED", value: 886, isUnsigned: true)
!392 = !DIEnumerator(name: "GPG_ERR_LDAP_NO_SUCH_OPERATION", value: 887, isUnsigned: true)
!393 = !DIEnumerator(name: "GPG_ERR_LDAP_TOO_LATE", value: 888, isUnsigned: true)
!394 = !DIEnumerator(name: "GPG_ERR_LDAP_CANNOT_CANCEL", value: 889, isUnsigned: true)
!395 = !DIEnumerator(name: "GPG_ERR_LDAP_ASSERTION_FAILED", value: 890, isUnsigned: true)
!396 = !DIEnumerator(name: "GPG_ERR_LDAP_PROX_AUTH_DENIED", value: 891, isUnsigned: true)
!397 = !DIEnumerator(name: "GPG_ERR_USER_1", value: 1024, isUnsigned: true)
!398 = !DIEnumerator(name: "GPG_ERR_USER_2", value: 1025, isUnsigned: true)
!399 = !DIEnumerator(name: "GPG_ERR_USER_3", value: 1026, isUnsigned: true)
!400 = !DIEnumerator(name: "GPG_ERR_USER_4", value: 1027, isUnsigned: true)
!401 = !DIEnumerator(name: "GPG_ERR_USER_5", value: 1028, isUnsigned: true)
!402 = !DIEnumerator(name: "GPG_ERR_USER_6", value: 1029, isUnsigned: true)
!403 = !DIEnumerator(name: "GPG_ERR_USER_7", value: 1030, isUnsigned: true)
!404 = !DIEnumerator(name: "GPG_ERR_USER_8", value: 1031, isUnsigned: true)
!405 = !DIEnumerator(name: "GPG_ERR_USER_9", value: 1032, isUnsigned: true)
!406 = !DIEnumerator(name: "GPG_ERR_USER_10", value: 1033, isUnsigned: true)
!407 = !DIEnumerator(name: "GPG_ERR_USER_11", value: 1034, isUnsigned: true)
!408 = !DIEnumerator(name: "GPG_ERR_USER_12", value: 1035, isUnsigned: true)
!409 = !DIEnumerator(name: "GPG_ERR_USER_13", value: 1036, isUnsigned: true)
!410 = !DIEnumerator(name: "GPG_ERR_USER_14", value: 1037, isUnsigned: true)
!411 = !DIEnumerator(name: "GPG_ERR_USER_15", value: 1038, isUnsigned: true)
!412 = !DIEnumerator(name: "GPG_ERR_USER_16", value: 1039, isUnsigned: true)
!413 = !DIEnumerator(name: "GPG_ERR_SQL_OK", value: 1500, isUnsigned: true)
!414 = !DIEnumerator(name: "GPG_ERR_SQL_ERROR", value: 1501, isUnsigned: true)
!415 = !DIEnumerator(name: "GPG_ERR_SQL_INTERNAL", value: 1502, isUnsigned: true)
!416 = !DIEnumerator(name: "GPG_ERR_SQL_PERM", value: 1503, isUnsigned: true)
!417 = !DIEnumerator(name: "GPG_ERR_SQL_ABORT", value: 1504, isUnsigned: true)
!418 = !DIEnumerator(name: "GPG_ERR_SQL_BUSY", value: 1505, isUnsigned: true)
!419 = !DIEnumerator(name: "GPG_ERR_SQL_LOCKED", value: 1506, isUnsigned: true)
!420 = !DIEnumerator(name: "GPG_ERR_SQL_NOMEM", value: 1507, isUnsigned: true)
!421 = !DIEnumerator(name: "GPG_ERR_SQL_READONLY", value: 1508, isUnsigned: true)
!422 = !DIEnumerator(name: "GPG_ERR_SQL_INTERRUPT", value: 1509, isUnsigned: true)
!423 = !DIEnumerator(name: "GPG_ERR_SQL_IOERR", value: 1510, isUnsigned: true)
!424 = !DIEnumerator(name: "GPG_ERR_SQL_CORRUPT", value: 1511, isUnsigned: true)
!425 = !DIEnumerator(name: "GPG_ERR_SQL_NOTFOUND", value: 1512, isUnsigned: true)
!426 = !DIEnumerator(name: "GPG_ERR_SQL_FULL", value: 1513, isUnsigned: true)
!427 = !DIEnumerator(name: "GPG_ERR_SQL_CANTOPEN", value: 1514, isUnsigned: true)
!428 = !DIEnumerator(name: "GPG_ERR_SQL_PROTOCOL", value: 1515, isUnsigned: true)
!429 = !DIEnumerator(name: "GPG_ERR_SQL_EMPTY", value: 1516, isUnsigned: true)
!430 = !DIEnumerator(name: "GPG_ERR_SQL_SCHEMA", value: 1517, isUnsigned: true)
!431 = !DIEnumerator(name: "GPG_ERR_SQL_TOOBIG", value: 1518, isUnsigned: true)
!432 = !DIEnumerator(name: "GPG_ERR_SQL_CONSTRAINT", value: 1519, isUnsigned: true)
!433 = !DIEnumerator(name: "GPG_ERR_SQL_MISMATCH", value: 1520, isUnsigned: true)
!434 = !DIEnumerator(name: "GPG_ERR_SQL_MISUSE", value: 1521, isUnsigned: true)
!435 = !DIEnumerator(name: "GPG_ERR_SQL_NOLFS", value: 1522, isUnsigned: true)
!436 = !DIEnumerator(name: "GPG_ERR_SQL_AUTH", value: 1523, isUnsigned: true)
!437 = !DIEnumerator(name: "GPG_ERR_SQL_FORMAT", value: 1524, isUnsigned: true)
!438 = !DIEnumerator(name: "GPG_ERR_SQL_RANGE", value: 1525, isUnsigned: true)
!439 = !DIEnumerator(name: "GPG_ERR_SQL_NOTADB", value: 1526, isUnsigned: true)
!440 = !DIEnumerator(name: "GPG_ERR_SQL_NOTICE", value: 1527, isUnsigned: true)
!441 = !DIEnumerator(name: "GPG_ERR_SQL_WARNING", value: 1528, isUnsigned: true)
!442 = !DIEnumerator(name: "GPG_ERR_SQL_ROW", value: 1600, isUnsigned: true)
!443 = !DIEnumerator(name: "GPG_ERR_SQL_DONE", value: 1601, isUnsigned: true)
!444 = !DIEnumerator(name: "GPG_ERR_MISSING_ERRNO", value: 16381, isUnsigned: true)
!445 = !DIEnumerator(name: "GPG_ERR_UNKNOWN_ERRNO", value: 16382, isUnsigned: true)
!446 = !DIEnumerator(name: "GPG_ERR_EOF", value: 16383, isUnsigned: true)
!447 = !DIEnumerator(name: "GPG_ERR_E2BIG", value: 32768, isUnsigned: true)
!448 = !DIEnumerator(name: "GPG_ERR_EACCES", value: 32769, isUnsigned: true)
!449 = !DIEnumerator(name: "GPG_ERR_EADDRINUSE", value: 32770, isUnsigned: true)
!450 = !DIEnumerator(name: "GPG_ERR_EADDRNOTAVAIL", value: 32771, isUnsigned: true)
!451 = !DIEnumerator(name: "GPG_ERR_EADV", value: 32772, isUnsigned: true)
!452 = !DIEnumerator(name: "GPG_ERR_EAFNOSUPPORT", value: 32773, isUnsigned: true)
!453 = !DIEnumerator(name: "GPG_ERR_EAGAIN", value: 32774, isUnsigned: true)
!454 = !DIEnumerator(name: "GPG_ERR_EALREADY", value: 32775, isUnsigned: true)
!455 = !DIEnumerator(name: "GPG_ERR_EAUTH", value: 32776, isUnsigned: true)
!456 = !DIEnumerator(name: "GPG_ERR_EBACKGROUND", value: 32777, isUnsigned: true)
!457 = !DIEnumerator(name: "GPG_ERR_EBADE", value: 32778, isUnsigned: true)
!458 = !DIEnumerator(name: "GPG_ERR_EBADF", value: 32779, isUnsigned: true)
!459 = !DIEnumerator(name: "GPG_ERR_EBADFD", value: 32780, isUnsigned: true)
!460 = !DIEnumerator(name: "GPG_ERR_EBADMSG", value: 32781, isUnsigned: true)
!461 = !DIEnumerator(name: "GPG_ERR_EBADR", value: 32782, isUnsigned: true)
!462 = !DIEnumerator(name: "GPG_ERR_EBADRPC", value: 32783, isUnsigned: true)
!463 = !DIEnumerator(name: "GPG_ERR_EBADRQC", value: 32784, isUnsigned: true)
!464 = !DIEnumerator(name: "GPG_ERR_EBADSLT", value: 32785, isUnsigned: true)
!465 = !DIEnumerator(name: "GPG_ERR_EBFONT", value: 32786, isUnsigned: true)
!466 = !DIEnumerator(name: "GPG_ERR_EBUSY", value: 32787, isUnsigned: true)
!467 = !DIEnumerator(name: "GPG_ERR_ECANCELED", value: 32788, isUnsigned: true)
!468 = !DIEnumerator(name: "GPG_ERR_ECHILD", value: 32789, isUnsigned: true)
!469 = !DIEnumerator(name: "GPG_ERR_ECHRNG", value: 32790, isUnsigned: true)
!470 = !DIEnumerator(name: "GPG_ERR_ECOMM", value: 32791, isUnsigned: true)
!471 = !DIEnumerator(name: "GPG_ERR_ECONNABORTED", value: 32792, isUnsigned: true)
!472 = !DIEnumerator(name: "GPG_ERR_ECONNREFUSED", value: 32793, isUnsigned: true)
!473 = !DIEnumerator(name: "GPG_ERR_ECONNRESET", value: 32794, isUnsigned: true)
!474 = !DIEnumerator(name: "GPG_ERR_ED", value: 32795, isUnsigned: true)
!475 = !DIEnumerator(name: "GPG_ERR_EDEADLK", value: 32796, isUnsigned: true)
!476 = !DIEnumerator(name: "GPG_ERR_EDEADLOCK", value: 32797, isUnsigned: true)
!477 = !DIEnumerator(name: "GPG_ERR_EDESTADDRREQ", value: 32798, isUnsigned: true)
!478 = !DIEnumerator(name: "GPG_ERR_EDIED", value: 32799, isUnsigned: true)
!479 = !DIEnumerator(name: "GPG_ERR_EDOM", value: 32800, isUnsigned: true)
!480 = !DIEnumerator(name: "GPG_ERR_EDOTDOT", value: 32801, isUnsigned: true)
!481 = !DIEnumerator(name: "GPG_ERR_EDQUOT", value: 32802, isUnsigned: true)
!482 = !DIEnumerator(name: "GPG_ERR_EEXIST", value: 32803, isUnsigned: true)
!483 = !DIEnumerator(name: "GPG_ERR_EFAULT", value: 32804, isUnsigned: true)
!484 = !DIEnumerator(name: "GPG_ERR_EFBIG", value: 32805, isUnsigned: true)
!485 = !DIEnumerator(name: "GPG_ERR_EFTYPE", value: 32806, isUnsigned: true)
!486 = !DIEnumerator(name: "GPG_ERR_EGRATUITOUS", value: 32807, isUnsigned: true)
!487 = !DIEnumerator(name: "GPG_ERR_EGREGIOUS", value: 32808, isUnsigned: true)
!488 = !DIEnumerator(name: "GPG_ERR_EHOSTDOWN", value: 32809, isUnsigned: true)
!489 = !DIEnumerator(name: "GPG_ERR_EHOSTUNREACH", value: 32810, isUnsigned: true)
!490 = !DIEnumerator(name: "GPG_ERR_EIDRM", value: 32811, isUnsigned: true)
!491 = !DIEnumerator(name: "GPG_ERR_EIEIO", value: 32812, isUnsigned: true)
!492 = !DIEnumerator(name: "GPG_ERR_EILSEQ", value: 32813, isUnsigned: true)
!493 = !DIEnumerator(name: "GPG_ERR_EINPROGRESS", value: 32814, isUnsigned: true)
!494 = !DIEnumerator(name: "GPG_ERR_EINTR", value: 32815, isUnsigned: true)
!495 = !DIEnumerator(name: "GPG_ERR_EINVAL", value: 32816, isUnsigned: true)
!496 = !DIEnumerator(name: "GPG_ERR_EIO", value: 32817, isUnsigned: true)
!497 = !DIEnumerator(name: "GPG_ERR_EISCONN", value: 32818, isUnsigned: true)
!498 = !DIEnumerator(name: "GPG_ERR_EISDIR", value: 32819, isUnsigned: true)
!499 = !DIEnumerator(name: "GPG_ERR_EISNAM", value: 32820, isUnsigned: true)
!500 = !DIEnumerator(name: "GPG_ERR_EL2HLT", value: 32821, isUnsigned: true)
!501 = !DIEnumerator(name: "GPG_ERR_EL2NSYNC", value: 32822, isUnsigned: true)
!502 = !DIEnumerator(name: "GPG_ERR_EL3HLT", value: 32823, isUnsigned: true)
!503 = !DIEnumerator(name: "GPG_ERR_EL3RST", value: 32824, isUnsigned: true)
!504 = !DIEnumerator(name: "GPG_ERR_ELIBACC", value: 32825, isUnsigned: true)
!505 = !DIEnumerator(name: "GPG_ERR_ELIBBAD", value: 32826, isUnsigned: true)
!506 = !DIEnumerator(name: "GPG_ERR_ELIBEXEC", value: 32827, isUnsigned: true)
!507 = !DIEnumerator(name: "GPG_ERR_ELIBMAX", value: 32828, isUnsigned: true)
!508 = !DIEnumerator(name: "GPG_ERR_ELIBSCN", value: 32829, isUnsigned: true)
!509 = !DIEnumerator(name: "GPG_ERR_ELNRNG", value: 32830, isUnsigned: true)
!510 = !DIEnumerator(name: "GPG_ERR_ELOOP", value: 32831, isUnsigned: true)
!511 = !DIEnumerator(name: "GPG_ERR_EMEDIUMTYPE", value: 32832, isUnsigned: true)
!512 = !DIEnumerator(name: "GPG_ERR_EMFILE", value: 32833, isUnsigned: true)
!513 = !DIEnumerator(name: "GPG_ERR_EMLINK", value: 32834, isUnsigned: true)
!514 = !DIEnumerator(name: "GPG_ERR_EMSGSIZE", value: 32835, isUnsigned: true)
!515 = !DIEnumerator(name: "GPG_ERR_EMULTIHOP", value: 32836, isUnsigned: true)
!516 = !DIEnumerator(name: "GPG_ERR_ENAMETOOLONG", value: 32837, isUnsigned: true)
!517 = !DIEnumerator(name: "GPG_ERR_ENAVAIL", value: 32838, isUnsigned: true)
!518 = !DIEnumerator(name: "GPG_ERR_ENEEDAUTH", value: 32839, isUnsigned: true)
!519 = !DIEnumerator(name: "GPG_ERR_ENETDOWN", value: 32840, isUnsigned: true)
!520 = !DIEnumerator(name: "GPG_ERR_ENETRESET", value: 32841, isUnsigned: true)
!521 = !DIEnumerator(name: "GPG_ERR_ENETUNREACH", value: 32842, isUnsigned: true)
!522 = !DIEnumerator(name: "GPG_ERR_ENFILE", value: 32843, isUnsigned: true)
!523 = !DIEnumerator(name: "GPG_ERR_ENOANO", value: 32844, isUnsigned: true)
!524 = !DIEnumerator(name: "GPG_ERR_ENOBUFS", value: 32845, isUnsigned: true)
!525 = !DIEnumerator(name: "GPG_ERR_ENOCSI", value: 32846, isUnsigned: true)
!526 = !DIEnumerator(name: "GPG_ERR_ENODATA", value: 32847, isUnsigned: true)
!527 = !DIEnumerator(name: "GPG_ERR_ENODEV", value: 32848, isUnsigned: true)
!528 = !DIEnumerator(name: "GPG_ERR_ENOENT", value: 32849, isUnsigned: true)
!529 = !DIEnumerator(name: "GPG_ERR_ENOEXEC", value: 32850, isUnsigned: true)
!530 = !DIEnumerator(name: "GPG_ERR_ENOLCK", value: 32851, isUnsigned: true)
!531 = !DIEnumerator(name: "GPG_ERR_ENOLINK", value: 32852, isUnsigned: true)
!532 = !DIEnumerator(name: "GPG_ERR_ENOMEDIUM", value: 32853, isUnsigned: true)
!533 = !DIEnumerator(name: "GPG_ERR_ENOMEM", value: 32854, isUnsigned: true)
!534 = !DIEnumerator(name: "GPG_ERR_ENOMSG", value: 32855, isUnsigned: true)
!535 = !DIEnumerator(name: "GPG_ERR_ENONET", value: 32856, isUnsigned: true)
!536 = !DIEnumerator(name: "GPG_ERR_ENOPKG", value: 32857, isUnsigned: true)
!537 = !DIEnumerator(name: "GPG_ERR_ENOPROTOOPT", value: 32858, isUnsigned: true)
!538 = !DIEnumerator(name: "GPG_ERR_ENOSPC", value: 32859, isUnsigned: true)
!539 = !DIEnumerator(name: "GPG_ERR_ENOSR", value: 32860, isUnsigned: true)
!540 = !DIEnumerator(name: "GPG_ERR_ENOSTR", value: 32861, isUnsigned: true)
!541 = !DIEnumerator(name: "GPG_ERR_ENOSYS", value: 32862, isUnsigned: true)
!542 = !DIEnumerator(name: "GPG_ERR_ENOTBLK", value: 32863, isUnsigned: true)
!543 = !DIEnumerator(name: "GPG_ERR_ENOTCONN", value: 32864, isUnsigned: true)
!544 = !DIEnumerator(name: "GPG_ERR_ENOTDIR", value: 32865, isUnsigned: true)
!545 = !DIEnumerator(name: "GPG_ERR_ENOTEMPTY", value: 32866, isUnsigned: true)
!546 = !DIEnumerator(name: "GPG_ERR_ENOTNAM", value: 32867, isUnsigned: true)
!547 = !DIEnumerator(name: "GPG_ERR_ENOTSOCK", value: 32868, isUnsigned: true)
!548 = !DIEnumerator(name: "GPG_ERR_ENOTSUP", value: 32869, isUnsigned: true)
!549 = !DIEnumerator(name: "GPG_ERR_ENOTTY", value: 32870, isUnsigned: true)
!550 = !DIEnumerator(name: "GPG_ERR_ENOTUNIQ", value: 32871, isUnsigned: true)
!551 = !DIEnumerator(name: "GPG_ERR_ENXIO", value: 32872, isUnsigned: true)
!552 = !DIEnumerator(name: "GPG_ERR_EOPNOTSUPP", value: 32873, isUnsigned: true)
!553 = !DIEnumerator(name: "GPG_ERR_EOVERFLOW", value: 32874, isUnsigned: true)
!554 = !DIEnumerator(name: "GPG_ERR_EPERM", value: 32875, isUnsigned: true)
!555 = !DIEnumerator(name: "GPG_ERR_EPFNOSUPPORT", value: 32876, isUnsigned: true)
!556 = !DIEnumerator(name: "GPG_ERR_EPIPE", value: 32877, isUnsigned: true)
!557 = !DIEnumerator(name: "GPG_ERR_EPROCLIM", value: 32878, isUnsigned: true)
!558 = !DIEnumerator(name: "GPG_ERR_EPROCUNAVAIL", value: 32879, isUnsigned: true)
!559 = !DIEnumerator(name: "GPG_ERR_EPROGMISMATCH", value: 32880, isUnsigned: true)
!560 = !DIEnumerator(name: "GPG_ERR_EPROGUNAVAIL", value: 32881, isUnsigned: true)
!561 = !DIEnumerator(name: "GPG_ERR_EPROTO", value: 32882, isUnsigned: true)
!562 = !DIEnumerator(name: "GPG_ERR_EPROTONOSUPPORT", value: 32883, isUnsigned: true)
!563 = !DIEnumerator(name: "GPG_ERR_EPROTOTYPE", value: 32884, isUnsigned: true)
!564 = !DIEnumerator(name: "GPG_ERR_ERANGE", value: 32885, isUnsigned: true)
!565 = !DIEnumerator(name: "GPG_ERR_EREMCHG", value: 32886, isUnsigned: true)
!566 = !DIEnumerator(name: "GPG_ERR_EREMOTE", value: 32887, isUnsigned: true)
!567 = !DIEnumerator(name: "GPG_ERR_EREMOTEIO", value: 32888, isUnsigned: true)
!568 = !DIEnumerator(name: "GPG_ERR_ERESTART", value: 32889, isUnsigned: true)
!569 = !DIEnumerator(name: "GPG_ERR_EROFS", value: 32890, isUnsigned: true)
!570 = !DIEnumerator(name: "GPG_ERR_ERPCMISMATCH", value: 32891, isUnsigned: true)
!571 = !DIEnumerator(name: "GPG_ERR_ESHUTDOWN", value: 32892, isUnsigned: true)
!572 = !DIEnumerator(name: "GPG_ERR_ESOCKTNOSUPPORT", value: 32893, isUnsigned: true)
!573 = !DIEnumerator(name: "GPG_ERR_ESPIPE", value: 32894, isUnsigned: true)
!574 = !DIEnumerator(name: "GPG_ERR_ESRCH", value: 32895, isUnsigned: true)
!575 = !DIEnumerator(name: "GPG_ERR_ESRMNT", value: 32896, isUnsigned: true)
!576 = !DIEnumerator(name: "GPG_ERR_ESTALE", value: 32897, isUnsigned: true)
!577 = !DIEnumerator(name: "GPG_ERR_ESTRPIPE", value: 32898, isUnsigned: true)
!578 = !DIEnumerator(name: "GPG_ERR_ETIME", value: 32899, isUnsigned: true)
!579 = !DIEnumerator(name: "GPG_ERR_ETIMEDOUT", value: 32900, isUnsigned: true)
!580 = !DIEnumerator(name: "GPG_ERR_ETOOMANYREFS", value: 32901, isUnsigned: true)
!581 = !DIEnumerator(name: "GPG_ERR_ETXTBSY", value: 32902, isUnsigned: true)
!582 = !DIEnumerator(name: "GPG_ERR_EUCLEAN", value: 32903, isUnsigned: true)
!583 = !DIEnumerator(name: "GPG_ERR_EUNATCH", value: 32904, isUnsigned: true)
!584 = !DIEnumerator(name: "GPG_ERR_EUSERS", value: 32905, isUnsigned: true)
!585 = !DIEnumerator(name: "GPG_ERR_EWOULDBLOCK", value: 32906, isUnsigned: true)
!586 = !DIEnumerator(name: "GPG_ERR_EXDEV", value: 32907, isUnsigned: true)
!587 = !DIEnumerator(name: "GPG_ERR_EXFULL", value: 32908, isUnsigned: true)
!588 = !DIEnumerator(name: "GPG_ERR_CODE_DIM", value: 65536, isUnsigned: true)
!589 = !{!590, !602}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ARCFOUR_context", file: !3, line: 51, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 48, size: 8256, elements: !593)
!593 = !{!594, !600, !601}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sbox", scope: !592, file: !3, line: 49, baseType: !595, size: 8192)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 8192, elements: !598)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !597, line: 88, baseType: !7)
!597 = !DIFile(filename: "../src/types.h", directory: "/home/luwei/libgcrypt-1.10.1/cipher")
!598 = !{!599}
!599 = !DISubrange(count: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "idx_i", scope: !592, file: !3, line: 50, baseType: !596, size: 32, offset: 8192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "idx_j", scope: !592, file: !3, line: 50, baseType: !596, size: 32, offset: 8224)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!603 = !{!0, !604, !618, !623, !631, !633}
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "initialized", scope: !606, file: !3, line: 134, type: !617, isLocal: true, isDefinition: true)
!606 = distinct !DISubprogram(name: "do_arcfour_setkey", scope: !3, file: !3, line: 132, type: !607, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !616)
!607 = !DISubroutineType(types: !608)
!608 = !{!609, !602, !612, !7}
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_err_code_t", file: !610, line: 128, baseType: !611)
!610 = !DIFile(filename: "../src/gcrypt.h", directory: "/home/luwei/libgcrypt-1.10.1/cipher")
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpg_err_code_t", file: !6, line: 729, baseType: !5)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !597, line: 62, baseType: !615)
!615 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!616 = !{}
!617 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "selftest_failed", scope: !606, file: !3, line: 135, type: !620, isLocal: true, isDefinition: true)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "key_1", scope: !625, file: !3, line: 194, type: !628, isLocal: true, isDefinition: true)
!625 = distinct !DISubprogram(name: "selftest", scope: !3, file: !3, line: 187, type: !626, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !616)
!626 = !DISubroutineType(types: !627)
!627 = !{!620}
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 40, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 5)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "plaintext_1", scope: !625, file: !3, line: 196, type: !628, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "ciphertext_1", scope: !625, file: !3, line: 198, type: !628, isLocal: true, isDefinition: true)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_spec_t", file: !636, line: 199, baseType: !637)
!636 = !DIFile(filename: "../src/cipher-proto.h", directory: "/home/luwei/libgcrypt-1.10.1/cipher")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_cipher_spec", file: !636, line: 178, size: 960, elements: !638)
!638 = !{!639, !640, !645, !646, !648, !656, !660, !661, !662, !921, !926, !928, !933, !935, !944, !949}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !637, file: !636, line: 180, baseType: !617, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !636, line: 184, baseType: !641, size: 32, offset: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !637, file: !636, line: 181, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !641, file: !636, line: 182, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fips", scope: !641, file: !636, line: 183, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !636, line: 185, baseType: !620, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !637, file: !636, line: 186, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "oids", scope: !637, file: !636, line: 187, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_oid_spec_t", file: !636, line: 174, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_cipher_oid_spec", file: !636, line: 170, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !652, file: !636, line: 172, baseType: !620, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !652, file: !636, line: 173, baseType: !617, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "blocksize", scope: !637, file: !636, line: 188, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !658, line: 46, baseType: !659)
!658 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.0/include/stddef.h", directory: "")
!659 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !637, file: !636, line: 189, baseType: !657, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "contextsize", scope: !637, file: !636, line: 190, baseType: !657, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !637, file: !636, line: 191, baseType: !663, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_setkey_t", file: !636, line: 135, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!609, !602, !667, !7, !669}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_bulk_ops", file: !671, line: 146, size: 704, elements: !672)
!671 = !DIFile(filename: "./cipher-internal.h", directory: "/home/luwei/libgcrypt-1.10.1/cipher")
!672 = !{!673, !680, !681, !685, !686, !687, !688, !689, !915, !919, !920}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cfb_enc", scope: !670, file: !671, line: 148, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !602, !677, !602, !678, !657}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cfb_dec", scope: !670, file: !671, line: 150, baseType: !674, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "cbc_enc", scope: !670, file: !671, line: 152, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !602, !677, !602, !678, !657, !617}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cbc_dec", scope: !670, file: !671, line: 154, baseType: !674, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ofb_enc", scope: !670, file: !671, line: 156, baseType: !674, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ctr_enc", scope: !670, file: !671, line: 158, baseType: !674, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ctr32le_enc", scope: !670, file: !671, line: 160, baseType: !674, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ocb_crypt", scope: !670, file: !671, line: 162, baseType: !690, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!657, !693, !602, !678, !657, !617}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_hd_t", file: !610, line: 905, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_cipher_handle", file: !671, line: 210, size: 7296, elements: !696)
!696 = !{!697, !698, !699, !700, !702, !703, !722, !724, !725, !726, !734, !771, !776, !777, !778, !914}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !695, file: !671, line: 212, baseType: !617, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "actual_handle_size", scope: !695, file: !671, line: 213, baseType: !657, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handle_offset", scope: !695, file: !671, line: 214, baseType: !657, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !695, file: !671, line: 215, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !695, file: !671, line: 219, baseType: !617, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mode_ops", scope: !695, file: !671, line: 222, baseType: !704, size: 384, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "cipher_mode_ops_t", file: !671, line: 139, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_mode_ops", file: !671, line: 122, size: 384, elements: !706)
!706 = !{!707, !711, !712, !716, !717, !721}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !705, file: !671, line: 124, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!609, !693, !677, !657, !667, !657}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "decrypt", scope: !705, file: !671, line: 127, baseType: !708, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "setiv", scope: !705, file: !671, line: 130, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!609, !693, !667, !657}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !705, file: !671, line: 133, baseType: !713, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_tag", scope: !705, file: !671, line: 135, baseType: !718, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!609, !693, !677, !657}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "check_tag", scope: !705, file: !671, line: 137, baseType: !713, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bulk", scope: !695, file: !671, line: 227, baseType: !723, size: 704, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "cipher_bulk_ops_t", file: !671, line: 169, baseType: !670)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !695, file: !671, line: 229, baseType: !617, size: 32, offset: 1408)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !671, line: 230, baseType: !7, size: 32, offset: 1440)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !695, file: !671, line: 238, baseType: !727, size: 32, offset: 1472)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !671, line: 232, size: 32, elements: !728)
!728 = !{!729, !730, !731, !732, !733}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !727, file: !671, line: 233, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !727, file: !671, line: 234, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !727, file: !671, line: 235, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !727, file: !671, line: 236, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "allow_weak_key", scope: !727, file: !671, line: 237, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "u_iv", scope: !695, file: !671, line: 248, baseType: !735, size: 128, offset: 1536)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !671, line: 245, size: 128, elements: !736)
!736 = !{!737, !769}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "iv_align", scope: !735, file: !671, line: 246, baseType: !738, size: 128)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "cipher_context_alignment_t", file: !671, line: 187, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !671, line: 180, size: 128, elements: !740)
!740 = !{!741, !764, !768}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !739, file: !671, line: 182, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "PROPERLY_ALIGNED_TYPE", file: !597, line: 134, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !597, line: 125, size: 64, elements: !744)
!744 = !{!745, !746, !748, !752, !754, !760, !762}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !743, file: !597, line: 127, baseType: !617, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !743, file: !597, line: 128, baseType: !747, size: 16)
!747 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !743, file: !597, line: 129, baseType: !749, size: 8)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 8, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 1)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !743, file: !597, line: 130, baseType: !753, size: 64)
!753 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !743, file: !597, line: 131, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !597, line: 105, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !757, line: 27, baseType: !758)
!757 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !759, line: 45, baseType: !659)
!759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !743, file: !597, line: 132, baseType: !761, size: 32)
!761 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !743, file: !597, line: 133, baseType: !763, size: 64)
!763 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !739, file: !671, line: 184, baseType: !765, size: 128, align: 128)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 128, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 16)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !739, file: !671, line: 186, baseType: !749, size: 8)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !735, file: !671, line: 247, baseType: !770, size: 128)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 128, elements: !766)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "u_ctr", scope: !695, file: !671, line: 256, baseType: !772, size: 128, offset: 1664)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !671, line: 253, size: 128, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "iv_align", scope: !772, file: !671, line: 254, baseType: !738, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !772, file: !671, line: 255, baseType: !770, size: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lastiv", scope: !695, file: !671, line: 259, baseType: !770, size: 128, offset: 1792)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !695, file: !671, line: 260, baseType: !617, size: 32, offset: 1920)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "u_mode", scope: !695, file: !671, line: 439, baseType: !779, size: 5120, offset: 2048)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !671, line: 262, size: 5120, elements: !780)
!780 = !{!781, !792, !821, !836, !841, !875, !894, !899, !909}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ccm", scope: !779, file: !671, line: 278, baseType: !782, size: 512)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 264, size: 512, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "encryptlen", scope: !782, file: !671, line: 265, baseType: !755, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aadlen", scope: !782, file: !671, line: 266, baseType: !755, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "authlen", scope: !782, file: !671, line: 267, baseType: !7, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "macbuf", scope: !782, file: !671, line: 270, baseType: !770, size: 128, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mac_unused", scope: !782, file: !671, line: 271, baseType: !617, size: 32, offset: 288)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s0", scope: !782, file: !671, line: 273, baseType: !770, size: 128, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !782, file: !671, line: 275, baseType: !7, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !782, file: !671, line: 276, baseType: !7, size: 1, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "poly1305", scope: !779, file: !671, line: 292, baseType: !793, size: 736)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 281, size: 736, elements: !794)
!794 = !{!795, !799, !800, !801, !802}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "aadcount", scope: !793, file: !671, line: 283, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 64, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 2)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "datacount", scope: !793, file: !671, line: 286, baseType: !796, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "aad_finalized", scope: !793, file: !671, line: 288, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bytecount_over_limits", scope: !793, file: !671, line: 289, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !793, file: !671, line: 291, baseType: !803, size: 576, offset: 160)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly1305_context_t", file: !804, line: 49, baseType: !805)
!804 = !DIFile(filename: "././poly1305-internal.h", directory: "/home/luwei/libgcrypt-1.10.1/cipher")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poly1305_context_s", file: !804, line: 44, size: 576, elements: !806)
!806 = !{!807, !818, !820}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !805, file: !804, line: 46, baseType: !808, size: 416)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "POLY1305_STATE", file: !804, line: 42, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !804, line: 37, size: 416, elements: !810)
!810 = !{!811, !815, !816}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !809, file: !804, line: 39, baseType: !812, size: 128)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 128, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 4)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !809, file: !804, line: 40, baseType: !812, size: 128, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !809, file: !804, line: 41, baseType: !817, size: 160, offset: 256)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 160, elements: !629)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !805, file: !804, line: 47, baseType: !819, size: 128, offset: 416)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 128, elements: !766)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !805, file: !804, line: 48, baseType: !7, size: 32, offset: 544)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cmac", scope: !779, file: !671, line: 295, baseType: !822, size: 640)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cmac_context_t", file: !671, line: 206, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 191, size: 640, elements: !824)
!824 = !{!825, !830, !833, !834, !835}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "u_iv", scope: !823, file: !671, line: 196, baseType: !826, size: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !671, line: 193, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "iv_align", scope: !826, file: !671, line: 194, baseType: !738, size: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !826, file: !671, line: 195, baseType: !770, size: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "subkeys", scope: !823, file: !671, line: 199, baseType: !831, size: 256, offset: 128)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 256, elements: !832)
!832 = !{!798, !767}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "macbuf", scope: !823, file: !671, line: 202, baseType: !770, size: 128, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mac_unused", scope: !823, file: !671, line: 204, baseType: !617, size: 32, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !823, file: !671, line: 205, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !779, file: !671, line: 304, baseType: !837, size: 1280)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 298, size: 1280, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cmac_header", scope: !837, file: !671, line: 300, baseType: !822, size: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cmac_ciphertext", scope: !837, file: !671, line: 303, baseType: !822, size: 640, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gcm", scope: !779, file: !671, line: 358, baseType: !842, size: 5120)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 307, size: 5120, elements: !843)
!843 = !{!844, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !863, !867, !873, !874}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "u_tag", scope: !842, file: !671, line: 312, baseType: !845, size: 128)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !671, line: 309, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "iv_align", scope: !845, file: !671, line: 310, baseType: !738, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !845, file: !671, line: 311, baseType: !770, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "macbuf", scope: !842, file: !671, line: 315, baseType: !770, size: 128, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mac_unused", scope: !842, file: !671, line: 316, baseType: !617, size: 32, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "aadlen", scope: !842, file: !671, line: 319, baseType: !796, size: 64, offset: 288)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !842, file: !671, line: 320, baseType: !796, size: 64, offset: 352)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tagiv", scope: !842, file: !671, line: 323, baseType: !770, size: 128, offset: 416)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ghash_data_finalized", scope: !842, file: !671, line: 325, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ghash_aad_finalized", scope: !842, file: !671, line: 326, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "datalen_over_limits", scope: !842, file: !671, line: 328, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "disallow_encryption_because_of_setiv_in_fips_mode", scope: !842, file: !671, line: 329, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "u_ghash_key", scope: !842, file: !671, line: 337, baseType: !859, size: 128, offset: 640)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !671, line: 334, size: 128, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "iv_align", scope: !859, file: !671, line: 335, baseType: !738, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !859, file: !671, line: 336, baseType: !770, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gcm_table", scope: !842, file: !671, line: 343, baseType: !864, size: 4096, offset: 768)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 4096, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ghash_fn", scope: !842, file: !671, line: 351, baseType: !868, size: 64, offset: 4864)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "ghash_fn_t", file: !671, line: 117, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!7, !693, !872, !612, !657}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "polyval_fn", scope: !842, file: !671, line: 354, baseType: !868, size: 64, offset: 4928)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "siv_keylen", scope: !842, file: !671, line: 357, baseType: !7, size: 32, offset: 4992)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ocb", scope: !779, file: !671, line: 401, baseType: !876, size: 3136)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 361, size: 3136, elements: !877)
!877 = !{!878, !879, !880, !881, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "L_star", scope: !876, file: !671, line: 365, baseType: !770, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "L_dollar", scope: !876, file: !671, line: 366, baseType: !770, size: 128, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "L0L1", scope: !876, file: !671, line: 367, baseType: !770, size: 128, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !876, file: !671, line: 368, baseType: !882, size: 2048, offset: 384)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 2048, elements: !883)
!883 = !{!767, !767}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !876, file: !671, line: 373, baseType: !770, size: 128, offset: 2432)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "aad_offset", scope: !876, file: !671, line: 376, baseType: !770, size: 128, offset: 2560)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "aad_sum", scope: !876, file: !671, line: 381, baseType: !770, size: 128, offset: 2688)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "aad_leftover", scope: !876, file: !671, line: 384, baseType: !770, size: 128, offset: 2816)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "data_nblocks", scope: !876, file: !671, line: 387, baseType: !755, size: 64, offset: 2944)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "aad_nblocks", scope: !876, file: !671, line: 388, baseType: !755, size: 64, offset: 3008)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "aad_nleftover", scope: !876, file: !671, line: 391, baseType: !615, size: 8, offset: 3072)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "taglen", scope: !876, file: !671, line: 395, baseType: !615, size: 8, offset: 3080)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "data_finalized", scope: !876, file: !671, line: 399, baseType: !7, size: 1, offset: 3088, flags: DIFlagBitField, extraData: i64 3088)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "aad_finalized", scope: !876, file: !671, line: 400, baseType: !7, size: 1, offset: 3089, flags: DIFlagBitField, extraData: i64 3088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "xts", scope: !779, file: !671, line: 408, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 404, size: 64, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tweak_context", scope: !895, file: !671, line: 407, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "siv", scope: !779, file: !671, line: 433, baseType: !900, size: 1280)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 411, size: 1280, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dec_tag", scope: !900, file: !671, line: 413, baseType: !770, size: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s2v_d", scope: !900, file: !671, line: 416, baseType: !770, size: 128, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "aad_count", scope: !900, file: !671, line: 419, baseType: !7, size: 8, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dec_tag_set", scope: !900, file: !671, line: 422, baseType: !7, size: 1, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "s2v_cmac", scope: !900, file: !671, line: 427, baseType: !822, size: 640, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "s2v_zero_block", scope: !900, file: !671, line: 428, baseType: !770, size: 128, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ctr_context", scope: !900, file: !671, line: 432, baseType: !898, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wrap", scope: !779, file: !671, line: 438, baseType: !910, size: 32)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !671, line: 436, size: 32, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !910, file: !671, line: 437, baseType: !913, size: 32)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 32, elements: !813)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !695, file: !671, line: 446, baseType: !738, size: 128, offset: 7168)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ocb_auth", scope: !670, file: !671, line: 164, baseType: !916, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!657, !693, !678, !657}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "xts_crypt", scope: !670, file: !671, line: 165, baseType: !682, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gcm_crypt", scope: !670, file: !671, line: 167, baseType: !690, size: 64, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !637, file: !636, line: 192, baseType: !922, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_encrypt_t", file: !636, line: 141, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!7, !602, !677, !667}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "decrypt", scope: !637, file: !636, line: 193, baseType: !927, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_decrypt_t", file: !636, line: 146, baseType: !923)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "stencrypt", scope: !637, file: !636, line: 194, baseType: !929, size: 64, offset: 640)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_stencrypt_t", file: !636, line: 151, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !602, !677, !667, !657}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "stdecrypt", scope: !637, file: !636, line: 195, baseType: !934, size: 64, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcry_cipher_stdecrypt_t", file: !636, line: 157, baseType: !930)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "selftest", scope: !637, file: !636, line: 196, baseType: !936, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "selftest_func_t", file: !636, line: 42, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!611, !617, !617, !940}
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "selftest_report_func_t", file: !636, line: 36, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !620, !617, !620, !620}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "set_extra_info", scope: !637, file: !636, line: 197, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "cipher_set_extra_info_t", file: !636, line: 163, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!611, !602, !617, !678, !657}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "setiv", scope: !637, file: !636, line: 198, baseType: !950, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "cipher_setiv_func_t", file: !636, line: 167, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !602, !612, !657}
!954 = !{i32 7, !"Dwarf Version", i32 4}
!955 = !{i32 2, !"Debug Info Version", i32 3}
!956 = !{i32 1, !"wchar_size", i32 4}
!957 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.5"}
!958 = distinct !DISubprogram(name: "arcfour_setkey", scope: !3, file: !3, line: 176, type: !959, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !616)
!959 = !DISubroutineType(types: !960)
!960 = !{!609, !602, !612, !7, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!962 = !DILocalVariable(name: "context", arg: 1, scope: !958, file: !3, line: 176, type: !602)
!963 = !DILocation(line: 176, column: 24, scope: !958)
!964 = !DILocalVariable(name: "key", arg: 2, scope: !958, file: !3, line: 176, type: !612)
!965 = !DILocation(line: 176, column: 45, scope: !958)
!966 = !DILocalVariable(name: "keylen", arg: 3, scope: !958, file: !3, line: 176, type: !7)
!967 = !DILocation(line: 176, column: 63, scope: !958)
!968 = !DILocalVariable(name: "bulk_ops", arg: 4, scope: !958, file: !3, line: 177, type: !961)
!969 = !DILocation(line: 177, column: 37, scope: !958)
!970 = !DILocalVariable(name: "ctx", scope: !958, file: !3, line: 179, type: !590)
!971 = !DILocation(line: 179, column: 20, scope: !958)
!972 = !DILocation(line: 179, column: 46, scope: !958)
!973 = !DILocation(line: 179, column: 26, scope: !958)
!974 = !DILocalVariable(name: "rc", scope: !958, file: !3, line: 180, type: !609)
!975 = !DILocation(line: 180, column: 19, scope: !958)
!976 = !DILocation(line: 180, column: 43, scope: !958)
!977 = !DILocation(line: 180, column: 48, scope: !958)
!978 = !DILocation(line: 180, column: 53, scope: !958)
!979 = !DILocation(line: 180, column: 24, scope: !958)
!980 = !DILocation(line: 181, column: 9, scope: !958)
!981 = !DILocation(line: 182, column: 10, scope: !958)
!982 = !DILocation(line: 182, column: 3, scope: !958)
!983 = distinct !DISubprogram(name: "encrypt_stream", scope: !3, file: !3, line: 57, type: !984, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !616)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !602, !872, !612, !657}
!986 = !DILocalVariable(name: "context", arg: 1, scope: !983, file: !3, line: 57, type: !602)
!987 = !DILocation(line: 57, column: 23, scope: !983)
!988 = !DILocalVariable(name: "outbuf", arg: 2, scope: !983, file: !3, line: 58, type: !872)
!989 = !DILocation(line: 58, column: 23, scope: !983)
!990 = !DILocalVariable(name: "inbuf", arg: 3, scope: !983, file: !3, line: 58, type: !612)
!991 = !DILocation(line: 58, column: 43, scope: !983)
!992 = !DILocalVariable(name: "length", arg: 4, scope: !983, file: !3, line: 58, type: !657)
!993 = !DILocation(line: 58, column: 57, scope: !983)
!994 = !DILocation(line: 60, column: 24, scope: !983)
!995 = !DILocation(line: 60, column: 33, scope: !983)
!996 = !DILocation(line: 60, column: 41, scope: !983)
!997 = !DILocation(line: 60, column: 48, scope: !983)
!998 = !DILocation(line: 60, column: 3, scope: !983)
!999 = !DILocation(line: 61, column: 1, scope: !983)
!1000 = !DILocalVariable(name: "context", arg: 1, scope: !606, file: !3, line: 132, type: !602)
!1001 = !DILocation(line: 132, column: 26, scope: !606)
!1002 = !DILocalVariable(name: "key", arg: 2, scope: !606, file: !3, line: 132, type: !612)
!1003 = !DILocation(line: 132, column: 47, scope: !606)
!1004 = !DILocalVariable(name: "keylen", arg: 3, scope: !606, file: !3, line: 132, type: !7)
!1005 = !DILocation(line: 132, column: 65, scope: !606)
!1006 = !DILocalVariable(name: "i", scope: !606, file: !3, line: 136, type: !617)
!1007 = !DILocation(line: 136, column: 7, scope: !606)
!1008 = !DILocalVariable(name: "j", scope: !606, file: !3, line: 136, type: !617)
!1009 = !DILocation(line: 136, column: 10, scope: !606)
!1010 = !DILocalVariable(name: "karr", scope: !606, file: !3, line: 137, type: !1011)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 2048, elements: !598)
!1012 = !DILocation(line: 137, column: 8, scope: !606)
!1013 = !DILocalVariable(name: "ctx", scope: !606, file: !3, line: 138, type: !590)
!1014 = !DILocation(line: 138, column: 20, scope: !606)
!1015 = !DILocation(line: 138, column: 46, scope: !606)
!1016 = !DILocation(line: 138, column: 26, scope: !606)
!1017 = !DILocation(line: 140, column: 8, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !606, file: !3, line: 140, column: 7)
!1019 = !DILocation(line: 140, column: 7, scope: !606)
!1020 = !DILocation(line: 142, column: 19, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 141, column: 5)
!1022 = !DILocation(line: 143, column: 25, scope: !1021)
!1023 = !DILocation(line: 143, column: 23, scope: !1021)
!1024 = !DILocation(line: 144, column: 11, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 144, column: 11)
!1026 = !DILocation(line: 144, column: 11, scope: !1021)
!1027 = !DILocation(line: 145, column: 54, scope: !1025)
!1028 = !DILocation(line: 145, column: 9, scope: !1025)
!1029 = !DILocation(line: 146, column: 5, scope: !1021)
!1030 = !DILocation(line: 147, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !606, file: !3, line: 147, column: 7)
!1032 = !DILocation(line: 147, column: 7, scope: !606)
!1033 = !DILocation(line: 148, column: 5, scope: !1031)
!1034 = !DILocation(line: 150, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !606, file: !3, line: 150, column: 7)
!1036 = !DILocation(line: 150, column: 14, scope: !1035)
!1037 = !DILocation(line: 150, column: 7, scope: !606)
!1038 = !DILocation(line: 151, column: 5, scope: !1035)
!1039 = !DILocation(line: 153, column: 16, scope: !606)
!1040 = !DILocation(line: 153, column: 21, scope: !606)
!1041 = !DILocation(line: 153, column: 27, scope: !606)
!1042 = !DILocation(line: 153, column: 3, scope: !606)
!1043 = !DILocation(line: 153, column: 8, scope: !606)
!1044 = !DILocation(line: 153, column: 14, scope: !606)
!1045 = !DILocation(line: 154, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !606, file: !3, line: 154, column: 3)
!1047 = !DILocation(line: 154, column: 8, scope: !1046)
!1048 = !DILocation(line: 154, column: 13, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 154, column: 3)
!1050 = !DILocation(line: 154, column: 15, scope: !1049)
!1051 = !DILocation(line: 154, column: 3, scope: !1046)
!1052 = !DILocation(line: 155, column: 20, scope: !1049)
!1053 = !DILocation(line: 155, column: 5, scope: !1049)
!1054 = !DILocation(line: 155, column: 10, scope: !1049)
!1055 = !DILocation(line: 155, column: 15, scope: !1049)
!1056 = !DILocation(line: 155, column: 18, scope: !1049)
!1057 = !DILocation(line: 154, column: 23, scope: !1049)
!1058 = !DILocation(line: 154, column: 3, scope: !1049)
!1059 = distinct !{!1059, !1051, !1060, !1061}
!1060 = !DILocation(line: 155, column: 20, scope: !1046)
!1061 = !{!"llvm.loop.mustprogress"}
!1062 = !DILocation(line: 156, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !606, file: !3, line: 156, column: 3)
!1064 = !DILocation(line: 156, column: 9, scope: !1063)
!1065 = !DILocation(line: 156, column: 8, scope: !1063)
!1066 = !DILocation(line: 156, column: 15, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 156, column: 3)
!1068 = !DILocation(line: 156, column: 17, scope: !1067)
!1069 = !DILocation(line: 156, column: 3, scope: !1063)
!1070 = !DILocation(line: 158, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 158, column: 11)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 157, column: 5)
!1073 = !DILocation(line: 158, column: 16, scope: !1071)
!1074 = !DILocation(line: 158, column: 13, scope: !1071)
!1075 = !DILocation(line: 158, column: 11, scope: !1072)
!1076 = !DILocation(line: 159, column: 11, scope: !1071)
!1077 = !DILocation(line: 159, column: 9, scope: !1071)
!1078 = !DILocation(line: 160, column: 17, scope: !1072)
!1079 = !DILocation(line: 160, column: 21, scope: !1072)
!1080 = !DILocation(line: 160, column: 12, scope: !1072)
!1081 = !DILocation(line: 160, column: 7, scope: !1072)
!1082 = !DILocation(line: 160, column: 15, scope: !1072)
!1083 = !DILocation(line: 161, column: 5, scope: !1072)
!1084 = !DILocation(line: 156, column: 25, scope: !1067)
!1085 = !DILocation(line: 156, column: 29, scope: !1067)
!1086 = !DILocation(line: 156, column: 3, scope: !1067)
!1087 = distinct !{!1087, !1069, !1088, !1061}
!1088 = !DILocation(line: 161, column: 5, scope: !1063)
!1089 = !DILocation(line: 162, column: 11, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !606, file: !3, line: 162, column: 3)
!1091 = !DILocation(line: 162, column: 9, scope: !1090)
!1092 = !DILocation(line: 162, column: 8, scope: !1090)
!1093 = !DILocation(line: 162, column: 15, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 162, column: 3)
!1095 = !DILocation(line: 162, column: 17, scope: !1094)
!1096 = !DILocation(line: 162, column: 3, scope: !1090)
!1097 = !DILocalVariable(name: "t", scope: !1098, file: !3, line: 164, type: !617)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 163, column: 5)
!1099 = !DILocation(line: 164, column: 11, scope: !1098)
!1100 = !DILocation(line: 165, column: 12, scope: !1098)
!1101 = !DILocation(line: 165, column: 16, scope: !1098)
!1102 = !DILocation(line: 165, column: 21, scope: !1098)
!1103 = !DILocation(line: 165, column: 26, scope: !1098)
!1104 = !DILocation(line: 165, column: 14, scope: !1098)
!1105 = !DILocation(line: 165, column: 36, scope: !1098)
!1106 = !DILocation(line: 165, column: 31, scope: !1098)
!1107 = !DILocation(line: 165, column: 29, scope: !1098)
!1108 = !DILocation(line: 165, column: 40, scope: !1098)
!1109 = !DILocation(line: 165, column: 9, scope: !1098)
!1110 = !DILocation(line: 166, column: 11, scope: !1098)
!1111 = !DILocation(line: 166, column: 16, scope: !1098)
!1112 = !DILocation(line: 166, column: 21, scope: !1098)
!1113 = !DILocation(line: 166, column: 9, scope: !1098)
!1114 = !DILocation(line: 167, column: 22, scope: !1098)
!1115 = !DILocation(line: 167, column: 27, scope: !1098)
!1116 = !DILocation(line: 167, column: 32, scope: !1098)
!1117 = !DILocation(line: 167, column: 7, scope: !1098)
!1118 = !DILocation(line: 167, column: 12, scope: !1098)
!1119 = !DILocation(line: 167, column: 17, scope: !1098)
!1120 = !DILocation(line: 167, column: 20, scope: !1098)
!1121 = !DILocation(line: 168, column: 22, scope: !1098)
!1122 = !DILocation(line: 168, column: 7, scope: !1098)
!1123 = !DILocation(line: 168, column: 12, scope: !1098)
!1124 = !DILocation(line: 168, column: 17, scope: !1098)
!1125 = !DILocation(line: 168, column: 20, scope: !1098)
!1126 = !DILocation(line: 169, column: 5, scope: !1098)
!1127 = !DILocation(line: 162, column: 25, scope: !1094)
!1128 = !DILocation(line: 162, column: 3, scope: !1094)
!1129 = distinct !{!1129, !1096, !1130, !1061}
!1130 = !DILocation(line: 169, column: 5, scope: !1090)
!1131 = !DILocation(line: 170, column: 3, scope: !606)
!1132 = !DILocation(line: 170, column: 3, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 170, column: 3)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 170, column: 3)
!1135 = distinct !DILexicalBlock(scope: !606, file: !3, line: 170, column: 3)
!1136 = !DILocation(line: 170, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 170, column: 3)
!1138 = !{i32 -2146819214}
!1139 = !DILocation(line: 170, column: 3, scope: !1135)
!1140 = !DILocation(line: 172, column: 3, scope: !606)
!1141 = !DILocation(line: 173, column: 1, scope: !606)
!1142 = !DILocalVariable(name: "ctx", scope: !625, file: !3, line: 189, type: !591)
!1143 = !DILocation(line: 189, column: 19, scope: !625)
!1144 = !DILocalVariable(name: "scratch", scope: !625, file: !3, line: 190, type: !819)
!1145 = !DILocation(line: 190, column: 8, scope: !625)
!1146 = !DILocation(line: 201, column: 19, scope: !625)
!1147 = !DILocation(line: 201, column: 3, scope: !625)
!1148 = !DILocation(line: 202, column: 19, scope: !625)
!1149 = !DILocation(line: 202, column: 25, scope: !625)
!1150 = !DILocation(line: 202, column: 3, scope: !625)
!1151 = !DILocation(line: 203, column: 16, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !625, file: !3, line: 203, column: 8)
!1153 = !DILocation(line: 203, column: 8, scope: !1152)
!1154 = !DILocation(line: 203, column: 8, scope: !625)
!1155 = !DILocation(line: 204, column: 5, scope: !1152)
!1156 = !DILocation(line: 205, column: 19, scope: !625)
!1157 = !DILocation(line: 205, column: 3, scope: !625)
!1158 = !DILocation(line: 206, column: 18, scope: !625)
!1159 = !DILocation(line: 206, column: 24, scope: !625)
!1160 = !DILocation(line: 206, column: 33, scope: !625)
!1161 = !DILocation(line: 206, column: 3, scope: !625)
!1162 = !DILocation(line: 207, column: 16, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !625, file: !3, line: 207, column: 8)
!1164 = !DILocation(line: 207, column: 8, scope: !1163)
!1165 = !DILocation(line: 207, column: 8, scope: !625)
!1166 = !DILocation(line: 208, column: 5, scope: !1163)
!1167 = !DILocation(line: 209, column: 3, scope: !625)
!1168 = !DILocation(line: 210, column: 1, scope: !625)
