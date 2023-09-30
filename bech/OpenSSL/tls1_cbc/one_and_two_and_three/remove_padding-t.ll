; ModuleID = 'remove_padding-k.ll'
source_filename = "remove_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssl_st = type { i8*, i64, %struct.ssl3_state_st*, %struct.evp_cipher_ctx_st*, i32 }
%struct.ssl3_state_st = type { i64, [8 x i8] }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st* }
%struct.evp_cipher_st = type { i64 }
%struct.ssl3_record_st = type { i32, i8*, i32, i8* }
%struct.smack_value = type { i8* }

@.str = private unnamed_addr constant [9 x i8] zeroinitializer, align 1, !psr.id !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CRYPTO_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !12 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !25, !psr.id !26
  call void @llvm.dbg.value(metadata i8* %1, metadata !27, metadata !DIExpression()), !dbg !25, !psr.id !28
  call void @llvm.dbg.value(metadata i64 %2, metadata !29, metadata !DIExpression()), !dbg !25, !psr.id !30
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !25, !psr.id !32
  call void @llvm.dbg.value(metadata i8* %1, metadata !33, metadata !DIExpression()), !dbg !25, !psr.id !34
  call void @llvm.dbg.value(metadata i8 0, metadata !35, metadata !DIExpression()), !dbg !25, !psr.id !36
  call void @llvm.dbg.value(metadata i64 0, metadata !37, metadata !DIExpression()), !dbg !25, !psr.id !38
  br label %4, !dbg !39, !psr.id !41

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !42, !psr.id !43
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !25, !psr.id !44
  call void @llvm.dbg.value(metadata i8 %.0, metadata !35, metadata !DIExpression()), !dbg !25, !psr.id !45
  call void @llvm.dbg.value(metadata i64 %.01, metadata !37, metadata !DIExpression()), !dbg !25, !psr.id !46
  %5 = icmp ult i64 %.01, %2, !dbg !47, !psr.id !49
  br i1 %5, label %6, label %19, !dbg !50, !psr.id !51

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !52, !psr.id !53
  %8 = load i8, i8* %7, align 1, !dbg !52, !psr.id !54
  %9 = zext i8 %8 to i32, !dbg !52, !psr.id !55
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !56, !psr.id !57
  %11 = load i8, i8* %10, align 1, !dbg !56, !psr.id !58
  %12 = sext i8 %11 to i32, !dbg !56, !psr.id !59
  %13 = xor i32 %9, %12, !dbg !60, !psr.id !61
  %14 = zext i8 %.0 to i32, !dbg !62, !psr.id !63
  %15 = or i32 %14, %13, !dbg !62, !psr.id !64
  %16 = trunc i32 %15 to i8, !dbg !62, !psr.id !65
  call void @llvm.dbg.value(metadata i8 %16, metadata !35, metadata !DIExpression()), !dbg !25, !psr.id !66
  br label %17, !dbg !67, !psr.id !68

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !69, !psr.id !70
  call void @llvm.dbg.value(metadata i64 %18, metadata !37, metadata !DIExpression()), !dbg !25, !psr.id !71
  br label %4, !dbg !72, !llvm.loop !73, !psr.id !76

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !77, !psr.id !78
  ret i32 %20, !dbg !79, !psr.id !80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls1_cbc_remove_padding(%struct.ssl_st* %0, %struct.ssl3_record_st* %1, i32 %2, i32 %3) #0 !dbg !81 {
  call void @llvm.dbg.value(metadata %struct.ssl_st* %0, metadata !124, metadata !DIExpression()), !dbg !125, !psr.id !126
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %1, metadata !127, metadata !DIExpression()), !dbg !125, !psr.id !128
  call void @llvm.dbg.value(metadata i32 %2, metadata !129, metadata !DIExpression()), !dbg !125, !psr.id !130
  call void @llvm.dbg.value(metadata i32 %3, metadata !131, metadata !DIExpression()), !dbg !125, !psr.id !132
  %5 = add i32 1, %3, !dbg !133, !psr.id !134
  call void @llvm.dbg.value(metadata i32 %5, metadata !135, metadata !DIExpression()), !dbg !125, !psr.id !137
  %6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 4, !dbg !138, !psr.id !140
  %7 = load i32, i32* %6, align 8, !dbg !138, !psr.id !141
  %8 = and i32 %7, 1, !dbg !138, !psr.id !142
  %9 = icmp ne i32 %8, 0, !dbg !138, !psr.id !143
  br i1 %9, label %10, label %28, !dbg !144, !psr.id !145

10:                                               ; preds = %4
  %11 = add i32 %5, %2, !dbg !146, !psr.id !149
  %12 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !150, !psr.id !151
  %13 = load i32, i32* %12, align 8, !dbg !150, !psr.id !152
  %14 = icmp ugt i32 %11, %13, !dbg !153, !psr.id !154
  br i1 %14, label %15, label %16, !dbg !155, !psr.id !156

15:                                               ; preds = %10
  br label %146, !dbg !157, !psr.id !158

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !159, !psr.id !160
  %18 = load i8*, i8** %17, align 8, !dbg !161, !psr.id !162, !PointTainted !163
  %19 = zext i32 %2 to i64, !dbg !161, !psr.id !164
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !161, !psr.id !165, !PointTainted !163
  store i8* %20, i8** %17, align 8, !dbg !161, !psr.id !166
  %21 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 3, !dbg !167, !psr.id !168
  %22 = load i8*, i8** %21, align 8, !dbg !169, !psr.id !170
  %23 = zext i32 %2 to i64, !dbg !169, !psr.id !171
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !169, !psr.id !172
  store i8* %24, i8** %21, align 8, !dbg !169, !psr.id !173
  %25 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !174, !psr.id !175
  %26 = load i32, i32* %25, align 8, !dbg !176, !psr.id !177
  %27 = sub i32 %26, %2, !dbg !176, !psr.id !178
  store i32 %27, i32* %25, align 8, !dbg !176, !psr.id !179
  br label %34, !dbg !180, !psr.id !181

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !182, !psr.id !184
  %30 = load i32, i32* %29, align 8, !dbg !182, !psr.id !185
  %31 = icmp ugt i32 %5, %30, !dbg !186, !psr.id !187
  br i1 %31, label %32, label %33, !dbg !188, !psr.id !189

32:                                               ; preds = %28
  br label %146, !dbg !190, !psr.id !191

33:                                               ; preds = %28
  br label %34, !psr.id !192

34:                                               ; preds = %33, %16
  %35 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !193, !psr.id !194
  %36 = load i8*, i8** %35, align 8, !dbg !193, !psr.id !195, !PointTainted !163
  %37 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !196, !psr.id !197
  %38 = load i32, i32* %37, align 8, !dbg !196, !psr.id !198
  %39 = sub i32 %38, 1, !dbg !199, !psr.id !200
  %40 = zext i32 %39 to i64, !dbg !201, !psr.id !202
  %41 = getelementptr inbounds i8, i8* %36, i64 %40, !dbg !201, !psr.id !203, !PointTainted !163
  %42 = load i8, i8* %41, align 1, !dbg !201, !psr.id !204, !ValueTainted !205
  %43 = zext i8 %42 to i32, !dbg !201, !psr.id !206, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %43, metadata !207, metadata !DIExpression()), !dbg !125, !psr.id !208
  %44 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 1, !dbg !209, !psr.id !211
  %45 = load i64, i64* %44, align 8, !dbg !209, !psr.id !212
  %46 = and i64 %45, 512, !dbg !213, !psr.id !214
  %47 = icmp ne i64 %46, 0, !dbg !213, !psr.id !215
  br i1 %47, label %48, label %84, !dbg !216, !psr.id !217

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 0, !dbg !218, !psr.id !219
  %50 = load i8*, i8** %49, align 8, !dbg !218, !psr.id !220
  %51 = icmp ne i8* %50, null, !dbg !221, !psr.id !222
  br i1 %51, label %84, label %52, !dbg !223, !psr.id !224

52:                                               ; preds = %48
  %53 = icmp ne i32 %43, 0, !dbg !225, !psr.id !228, !ValueTainted !205
  br i1 %53, label %54, label %55, !dbg !229, !psr.id !230, !Tainted !231

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i32 2, metadata !232, metadata !DIExpression()), !dbg !125, !psr.id !233
  br label %55, !dbg !234, !psr.id !235

55:                                               ; preds = %54, %52
  %56 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2, !dbg !236, !psr.id !238
  %57 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %56, align 8, !dbg !236, !psr.id !239
  %58 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %57, i32 0, i32 1, !dbg !240, !psr.id !241
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %58, i64 0, i64 0, !dbg !242, !psr.id !243
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* @.str, i64 0, i64 0, !psr.id !244
  %61 = call i32 @CRYPTO_memcmp(i8* %59, i8* %60, i64 8), !dbg !245, !psr.id !246
  %62 = icmp eq i32 %61, 0, !dbg !247, !psr.id !248
  br i1 %62, label %63, label %72, !dbg !249, !psr.id !250

63:                                               ; preds = %55
  %64 = and i32 %43, 1, !dbg !251, !psr.id !252, !ValueTainted !205
  %65 = icmp ne i32 %64, 0, !dbg !251, !psr.id !253, !ValueTainted !205
  br i1 %65, label %72, label %66, !dbg !254, !psr.id !255, !Tainted !231

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2, !dbg !256, !psr.id !258
  %68 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %67, align 8, !dbg !256, !psr.id !259
  %69 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %68, i32 0, i32 0, !dbg !260, !psr.id !261
  %70 = load i64, i64* %69, align 8, !dbg !262, !psr.id !263
  %71 = or i64 %70, 8, !dbg !262, !psr.id !264
  store i64 %71, i64* %69, align 8, !dbg !262, !psr.id !265
  br label %72, !dbg !266, !psr.id !267

72:                                               ; preds = %66, %63, %55
  %73 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2, !dbg !268, !psr.id !270
  %74 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %73, align 8, !dbg !268, !psr.id !271
  %75 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %74, i32 0, i32 0, !dbg !272, !psr.id !273
  %76 = load i64, i64* %75, align 8, !dbg !272, !psr.id !274
  %77 = and i64 %76, 8, !dbg !275, !psr.id !276
  %78 = icmp ne i64 %77, 0, !dbg !275, !psr.id !277
  br i1 %78, label %79, label %83, !dbg !278, !psr.id !279

79:                                               ; preds = %72
  %80 = icmp ugt i32 %43, 0, !dbg !280, !psr.id !281, !ValueTainted !205
  br i1 %80, label %81, label %83, !dbg !282, !psr.id !283, !Tainted !231

81:                                               ; preds = %79
  %82 = add i32 %43, -1, !dbg !284, !psr.id !286, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %82, metadata !207, metadata !DIExpression()), !dbg !125, !psr.id !287
  br label %83, !dbg !288, !psr.id !289

83:                                               ; preds = %81, %79, %72
  %.04 = phi i32 [ %82, %81 ], [ %43, %79 ], [ %43, %72 ], !dbg !125, !psr.id !290, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %.04, metadata !207, metadata !DIExpression()), !dbg !125, !psr.id !291
  br label %84, !dbg !292, !psr.id !293

84:                                               ; preds = %83, %48, %34
  %.1 = phi i32 [ %43, %48 ], [ %.04, %83 ], [ %43, %34 ], !dbg !125, !psr.id !294, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %.1, metadata !207, metadata !DIExpression()), !dbg !125, !psr.id !295
  %85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 3, !dbg !296, !psr.id !298
  %86 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %85, align 8, !dbg !296, !psr.id !299
  %87 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %86, i32 0, i32 0, !dbg !296, !psr.id !300
  %88 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %87, align 8, !dbg !296, !psr.id !301
  %89 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %88, i32 0, i32 0, !dbg !296, !psr.id !302
  %90 = load i64, i64* %89, align 8, !dbg !296, !psr.id !303
  %91 = and i64 %90, 2097152, !dbg !304, !psr.id !305
  %92 = icmp ne i64 %91, 0, !dbg !304, !psr.id !306
  br i1 %92, label %93, label %98, !dbg !307, !psr.id !308

93:                                               ; preds = %84
  %94 = add i32 %.1, 1, !dbg !309, !psr.id !311, !ValueTainted !205
  %95 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !312, !psr.id !313
  %96 = load i32, i32* %95, align 8, !dbg !314, !psr.id !315
  %97 = sub i32 %96, %94, !dbg !314, !psr.id !316, !ValueTainted !205
  store i32 %97, i32* %95, align 8, !dbg !314, !psr.id !317
  br label %146, !dbg !318, !psr.id !319

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !320, !psr.id !321
  %100 = load i32, i32* %99, align 8, !dbg !320, !psr.id !322
  %101 = add i32 %5, %.1, !dbg !323, !psr.id !324, !ValueTainted !205
  %102 = call i32 @constant_time_ge(i32 %100, i32 %101), !dbg !325, !psr.id !326, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %102, metadata !327, metadata !DIExpression()), !dbg !125, !psr.id !328
  call void @llvm.dbg.value(metadata i32 255, metadata !232, metadata !DIExpression()), !dbg !125, !psr.id !329
  %103 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !330, !psr.id !332
  %104 = load i32, i32* %103, align 8, !dbg !330, !psr.id !333
  %105 = sub i32 %104, 1, !dbg !334, !psr.id !335
  %106 = icmp ugt i32 255, %105, !dbg !336, !psr.id !337
  br i1 %106, label %107, label %111, !dbg !338, !psr.id !339

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !340, !psr.id !341
  %109 = load i32, i32* %108, align 8, !dbg !340, !psr.id !342
  %110 = sub i32 %109, 1, !dbg !343, !psr.id !344
  call void @llvm.dbg.value(metadata i32 %110, metadata !232, metadata !DIExpression()), !dbg !125, !psr.id !345
  br label %111, !dbg !346, !psr.id !347

111:                                              ; preds = %107, %98
  %.02 = phi i32 [ %110, %107 ], [ 255, %98 ], !dbg !125, !psr.id !348
  call void @llvm.dbg.value(metadata i32 %.02, metadata !232, metadata !DIExpression()), !dbg !125, !psr.id !349
  call void @llvm.dbg.value(metadata i32 0, metadata !350, metadata !DIExpression()), !dbg !125, !psr.id !351
  br label %112, !dbg !352, !psr.id !354

112:                                              ; preds = %131, %111
  %.03 = phi i32 [ %102, %111 ], [ %130, %131 ], !dbg !125, !psr.id !355, !ValueTainted !205
  %.01 = phi i32 [ 0, %111 ], [ %132, %131 ], !dbg !356, !psr.id !357
  call void @llvm.dbg.value(metadata i32 %.01, metadata !350, metadata !DIExpression()), !dbg !125, !psr.id !358
  call void @llvm.dbg.value(metadata i32 %.03, metadata !327, metadata !DIExpression()), !dbg !125, !psr.id !359
  %113 = icmp ult i32 %.01, %.02, !dbg !360, !psr.id !362
  br i1 %113, label %114, label %133, !dbg !363, !psr.id !364

114:                                              ; preds = %112
  %115 = call zeroext i8 @constant_time_ge_8(i32 %.1, i32 %.01), !dbg !365, !psr.id !367, !ValueTainted !205
  call void @llvm.dbg.value(metadata i8 %115, metadata !368, metadata !DIExpression()), !dbg !369, !psr.id !370
  %116 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !371, !psr.id !372
  %117 = load i8*, i8** %116, align 8, !dbg !371, !psr.id !373, !PointTainted !163
  %118 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !374, !psr.id !375
  %119 = load i32, i32* %118, align 8, !dbg !374, !psr.id !376
  %120 = sub i32 %119, 1, !dbg !377, !psr.id !378
  %121 = sub i32 %120, %.01, !dbg !379, !psr.id !380
  %122 = zext i32 %121 to i64, !dbg !381, !psr.id !382
  %123 = getelementptr inbounds i8, i8* %117, i64 %122, !dbg !381, !psr.id !383, !PointTainted !163
  %124 = load i8, i8* %123, align 1, !dbg !381, !psr.id !384, !ValueTainted !205
  call void @llvm.dbg.value(metadata i8 %124, metadata !385, metadata !DIExpression()), !dbg !369, !psr.id !386
  %125 = zext i8 %115 to i32, !dbg !387, !psr.id !388, !ValueTainted !205
  %126 = zext i8 %124 to i32, !dbg !389, !psr.id !390, !ValueTainted !205
  %127 = xor i32 %.1, %126, !dbg !391, !psr.id !392, !ValueTainted !205
  %128 = and i32 %125, %127, !dbg !393, !psr.id !394, !ValueTainted !205
  %129 = xor i32 %128, -1, !dbg !395, !psr.id !396, !ValueTainted !205
  %130 = and i32 %.03, %129, !dbg !397, !psr.id !398, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %130, metadata !327, metadata !DIExpression()), !dbg !125, !psr.id !399
  br label %131, !dbg !400, !psr.id !401

131:                                              ; preds = %114
  %132 = add i32 %.01, 1, !dbg !402, !psr.id !403
  call void @llvm.dbg.value(metadata i32 %132, metadata !350, metadata !DIExpression()), !dbg !125, !psr.id !404
  br label %112, !dbg !405, !llvm.loop !406, !psr.id !408

133:                                              ; preds = %112
  %134 = and i32 %.03, 255, !dbg !409, !psr.id !410, !ValueTainted !205
  %135 = call i32 @constant_time_eq(i32 255, i32 %134), !dbg !411, !psr.id !412, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %135, metadata !327, metadata !DIExpression()), !dbg !125, !psr.id !413
  %136 = add i32 %.1, 1, !dbg !414, !psr.id !415, !ValueTainted !205
  %137 = and i32 %135, %136, !dbg !416, !psr.id !417, !ValueTainted !205
  call void @llvm.dbg.value(metadata i32 %137, metadata !207, metadata !DIExpression()), !dbg !125, !psr.id !418
  %138 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !419, !psr.id !420
  %139 = load i32, i32* %138, align 8, !dbg !421, !psr.id !422
  %140 = sub i32 %139, %137, !dbg !421, !psr.id !423, !ValueTainted !205
  store i32 %140, i32* %138, align 8, !dbg !421, !psr.id !424
  %141 = shl i32 %137, 8, !dbg !425, !psr.id !426, !ValueTainted !205
  %142 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 2, !dbg !427, !psr.id !428
  %143 = load i32, i32* %142, align 8, !dbg !429, !psr.id !430
  %144 = or i32 %143, %141, !dbg !429, !psr.id !431, !ValueTainted !205
  store i32 %144, i32* %142, align 8, !dbg !429, !psr.id !432
  %145 = call i32 @constant_time_select_int(i32 %135, i32 1, i32 -1), !dbg !433, !psr.id !434, !ValueTainted !205
  br label %146, !dbg !435, !psr.id !436

146:                                              ; preds = %133, %93, %32, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %93 ], [ %145, %133 ], [ 0, %32 ], !dbg !125, !psr.id !437, !ValueTainted !205
  ret i32 %.0, !dbg !438, !psr.id !439
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_ge(i32 %0, i32 %1) #0 !dbg !440 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !444, metadata !DIExpression()), !dbg !445, !psr.id !446
  call void @llvm.dbg.value(metadata i32 %1, metadata !447, metadata !DIExpression()), !dbg !445, !psr.id !448
  %3 = call i32 @constant_time_lt(i32 %0, i32 %1), !dbg !449, !psr.id !450, !ValueTainted !205
  %4 = xor i32 %3, -1, !dbg !451, !psr.id !452, !ValueTainted !205
  ret i32 %4, !dbg !453, !psr.id !454
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @constant_time_ge_8(i32 %0, i32 %1) #0 !dbg !455 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !458, metadata !DIExpression()), !dbg !459, !psr.id !460
  call void @llvm.dbg.value(metadata i32 %1, metadata !461, metadata !DIExpression()), !dbg !459, !psr.id !462
  %3 = call i32 @constant_time_ge(i32 %0, i32 %1), !dbg !463, !psr.id !464, !ValueTainted !205
  %4 = trunc i32 %3 to i8, !dbg !465, !psr.id !466, !ValueTainted !205
  ret i8 %4, !dbg !467, !psr.id !468
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_eq(i32 %0, i32 %1) #0 !dbg !469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !470, metadata !DIExpression()), !dbg !471, !psr.id !472
  call void @llvm.dbg.value(metadata i32 %1, metadata !473, metadata !DIExpression()), !dbg !471, !psr.id !474
  %3 = xor i32 %0, %1, !dbg !475, !psr.id !476, !ValueTainted !205
  %4 = call i32 @constant_time_is_zero(i32 %3), !dbg !477, !psr.id !478, !ValueTainted !205
  ret i32 %4, !dbg !479, !psr.id !480
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select_int(i32 %0, i32 %1, i32 %2) #0 !dbg !481 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !484, metadata !DIExpression()), !dbg !485, !psr.id !486
  call void @llvm.dbg.value(metadata i32 %1, metadata !487, metadata !DIExpression()), !dbg !485, !psr.id !488
  call void @llvm.dbg.value(metadata i32 %2, metadata !489, metadata !DIExpression()), !dbg !485, !psr.id !490
  %4 = call i32 @constant_time_select(i32 %0, i32 %1, i32 %2), !dbg !491, !psr.id !492, !ValueTainted !205
  ret i32 %4, !dbg !493, !psr.id !494
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper(i64 %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 !dbg !495 {
  %10 = alloca %struct.ssl3_state_st, align 8, !psr.id !498
  %11 = alloca %struct.evp_cipher_st, align 8, !psr.id !499
  %12 = alloca %struct.evp_cipher_ctx_st, align 8, !psr.id !500
  %13 = alloca i8, align 1, !psr.id !501
  %14 = alloca %struct.ssl_st, align 8, !psr.id !502
  %15 = alloca %struct.ssl3_record_st, align 8, !psr.id !503
  call void @llvm.dbg.value(metadata i64 %0, metadata !504, metadata !DIExpression()), !dbg !505, !psr.id !506
  call void @llvm.dbg.value(metadata i64 %1, metadata !507, metadata !DIExpression()), !dbg !505, !psr.id !508
  call void @llvm.dbg.value(metadata i8* %2, metadata !509, metadata !DIExpression()), !dbg !505, !psr.id !510
  call void @llvm.dbg.value(metadata i64 %3, metadata !511, metadata !DIExpression()), !dbg !505, !psr.id !512
  call void @llvm.dbg.value(metadata i32 %4, metadata !513, metadata !DIExpression()), !dbg !505, !psr.id !514
  call void @llvm.dbg.value(metadata i8* %5, metadata !515, metadata !DIExpression()), !dbg !505, !psr.id !516
  call void @llvm.dbg.value(metadata i32 %6, metadata !517, metadata !DIExpression()), !dbg !505, !psr.id !518
  call void @llvm.dbg.value(metadata i32 %7, metadata !519, metadata !DIExpression()), !dbg !505, !psr.id !520
  call void @llvm.dbg.value(metadata i32 %8, metadata !521, metadata !DIExpression()), !dbg !505, !psr.id !522
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !523, !psr.id !524
  call void @public_in(%struct.smack_value* %16), !dbg !525, !psr.id !526
  %17 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !527, !psr.id !528
  call void @public_in(%struct.smack_value* %17), !dbg !529, !psr.id !530
  %18 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %0), !dbg !531, !psr.id !532
  call void @public_in(%struct.smack_value* %18), !dbg !533, !psr.id !534
  %19 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !535, !psr.id !536
  call void @public_in(%struct.smack_value* %19), !dbg !537, !psr.id !538
  %20 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !539, !psr.id !540
  call void @public_in(%struct.smack_value* %20), !dbg !541, !psr.id !542
  %21 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !543, !psr.id !544
  call void @public_in(%struct.smack_value* %21), !dbg !545, !psr.id !546
  %22 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %6), !dbg !547, !psr.id !548
  call void @public_in(%struct.smack_value* %22), !dbg !549, !psr.id !550
  %23 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %7), !dbg !551, !psr.id !552
  call void @public_in(%struct.smack_value* %23), !dbg !553, !psr.id !554
  %24 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !555, !psr.id !556
  call void @public_in(%struct.smack_value* %24), !dbg !557, !psr.id !558
  call void @llvm.dbg.declare(metadata %struct.ssl3_state_st* %10, metadata !559, metadata !DIExpression()), !dbg !561, !psr.id !562
  %25 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 0, !dbg !563, !psr.id !564
  store i64 %1, i64* %25, align 8, !dbg !563, !psr.id !565
  %26 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 1, !dbg !563, !psr.id !566
  %27 = bitcast [8 x i8]* %26 to i8*, !dbg !563, !psr.id !567
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false), !dbg !563, !psr.id !568
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_st* %11, metadata !569, metadata !DIExpression()), !dbg !570, !psr.id !571
  %28 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %11, i32 0, i32 0, !dbg !572, !psr.id !573
  store i64 %3, i64* %28, align 8, !dbg !572, !psr.id !574
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_ctx_st* %12, metadata !575, metadata !DIExpression()), !dbg !576, !psr.id !577
  %29 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %12, i32 0, i32 0, !dbg !578, !psr.id !579
  store %struct.evp_cipher_st* %11, %struct.evp_cipher_st** %29, align 8, !dbg !578, !psr.id !580
  call void @llvm.dbg.declare(metadata i8* %13, metadata !581, metadata !DIExpression()), !dbg !582, !psr.id !583
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %14, metadata !584, metadata !DIExpression()), !dbg !585, !psr.id !586
  %30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 0, !dbg !587, !psr.id !588
  store i8* %13, i8** %30, align 8, !dbg !587, !psr.id !589
  %31 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 1, !dbg !587, !psr.id !590
  store i64 %0, i64* %31, align 8, !dbg !587, !psr.id !591
  %32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 2, !dbg !587, !psr.id !592
  store %struct.ssl3_state_st* %10, %struct.ssl3_state_st** %32, align 8, !dbg !587, !psr.id !593
  %33 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 3, !dbg !587, !psr.id !594
  store %struct.evp_cipher_ctx_st* %12, %struct.evp_cipher_ctx_st** %33, align 8, !dbg !587, !psr.id !595
  %34 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 4, !dbg !587, !psr.id !596
  store i32 %4, i32* %34, align 8, !dbg !587, !psr.id !597
  call void @llvm.dbg.value(metadata %struct.ssl_st* %14, metadata !598, metadata !DIExpression()), !dbg !505, !psr.id !599
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %15, metadata !600, metadata !DIExpression()), !dbg !601, !psr.id !602
  %35 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 0, !dbg !603, !psr.id !604
  store i32 %6, i32* %35, align 8, !dbg !603, !psr.id !605
  %36 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 1, !dbg !603, !psr.id !606
  store i8* %5, i8** %36, align 8, !dbg !603, !psr.id !607
  %37 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 2, !dbg !603, !psr.id !608
  store i32 0, i32* %37, align 8, !dbg !603, !psr.id !609
  %38 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 3, !dbg !603, !psr.id !610
  store i8* null, i8** %38, align 8, !dbg !603, !psr.id !611
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %15, metadata !612, metadata !DIExpression()), !dbg !505, !psr.id !613
  %39 = call i32 @tls1_cbc_remove_padding(%struct.ssl_st* %14, %struct.ssl3_record_st* %15, i32 %7, i32 %8), !dbg !614, !psr.id !615
  ret i32 %39, !dbg !616, !psr.id !617
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tmp(i64 %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 !dbg !618 {
  %10 = alloca %struct.ssl3_state_st, align 8, !psr.id !619
  %11 = alloca %struct.evp_cipher_st, align 8, !psr.id !620
  %12 = alloca %struct.evp_cipher_ctx_st, align 8, !psr.id !621
  %13 = alloca i8, align 1, !psr.id !622
  %14 = alloca %struct.ssl_st, align 8, !psr.id !623
  %15 = alloca %struct.ssl3_record_st, align 8, !psr.id !624
  call void @llvm.dbg.value(metadata i64 %0, metadata !625, metadata !DIExpression()), !dbg !626, !psr.id !627
  call void @llvm.dbg.value(metadata i64 %1, metadata !628, metadata !DIExpression()), !dbg !626, !psr.id !629
  call void @llvm.dbg.value(metadata i8* %2, metadata !630, metadata !DIExpression()), !dbg !626, !psr.id !631
  call void @llvm.dbg.value(metadata i64 %3, metadata !632, metadata !DIExpression()), !dbg !626, !psr.id !633
  call void @llvm.dbg.value(metadata i32 %4, metadata !634, metadata !DIExpression()), !dbg !626, !psr.id !635
  call void @llvm.dbg.value(metadata i8* %5, metadata !636, metadata !DIExpression()), !dbg !626, !psr.id !637
  call void @llvm.dbg.value(metadata i32 %6, metadata !638, metadata !DIExpression()), !dbg !626, !psr.id !639
  call void @llvm.dbg.value(metadata i32 %7, metadata !640, metadata !DIExpression()), !dbg !626, !psr.id !641
  call void @llvm.dbg.value(metadata i32 %8, metadata !642, metadata !DIExpression()), !dbg !626, !psr.id !643
  call void @llvm.dbg.declare(metadata %struct.ssl3_state_st* %10, metadata !644, metadata !DIExpression()), !dbg !645, !psr.id !646
  %16 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 0, !dbg !647, !psr.id !648
  store i64 %1, i64* %16, align 8, !dbg !647, !psr.id !649
  %17 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 1, !dbg !647, !psr.id !650
  %18 = bitcast [8 x i8]* %17 to i8*, !dbg !647, !psr.id !651
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false), !dbg !647, !psr.id !652
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_st* %11, metadata !653, metadata !DIExpression()), !dbg !654, !psr.id !655
  %19 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %11, i32 0, i32 0, !dbg !656, !psr.id !657
  store i64 %3, i64* %19, align 8, !dbg !656, !psr.id !658
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_ctx_st* %12, metadata !659, metadata !DIExpression()), !dbg !660, !psr.id !661
  %20 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %12, i32 0, i32 0, !dbg !662, !psr.id !663
  store %struct.evp_cipher_st* %11, %struct.evp_cipher_st** %20, align 8, !dbg !662, !psr.id !664
  call void @llvm.dbg.declare(metadata i8* %13, metadata !665, metadata !DIExpression()), !dbg !666, !psr.id !667
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %14, metadata !668, metadata !DIExpression()), !dbg !669, !psr.id !670
  %21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 0, !dbg !671, !psr.id !672
  store i8* %13, i8** %21, align 8, !dbg !671, !psr.id !673
  %22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 1, !dbg !671, !psr.id !674
  store i64 %0, i64* %22, align 8, !dbg !671, !psr.id !675
  %23 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 2, !dbg !671, !psr.id !676
  store %struct.ssl3_state_st* %10, %struct.ssl3_state_st** %23, align 8, !dbg !671, !psr.id !677
  %24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 3, !dbg !671, !psr.id !678
  store %struct.evp_cipher_ctx_st* %12, %struct.evp_cipher_ctx_st** %24, align 8, !dbg !671, !psr.id !679
  %25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 4, !dbg !671, !psr.id !680
  store i32 %4, i32* %25, align 8, !dbg !671, !psr.id !681
  call void @llvm.dbg.value(metadata %struct.ssl_st* %14, metadata !682, metadata !DIExpression()), !dbg !626, !psr.id !683
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %15, metadata !684, metadata !DIExpression()), !dbg !685, !psr.id !686
  %26 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 0, !dbg !687, !psr.id !688
  store i32 %6, i32* %26, align 8, !dbg !687, !psr.id !689
  %27 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 1, !dbg !687, !psr.id !690
  store i8* %5, i8** %27, align 8, !dbg !687, !psr.id !691
  %28 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 2, !dbg !687, !psr.id !692
  store i32 0, i32* %28, align 8, !dbg !687, !psr.id !693
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 3, !dbg !687, !psr.id !694
  store i8* null, i8** %29, align 8, !dbg !687, !psr.id !695
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %15, metadata !696, metadata !DIExpression()), !dbg !626, !psr.id !697
  %30 = call i32 @tls1_cbc_remove_padding(%struct.ssl_st* %14, %struct.ssl3_record_st* %15, i32 %7, i32 %8), !dbg !698, !psr.id !699, !ValueTainted !205
  ret i32 %30, !dbg !700, !psr.id !701
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper_t() #0 !dbg !702 {
  call void @llvm.dbg.value(metadata i64 128, metadata !705, metadata !DIExpression()), !dbg !706, !psr.id !707
  call void @llvm.dbg.value(metadata i64 64, metadata !708, metadata !DIExpression()), !dbg !706, !psr.id !709
  %1 = call i8* (...) @getchar(), !dbg !710, !psr.id !711
  call void @llvm.dbg.value(metadata i8* %1, metadata !712, metadata !DIExpression()), !dbg !706, !psr.id !713
  call void @llvm.dbg.value(metadata i64 32, metadata !714, metadata !DIExpression()), !dbg !706, !psr.id !715
  call void @llvm.dbg.value(metadata i32 16, metadata !716, metadata !DIExpression()), !dbg !706, !psr.id !717
  %2 = call i8* (...) @getchar2(), !dbg !718, !psr.id !719
  call void @llvm.dbg.value(metadata i8* %2, metadata !720, metadata !DIExpression()), !dbg !706, !psr.id !721
  call void @llvm.dbg.value(metadata i32 128, metadata !722, metadata !DIExpression()), !dbg !706, !psr.id !723
  call void @llvm.dbg.value(metadata i32 32, metadata !724, metadata !DIExpression()), !dbg !706, !psr.id !725
  call void @llvm.dbg.value(metadata i32 64, metadata !726, metadata !DIExpression()), !dbg !706, !psr.id !727
  %3 = call i32 @tmp(i64 128, i64 64, i8* %1, i64 32, i32 16, i8* %2, i32 128, i32 32, i32 64), !dbg !728, !psr.id !729
  ret i32 %3, !dbg !730, !psr.id !731
}

declare dso_local i8* @getchar(...) #2

declare dso_local i8* @getchar2(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_lt(i32 %0, i32 %1) #0 !dbg !732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !733, metadata !DIExpression()), !dbg !734, !psr.id !735
  call void @llvm.dbg.value(metadata i32 %1, metadata !736, metadata !DIExpression()), !dbg !734, !psr.id !737
  %3 = xor i32 %0, %1, !dbg !738, !psr.id !739, !ValueTainted !205
  %4 = sub i32 %0, %1, !dbg !740, !psr.id !741, !ValueTainted !205
  %5 = xor i32 %4, %1, !dbg !742, !psr.id !743, !ValueTainted !205
  %6 = or i32 %3, %5, !dbg !744, !psr.id !745, !ValueTainted !205
  %7 = xor i32 %0, %6, !dbg !746, !psr.id !747, !ValueTainted !205
  %8 = call i32 @constant_time_msb(i32 %7), !dbg !748, !psr.id !749, !ValueTainted !205
  ret i32 %8, !dbg !750, !psr.id !751
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_msb(i32 %0) #0 !dbg !752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !755, metadata !DIExpression()), !dbg !756, !psr.id !757
  %2 = lshr i32 %0, 31, !dbg !758, !psr.id !759, !ValueTainted !205
  %3 = sub i32 0, %2, !dbg !760, !psr.id !761, !ValueTainted !205
  ret i32 %3, !dbg !762, !psr.id !763
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_is_zero(i32 %0) #0 !dbg !764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !765, metadata !DIExpression()), !dbg !766, !psr.id !767
  %2 = xor i32 %0, -1, !dbg !768, !psr.id !769, !ValueTainted !205
  %3 = sub i32 %0, 1, !dbg !770, !psr.id !771, !ValueTainted !205
  %4 = and i32 %2, %3, !dbg !772, !psr.id !773, !ValueTainted !205
  %5 = call i32 @constant_time_msb(i32 %4), !dbg !774, !psr.id !775, !ValueTainted !205
  ret i32 %5, !dbg !776, !psr.id !777
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select(i32 %0, i32 %1, i32 %2) #0 !dbg !778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !781, metadata !DIExpression()), !dbg !782, !psr.id !783
  call void @llvm.dbg.value(metadata i32 %1, metadata !784, metadata !DIExpression()), !dbg !782, !psr.id !785
  call void @llvm.dbg.value(metadata i32 %2, metadata !786, metadata !DIExpression()), !dbg !782, !psr.id !787
  %4 = and i32 %0, %1, !dbg !788, !psr.id !789, !ValueTainted !205
  %5 = xor i32 %0, -1, !dbg !790, !psr.id !791, !ValueTainted !205
  %6 = and i32 %5, %2, !dbg !792, !psr.id !793, !ValueTainted !205
  %7 = or i32 %4, %6, !dbg !794, !psr.id !795, !ValueTainted !205
  ret i32 %7, !dbg !796, !psr.id !797
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  %2 = call i32 @remove_padding_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = !{!"0"}
!1 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !4, splitDebugInlining: false, nameTableKind: None)
!2 = !DIFile(filename: "remove_padding.c", directory: "/home/luwei/bech-back/OpenSSL/tls1_cbc")
!3 = !{}
!4 = !{!5, !6, !7}
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!12 = distinct !DISubprogram(name: "CRYPTO_memcmp", scope: !13, file: !13, line: 42, type: !14, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DIFile(filename: "./../tls1_cbc_remove_padding.c", directory: "/home/luwei/bech-back/OpenSSL/tls1_cbc")
!14 = !DISubroutineType(types: !15)
!15 = !{!6, !16, !18, !21}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "in_a", arg: 1, scope: !12, file: !13, line: 42, type: !16)
!25 = !DILocation(line: 0, scope: !12)
!26 = !{!"1"}
!27 = !DILocalVariable(name: "in_b", arg: 2, scope: !12, file: !13, line: 42, type: !18)
!28 = !{!"2"}
!29 = !DILocalVariable(name: "len", arg: 3, scope: !12, file: !13, line: 42, type: !21)
!30 = !{!"3"}
!31 = !DILocalVariable(name: "a", scope: !12, file: !13, line: 45, type: !16)
!32 = !{!"4"}
!33 = !DILocalVariable(name: "b", scope: !12, file: !13, line: 46, type: !18)
!34 = !{!"5"}
!35 = !DILocalVariable(name: "x", scope: !12, file: !13, line: 47, type: !5)
!36 = !{!"6"}
!37 = !DILocalVariable(name: "i", scope: !12, file: !13, line: 44, type: !21)
!38 = !{!"7"}
!39 = !DILocation(line: 49, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !12, file: !13, line: 49, column: 5)
!41 = !{!"8"}
!42 = !DILocation(line: 0, scope: !40)
!43 = !{!"9"}
!44 = !{!"10"}
!45 = !{!"11"}
!46 = !{!"12"}
!47 = !DILocation(line: 49, column: 19, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !13, line: 49, column: 5)
!49 = !{!"13"}
!50 = !DILocation(line: 49, column: 5, scope: !40)
!51 = !{!"14"}
!52 = !DILocation(line: 50, column: 14, scope: !48)
!53 = !{!"15"}
!54 = !{!"16"}
!55 = !{!"17"}
!56 = !DILocation(line: 50, column: 21, scope: !48)
!57 = !{!"18"}
!58 = !{!"19"}
!59 = !{!"20"}
!60 = !DILocation(line: 50, column: 19, scope: !48)
!61 = !{!"21"}
!62 = !DILocation(line: 50, column: 11, scope: !48)
!63 = !{!"22"}
!64 = !{!"23"}
!65 = !{!"24"}
!66 = !{!"25"}
!67 = !DILocation(line: 50, column: 9, scope: !48)
!68 = !{!"26"}
!69 = !DILocation(line: 49, column: 27, scope: !48)
!70 = !{!"27"}
!71 = !{!"28"}
!72 = !DILocation(line: 49, column: 5, scope: !48)
!73 = distinct !{!73, !50, !74, !75}
!74 = !DILocation(line: 50, column: 24, scope: !40)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"29"}
!77 = !DILocation(line: 52, column: 12, scope: !12)
!78 = !{!"30"}
!79 = !DILocation(line: 52, column: 5, scope: !12)
!80 = !{!"31"}
!81 = distinct !DISubprogram(name: "tls1_cbc_remove_padding", scope: !13, file: !13, line: 68, type: !82, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DISubroutineType(types: !83)
!83 = !{!6, !84, !115, !7, !7}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !13, line: 32, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !13, line: 26, size: 320, elements: !88)
!88 = !{!89, !91, !92, !102, !114}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !87, file: !13, line: 27, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !87, file: !13, line: 28, baseType: !23, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !87, file: !13, line: 29, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !13, line: 13, size: 128, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !13, line: 14, baseType: !97, size: 64)
!97 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !94, file: !13, line: 15, baseType: !99, size: 64, offset: 64)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !87, file: !13, line: 30, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !13, line: 24, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !13, line: 22, size: 64, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !105, file: !13, line: 23, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !13, line: 20, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !13, line: 18, size: 64, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !13, line: 19, baseType: !23, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "slicing_cheat", scope: !87, file: !13, line: 31, baseType: !6, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !13, line: 11, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !13, line: 6, size: 256, elements: !118)
!118 = !{!119, !120, !122, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !117, file: !13, line: 7, baseType: !7, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !117, file: !13, line: 8, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !13, line: 9, baseType: !6, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !117, file: !13, line: 10, baseType: !121, size: 64, offset: 192)
!124 = !DILocalVariable(name: "s", arg: 1, scope: !81, file: !13, line: 68, type: !84)
!125 = !DILocation(line: 0, scope: !81)
!126 = !{!"32"}
!127 = !DILocalVariable(name: "rec", arg: 2, scope: !81, file: !13, line: 69, type: !115)
!128 = !{!"33"}
!129 = !DILocalVariable(name: "block_size", arg: 3, scope: !81, file: !13, line: 70, type: !7)
!130 = !{!"34"}
!131 = !DILocalVariable(name: "mac_size", arg: 4, scope: !81, file: !13, line: 70, type: !7)
!132 = !{!"35"}
!133 = !DILocation(line: 73, column: 60, scope: !81)
!134 = !{!"36"}
!135 = !DILocalVariable(name: "overhead", scope: !81, file: !13, line: 73, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!137 = !{!"37"}
!138 = !DILocation(line: 75, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !81, file: !13, line: 75, column: 9)
!140 = !{!"38"}
!141 = !{!"39"}
!142 = !{!"40"}
!143 = !{!"41"}
!144 = !DILocation(line: 75, column: 9, scope: !81)
!145 = !{!"42"}
!146 = !DILocation(line: 80, column: 22, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !13, line: 80, column: 13)
!148 = distinct !DILexicalBlock(scope: !139, file: !13, line: 75, column: 33)
!149 = !{!"43"}
!150 = !DILocation(line: 80, column: 42, scope: !147)
!151 = !{!"44"}
!152 = !{!"45"}
!153 = !DILocation(line: 80, column: 35, scope: !147)
!154 = !{!"46"}
!155 = !DILocation(line: 80, column: 13, scope: !148)
!156 = !{!"47"}
!157 = !DILocation(line: 81, column: 13, scope: !147)
!158 = !{!"48"}
!159 = !DILocation(line: 83, column: 14, scope: !148)
!160 = !{!"49"}
!161 = !DILocation(line: 83, column: 19, scope: !148)
!162 = !{!"50"}
!163 = !{!"PointTainted"}
!164 = !{!"51"}
!165 = !{!"52"}
!166 = !{!"53"}
!167 = !DILocation(line: 84, column: 14, scope: !148)
!168 = !{!"54"}
!169 = !DILocation(line: 84, column: 20, scope: !148)
!170 = !{!"55"}
!171 = !{!"56"}
!172 = !{!"57"}
!173 = !{!"58"}
!174 = !DILocation(line: 85, column: 14, scope: !148)
!175 = !{!"59"}
!176 = !DILocation(line: 85, column: 21, scope: !148)
!177 = !{!"60"}
!178 = !{!"61"}
!179 = !{!"62"}
!180 = !DILocation(line: 86, column: 5, scope: !148)
!181 = !{!"63"}
!182 = !DILocation(line: 86, column: 32, scope: !183)
!183 = distinct !DILexicalBlock(scope: !139, file: !13, line: 86, column: 16)
!184 = !{!"64"}
!185 = !{!"65"}
!186 = !DILocation(line: 86, column: 25, scope: !183)
!187 = !{!"66"}
!188 = !DILocation(line: 86, column: 16, scope: !139)
!189 = !{!"67"}
!190 = !DILocation(line: 87, column: 9, scope: !183)
!191 = !{!"68"}
!192 = !{!"69"}
!193 = !DILocation(line: 88, column: 27, scope: !81)
!194 = !{!"70"}
!195 = !{!"71"}
!196 = !DILocation(line: 88, column: 37, scope: !81)
!197 = !{!"72"}
!198 = !{!"73"}
!199 = !DILocation(line: 88, column: 44, scope: !81)
!200 = !{!"74"}
!201 = !DILocation(line: 88, column: 22, scope: !81)
!202 = !{!"75"}
!203 = !{!"76"}
!204 = !{!"77"}
!205 = !{!"ValueTainted"}
!206 = !{!"78"}
!207 = !DILocalVariable(name: "padding_length", scope: !81, file: !13, line: 72, type: !7)
!208 = !{!"79"}
!209 = !DILocation(line: 97, column: 13, scope: !210)
!210 = distinct !DILexicalBlock(scope: !81, file: !13, line: 97, column: 9)
!211 = !{!"80"}
!212 = !{!"81"}
!213 = !DILocation(line: 97, column: 21, scope: !210)
!214 = !{!"82"}
!215 = !{!"83"}
!216 = !DILocation(line: 97, column: 53, scope: !210)
!217 = !{!"84"}
!218 = !DILocation(line: 97, column: 60, scope: !210)
!219 = !{!"85"}
!220 = !{!"86"}
!221 = !DILocation(line: 97, column: 57, scope: !210)
!222 = !{!"87"}
!223 = !DILocation(line: 97, column: 9, scope: !81)
!224 = !{!"88"}
!225 = !DILocation(line: 98, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !13, line: 98, column: 12)
!227 = distinct !DILexicalBlock(scope: !210, file: !13, line: 97, column: 68)
!228 = !{!"89"}
!229 = !DILocation(line: 98, column: 12, scope: !227)
!230 = !{!"90"}
!231 = !{!"Tainted"}
!232 = !DILocalVariable(name: "to_check", scope: !81, file: !13, line: 72, type: !7)
!233 = !{!"91"}
!234 = !DILocation(line: 99, column: 13, scope: !226)
!235 = !{!"92"}
!236 = !DILocation(line: 101, column: 31, scope: !237)
!237 = distinct !DILexicalBlock(scope: !227, file: !13, line: 101, column: 13)
!238 = !{!"93"}
!239 = !{!"94"}
!240 = !DILocation(line: 101, column: 35, scope: !237)
!241 = !{!"95"}
!242 = !DILocation(line: 101, column: 28, scope: !237)
!243 = !{!"96"}
!244 = !{!"97"}
!245 = !DILocation(line: 101, column: 14, scope: !237)
!246 = !{!"98"}
!247 = !DILocation(line: 101, column: 73, scope: !237)
!248 = !{!"99"}
!249 = !DILocation(line: 101, column: 79, scope: !237)
!250 = !{!"100"}
!251 = !DILocation(line: 102, column: 30, scope: !237)
!252 = !{!"101"}
!253 = !{!"102"}
!254 = !DILocation(line: 101, column: 13, scope: !227)
!255 = !{!"103"}
!256 = !DILocation(line: 103, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !237, file: !13, line: 102, column: 36)
!258 = !{!"104"}
!259 = !{!"105"}
!260 = !DILocation(line: 103, column: 20, scope: !257)
!261 = !{!"106"}
!262 = !DILocation(line: 103, column: 26, scope: !257)
!263 = !{!"107"}
!264 = !{!"108"}
!265 = !{!"109"}
!266 = !DILocation(line: 104, column: 9, scope: !257)
!267 = !{!"110"}
!268 = !DILocation(line: 105, column: 17, scope: !269)
!269 = distinct !DILexicalBlock(scope: !227, file: !13, line: 105, column: 13)
!270 = !{!"111"}
!271 = !{!"112"}
!272 = !DILocation(line: 105, column: 21, scope: !269)
!273 = !{!"113"}
!274 = !{!"114"}
!275 = !DILocation(line: 105, column: 27, scope: !269)
!276 = !{!"115"}
!277 = !{!"116"}
!278 = !DILocation(line: 105, column: 57, scope: !269)
!279 = !{!"117"}
!280 = !DILocation(line: 105, column: 75, scope: !269)
!281 = !{!"118"}
!282 = !DILocation(line: 105, column: 13, scope: !227)
!283 = !{!"119"}
!284 = !DILocation(line: 106, column: 27, scope: !285)
!285 = distinct !DILexicalBlock(scope: !269, file: !13, line: 105, column: 80)
!286 = !{!"120"}
!287 = !{!"121"}
!288 = !DILocation(line: 107, column: 9, scope: !285)
!289 = !{!"122"}
!290 = !{!"123"}
!291 = !{!"124"}
!292 = !DILocation(line: 108, column: 5, scope: !227)
!293 = !{!"125"}
!294 = !{!"126"}
!295 = !{!"127"}
!296 = !DILocation(line: 109, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !81, file: !13, line: 109, column: 9)
!298 = !{!"128"}
!299 = !{!"129"}
!300 = !{!"130"}
!301 = !{!"131"}
!302 = !{!"132"}
!303 = !{!"133"}
!304 = !DILocation(line: 109, column: 51, scope: !297)
!305 = !{!"134"}
!306 = !{!"135"}
!307 = !DILocation(line: 109, column: 9, scope: !81)
!308 = !{!"136"}
!309 = !DILocation(line: 111, column: 39, scope: !310)
!310 = distinct !DILexicalBlock(scope: !297, file: !13, line: 109, column: 80)
!311 = !{!"137"}
!312 = !DILocation(line: 111, column: 14, scope: !310)
!313 = !{!"138"}
!314 = !DILocation(line: 111, column: 21, scope: !310)
!315 = !{!"139"}
!316 = !{!"140"}
!317 = !{!"141"}
!318 = !DILocation(line: 112, column: 9, scope: !310)
!319 = !{!"142"}
!320 = !DILocation(line: 114, column: 34, scope: !81)
!321 = !{!"143"}
!322 = !{!"144"}
!323 = !DILocation(line: 114, column: 51, scope: !81)
!324 = !{!"145"}
!325 = !DILocation(line: 114, column: 12, scope: !81)
!326 = !{!"146"}
!327 = !DILocalVariable(name: "good", scope: !81, file: !13, line: 72, type: !7)
!328 = !{!"147"}
!329 = !{!"148"}
!330 = !DILocation(line: 125, column: 25, scope: !331)
!331 = distinct !DILexicalBlock(scope: !81, file: !13, line: 125, column: 9)
!332 = !{!"149"}
!333 = !{!"150"}
!334 = !DILocation(line: 125, column: 32, scope: !331)
!335 = !{!"151"}
!336 = !DILocation(line: 125, column: 18, scope: !331)
!337 = !{!"152"}
!338 = !DILocation(line: 125, column: 9, scope: !81)
!339 = !{!"153"}
!340 = !DILocation(line: 126, column: 25, scope: !331)
!341 = !{!"154"}
!342 = !{!"155"}
!343 = !DILocation(line: 126, column: 32, scope: !331)
!344 = !{!"156"}
!345 = !{!"157"}
!346 = !DILocation(line: 126, column: 9, scope: !331)
!347 = !{!"158"}
!348 = !{!"159"}
!349 = !{!"160"}
!350 = !DILocalVariable(name: "i", scope: !81, file: !13, line: 72, type: !7)
!351 = !{!"161"}
!352 = !DILocation(line: 128, column: 10, scope: !353)
!353 = distinct !DILexicalBlock(scope: !81, file: !13, line: 128, column: 5)
!354 = !{!"162"}
!355 = !{!"163"}
!356 = !DILocation(line: 0, scope: !353)
!357 = !{!"164"}
!358 = !{!"165"}
!359 = !{!"166"}
!360 = !DILocation(line: 128, column: 19, scope: !361)
!361 = distinct !DILexicalBlock(scope: !353, file: !13, line: 128, column: 5)
!362 = !{!"167"}
!363 = !DILocation(line: 128, column: 5, scope: !353)
!364 = !{!"168"}
!365 = !DILocation(line: 130, column: 30, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !13, line: 128, column: 36)
!367 = !{!"169"}
!368 = !DILocalVariable(name: "mask", scope: !366, file: !13, line: 130, type: !5)
!369 = !DILocation(line: 0, scope: !366)
!370 = !{!"170"}
!371 = !DILocation(line: 131, column: 32, scope: !366)
!372 = !{!"171"}
!373 = !{!"172"}
!374 = !DILocation(line: 131, column: 42, scope: !366)
!375 = !{!"173"}
!376 = !{!"174"}
!377 = !DILocation(line: 131, column: 49, scope: !366)
!378 = !{!"175"}
!379 = !DILocation(line: 131, column: 53, scope: !366)
!380 = !{!"176"}
!381 = !DILocation(line: 131, column: 27, scope: !366)
!382 = !{!"177"}
!383 = !{!"178"}
!384 = !{!"179"}
!385 = !DILocalVariable(name: "b", scope: !366, file: !13, line: 131, type: !5)
!386 = !{!"180"}
!387 = !DILocation(line: 136, column: 19, scope: !366)
!388 = !{!"181"}
!389 = !DILocation(line: 136, column: 44, scope: !366)
!390 = !{!"182"}
!391 = !DILocation(line: 136, column: 42, scope: !366)
!392 = !{!"183"}
!393 = !DILocation(line: 136, column: 24, scope: !366)
!394 = !{!"184"}
!395 = !DILocation(line: 136, column: 17, scope: !366)
!396 = !{!"185"}
!397 = !DILocation(line: 136, column: 14, scope: !366)
!398 = !{!"186"}
!399 = !{!"187"}
!400 = !DILocation(line: 137, column: 5, scope: !366)
!401 = !{!"188"}
!402 = !DILocation(line: 128, column: 32, scope: !361)
!403 = !{!"189"}
!404 = !{!"190"}
!405 = !DILocation(line: 128, column: 5, scope: !361)
!406 = distinct !{!406, !363, !407, !75}
!407 = !DILocation(line: 137, column: 5, scope: !353)
!408 = !{!"191"}
!409 = !DILocation(line: 143, column: 40, scope: !81)
!410 = !{!"192"}
!411 = !DILocation(line: 143, column: 12, scope: !81)
!412 = !{!"193"}
!413 = !{!"194"}
!414 = !DILocation(line: 144, column: 45, scope: !81)
!415 = !{!"195"}
!416 = !DILocation(line: 144, column: 27, scope: !81)
!417 = !{!"196"}
!418 = !{!"197"}
!419 = !DILocation(line: 145, column: 10, scope: !81)
!420 = !{!"198"}
!421 = !DILocation(line: 145, column: 17, scope: !81)
!422 = !{!"199"}
!423 = !{!"200"}
!424 = !{!"201"}
!425 = !DILocation(line: 146, column: 33, scope: !81)
!426 = !{!"202"}
!427 = !DILocation(line: 146, column: 10, scope: !81)
!428 = !{!"203"}
!429 = !DILocation(line: 146, column: 15, scope: !81)
!430 = !{!"204"}
!431 = !{!"205"}
!432 = !{!"206"}
!433 = !DILocation(line: 148, column: 12, scope: !81)
!434 = !{!"207"}
!435 = !DILocation(line: 148, column: 5, scope: !81)
!436 = !{!"208"}
!437 = !{!"209"}
!438 = !DILocation(line: 149, column: 1, scope: !81)
!439 = !{!"210"}
!440 = distinct !DISubprogram(name: "constant_time_ge", scope: !441, file: !441, line: 148, type: !442, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!441 = !DIFile(filename: "./../constant_time_locl.h", directory: "/home/luwei/bech-back/OpenSSL/tls1_cbc")
!442 = !DISubroutineType(types: !443)
!443 = !{!7, !7, !7}
!444 = !DILocalVariable(name: "a", arg: 1, scope: !440, file: !441, line: 148, type: !7)
!445 = !DILocation(line: 0, scope: !440)
!446 = !{!"211"}
!447 = !DILocalVariable(name: "b", arg: 2, scope: !440, file: !441, line: 148, type: !7)
!448 = !{!"212"}
!449 = !DILocation(line: 150, column: 13, scope: !440)
!450 = !{!"213"}
!451 = !DILocation(line: 150, column: 12, scope: !440)
!452 = !{!"214"}
!453 = !DILocation(line: 150, column: 5, scope: !440)
!454 = !{!"215"}
!455 = distinct !DISubprogram(name: "constant_time_ge_8", scope: !441, file: !441, line: 153, type: !456, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!456 = !DISubroutineType(types: !457)
!457 = !{!5, !7, !7}
!458 = !DILocalVariable(name: "a", arg: 1, scope: !455, file: !441, line: 153, type: !7)
!459 = !DILocation(line: 0, scope: !455)
!460 = !{!"216"}
!461 = !DILocalVariable(name: "b", arg: 2, scope: !455, file: !441, line: 153, type: !7)
!462 = !{!"217"}
!463 = !DILocation(line: 155, column: 28, scope: !455)
!464 = !{!"218"}
!465 = !DILocation(line: 155, column: 12, scope: !455)
!466 = !{!"219"}
!467 = !DILocation(line: 155, column: 5, scope: !455)
!468 = !{!"220"}
!469 = distinct !DISubprogram(name: "constant_time_eq", scope: !441, file: !441, line: 168, type: !442, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!470 = !DILocalVariable(name: "a", arg: 1, scope: !469, file: !441, line: 168, type: !7)
!471 = !DILocation(line: 0, scope: !469)
!472 = !{!"221"}
!473 = !DILocalVariable(name: "b", arg: 2, scope: !469, file: !441, line: 168, type: !7)
!474 = !{!"222"}
!475 = !DILocation(line: 170, column: 36, scope: !469)
!476 = !{!"223"}
!477 = !DILocation(line: 170, column: 12, scope: !469)
!478 = !{!"224"}
!479 = !DILocation(line: 170, column: 5, scope: !469)
!480 = !{!"225"}
!481 = distinct !DISubprogram(name: "constant_time_select_int", scope: !441, file: !441, line: 202, type: !482, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!482 = !DISubroutineType(types: !483)
!483 = !{!6, !7, !6, !6}
!484 = !DILocalVariable(name: "mask", arg: 1, scope: !481, file: !441, line: 202, type: !7)
!485 = !DILocation(line: 0, scope: !481)
!486 = !{!"226"}
!487 = !DILocalVariable(name: "a", arg: 2, scope: !481, file: !441, line: 202, type: !6)
!488 = !{!"227"}
!489 = !DILocalVariable(name: "b", arg: 3, scope: !481, file: !441, line: 202, type: !6)
!490 = !{!"228"}
!491 = !DILocation(line: 204, column: 18, scope: !481)
!492 = !{!"229"}
!493 = !DILocation(line: 204, column: 5, scope: !481)
!494 = !{!"230"}
!495 = distinct !DISubprogram(name: "remove_padding_wrapper", scope: !2, file: !2, line: 7, type: !496, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!496 = !DISubroutineType(types: !497)
!497 = !{!6, !23, !97, !121, !23, !6, !121, !7, !7, !7}
!498 = !{!"231"}
!499 = !{!"232"}
!500 = !{!"233"}
!501 = !{!"234"}
!502 = !{!"235"}
!503 = !{!"236"}
!504 = !DILocalVariable(name: "options", arg: 1, scope: !495, file: !2, line: 7, type: !23)
!505 = !DILocation(line: 0, scope: !495)
!506 = !{!"237"}
!507 = !DILocalVariable(name: "s3_flags", arg: 2, scope: !495, file: !2, line: 8, type: !97)
!508 = !{!"238"}
!509 = !DILocalVariable(name: "s3_read_sequence", arg: 3, scope: !495, file: !2, line: 9, type: !121)
!510 = !{!"239"}
!511 = !DILocalVariable(name: "flags", arg: 4, scope: !495, file: !2, line: 10, type: !23)
!512 = !{!"240"}
!513 = !DILocalVariable(name: "slicing_cheat", arg: 5, scope: !495, file: !2, line: 11, type: !6)
!514 = !{!"241"}
!515 = !DILocalVariable(name: "data", arg: 6, scope: !495, file: !2, line: 12, type: !121)
!516 = !{!"242"}
!517 = !DILocalVariable(name: "length", arg: 7, scope: !495, file: !2, line: 13, type: !7)
!518 = !{!"243"}
!519 = !DILocalVariable(name: "block_size", arg: 8, scope: !495, file: !2, line: 14, type: !7)
!520 = !{!"244"}
!521 = !DILocalVariable(name: "mac_size", arg: 9, scope: !495, file: !2, line: 15, type: !7)
!522 = !{!"245"}
!523 = !DILocation(line: 18, column: 13, scope: !495)
!524 = !{!"246"}
!525 = !DILocation(line: 18, column: 3, scope: !495)
!526 = !{!"247"}
!527 = !DILocation(line: 19, column: 13, scope: !495)
!528 = !{!"248"}
!529 = !DILocation(line: 19, column: 3, scope: !495)
!530 = !{!"249"}
!531 = !DILocation(line: 22, column: 13, scope: !495)
!532 = !{!"250"}
!533 = !DILocation(line: 22, column: 3, scope: !495)
!534 = !{!"251"}
!535 = !DILocation(line: 23, column: 13, scope: !495)
!536 = !{!"252"}
!537 = !DILocation(line: 23, column: 3, scope: !495)
!538 = !{!"253"}
!539 = !DILocation(line: 24, column: 13, scope: !495)
!540 = !{!"254"}
!541 = !DILocation(line: 24, column: 3, scope: !495)
!542 = !{!"255"}
!543 = !DILocation(line: 25, column: 13, scope: !495)
!544 = !{!"256"}
!545 = !DILocation(line: 25, column: 3, scope: !495)
!546 = !{!"257"}
!547 = !DILocation(line: 26, column: 13, scope: !495)
!548 = !{!"258"}
!549 = !DILocation(line: 26, column: 3, scope: !495)
!550 = !{!"259"}
!551 = !DILocation(line: 27, column: 13, scope: !495)
!552 = !{!"260"}
!553 = !DILocation(line: 27, column: 3, scope: !495)
!554 = !{!"261"}
!555 = !DILocation(line: 28, column: 13, scope: !495)
!556 = !{!"262"}
!557 = !DILocation(line: 28, column: 3, scope: !495)
!558 = !{!"263"}
!559 = !DILocalVariable(name: "s3_obj", scope: !495, file: !2, line: 30, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_STATE", file: !13, line: 16, baseType: !94)
!561 = !DILocation(line: 30, column: 14, scope: !495)
!562 = !{!"264"}
!563 = !DILocation(line: 30, column: 23, scope: !495)
!564 = !{!"265"}
!565 = !{!"266"}
!566 = !{!"267"}
!567 = !{!"268"}
!568 = !{!"269"}
!569 = !DILocalVariable(name: "cipher", scope: !495, file: !2, line: 32, type: !110)
!570 = !DILocation(line: 32, column: 14, scope: !495)
!571 = !{!"270"}
!572 = !DILocation(line: 32, column: 23, scope: !495)
!573 = !{!"271"}
!574 = !{!"272"}
!575 = !DILocalVariable(name: "cipher_ctx", scope: !495, file: !2, line: 33, type: !104)
!576 = !DILocation(line: 33, column: 18, scope: !495)
!577 = !{!"273"}
!578 = !DILocation(line: 33, column: 31, scope: !495)
!579 = !{!"274"}
!580 = !{!"275"}
!581 = !DILocalVariable(name: "dummy_expand", scope: !495, file: !2, line: 34, type: !20)
!582 = !DILocation(line: 34, column: 8, scope: !495)
!583 = !{!"276"}
!584 = !DILocalVariable(name: "s_obj", scope: !495, file: !2, line: 36, type: !86)
!585 = !DILocation(line: 36, column: 7, scope: !495)
!586 = !{!"277"}
!587 = !DILocation(line: 36, column: 15, scope: !495)
!588 = !{!"278"}
!589 = !{!"279"}
!590 = !{!"280"}
!591 = !{!"281"}
!592 = !{!"282"}
!593 = !{!"283"}
!594 = !{!"284"}
!595 = !{!"285"}
!596 = !{!"286"}
!597 = !{!"287"}
!598 = !DILocalVariable(name: "s", scope: !495, file: !2, line: 37, type: !84)
!599 = !{!"288"}
!600 = !DILocalVariable(name: "rec_obj", scope: !495, file: !2, line: 40, type: !116)
!601 = !DILocation(line: 40, column: 15, scope: !495)
!602 = !{!"289"}
!603 = !DILocation(line: 40, column: 25, scope: !495)
!604 = !{!"290"}
!605 = !{!"291"}
!606 = !{!"292"}
!607 = !{!"293"}
!608 = !{!"294"}
!609 = !{!"295"}
!610 = !{!"296"}
!611 = !{!"297"}
!612 = !DILocalVariable(name: "rec", scope: !495, file: !2, line: 41, type: !115)
!613 = !{!"298"}
!614 = !DILocation(line: 43, column: 10, scope: !495)
!615 = !{!"299"}
!616 = !DILocation(line: 43, column: 3, scope: !495)
!617 = !{!"300"}
!618 = distinct !DISubprogram(name: "tmp", scope: !2, file: !2, line: 49, type: !496, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!619 = !{!"301"}
!620 = !{!"302"}
!621 = !{!"303"}
!622 = !{!"304"}
!623 = !{!"305"}
!624 = !{!"306"}
!625 = !DILocalVariable(name: "options", arg: 1, scope: !618, file: !2, line: 49, type: !23)
!626 = !DILocation(line: 0, scope: !618)
!627 = !{!"307"}
!628 = !DILocalVariable(name: "s3_flags", arg: 2, scope: !618, file: !2, line: 50, type: !97)
!629 = !{!"308"}
!630 = !DILocalVariable(name: "s3_read_sequence", arg: 3, scope: !618, file: !2, line: 51, type: !121)
!631 = !{!"309"}
!632 = !DILocalVariable(name: "flags", arg: 4, scope: !618, file: !2, line: 52, type: !23)
!633 = !{!"310"}
!634 = !DILocalVariable(name: "slicing_cheat", arg: 5, scope: !618, file: !2, line: 53, type: !6)
!635 = !{!"311"}
!636 = !DILocalVariable(name: "data", arg: 6, scope: !618, file: !2, line: 54, type: !121)
!637 = !{!"312"}
!638 = !DILocalVariable(name: "length", arg: 7, scope: !618, file: !2, line: 55, type: !7)
!639 = !{!"313"}
!640 = !DILocalVariable(name: "block_size", arg: 8, scope: !618, file: !2, line: 56, type: !7)
!641 = !{!"314"}
!642 = !DILocalVariable(name: "mac_size", arg: 9, scope: !618, file: !2, line: 57, type: !7)
!643 = !{!"315"}
!644 = !DILocalVariable(name: "s3_obj", scope: !618, file: !2, line: 59, type: !560)
!645 = !DILocation(line: 59, column: 14, scope: !618)
!646 = !{!"316"}
!647 = !DILocation(line: 59, column: 23, scope: !618)
!648 = !{!"317"}
!649 = !{!"318"}
!650 = !{!"319"}
!651 = !{!"320"}
!652 = !{!"321"}
!653 = !DILocalVariable(name: "cipher", scope: !618, file: !2, line: 61, type: !110)
!654 = !DILocation(line: 61, column: 14, scope: !618)
!655 = !{!"322"}
!656 = !DILocation(line: 61, column: 23, scope: !618)
!657 = !{!"323"}
!658 = !{!"324"}
!659 = !DILocalVariable(name: "cipher_ctx", scope: !618, file: !2, line: 62, type: !104)
!660 = !DILocation(line: 62, column: 18, scope: !618)
!661 = !{!"325"}
!662 = !DILocation(line: 62, column: 31, scope: !618)
!663 = !{!"326"}
!664 = !{!"327"}
!665 = !DILocalVariable(name: "dummy_expand", scope: !618, file: !2, line: 63, type: !20)
!666 = !DILocation(line: 63, column: 8, scope: !618)
!667 = !{!"328"}
!668 = !DILocalVariable(name: "s_obj", scope: !618, file: !2, line: 65, type: !86)
!669 = !DILocation(line: 65, column: 7, scope: !618)
!670 = !{!"329"}
!671 = !DILocation(line: 65, column: 15, scope: !618)
!672 = !{!"330"}
!673 = !{!"331"}
!674 = !{!"332"}
!675 = !{!"333"}
!676 = !{!"334"}
!677 = !{!"335"}
!678 = !{!"336"}
!679 = !{!"337"}
!680 = !{!"338"}
!681 = !{!"339"}
!682 = !DILocalVariable(name: "s", scope: !618, file: !2, line: 66, type: !84)
!683 = !{!"340"}
!684 = !DILocalVariable(name: "rec_obj", scope: !618, file: !2, line: 69, type: !116)
!685 = !DILocation(line: 69, column: 15, scope: !618)
!686 = !{!"341"}
!687 = !DILocation(line: 69, column: 25, scope: !618)
!688 = !{!"342"}
!689 = !{!"343"}
!690 = !{!"344"}
!691 = !{!"345"}
!692 = !{!"346"}
!693 = !{!"347"}
!694 = !{!"348"}
!695 = !{!"349"}
!696 = !DILocalVariable(name: "rec", scope: !618, file: !2, line: 70, type: !115)
!697 = !{!"350"}
!698 = !DILocation(line: 72, column: 10, scope: !618)
!699 = !{!"351"}
!700 = !DILocation(line: 72, column: 3, scope: !618)
!701 = !{!"352"}
!702 = distinct !DISubprogram(name: "remove_padding_wrapper_t", scope: !2, file: !2, line: 78, type: !703, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!703 = !DISubroutineType(types: !704)
!704 = !{!6}
!705 = !DILocalVariable(name: "options", scope: !702, file: !2, line: 80, type: !23)
!706 = !DILocation(line: 0, scope: !702)
!707 = !{!"353"}
!708 = !DILocalVariable(name: "s3_flags", scope: !702, file: !2, line: 81, type: !97)
!709 = !{!"354"}
!710 = !DILocation(line: 82, column: 71, scope: !702)
!711 = !{!"355"}
!712 = !DILocalVariable(name: "s3_read_sequence", scope: !702, file: !2, line: 82, type: !121)
!713 = !{!"356"}
!714 = !DILocalVariable(name: "flags", scope: !702, file: !2, line: 83, type: !23)
!715 = !{!"357"}
!716 = !DILocalVariable(name: "slicing_cheat", scope: !702, file: !2, line: 84, type: !6)
!717 = !{!"358"}
!718 = !DILocation(line: 85, column: 59, scope: !702)
!719 = !{!"359"}
!720 = !DILocalVariable(name: "data", scope: !702, file: !2, line: 85, type: !121)
!721 = !{!"360"}
!722 = !DILocalVariable(name: "length", scope: !702, file: !2, line: 86, type: !7)
!723 = !{!"361"}
!724 = !DILocalVariable(name: "block_size", scope: !702, file: !2, line: 87, type: !7)
!725 = !{!"362"}
!726 = !DILocalVariable(name: "mac_size", scope: !702, file: !2, line: 88, type: !7)
!727 = !{!"363"}
!728 = !DILocation(line: 91, column: 10, scope: !702)
!729 = !{!"364"}
!730 = !DILocation(line: 91, column: 3, scope: !702)
!731 = !{!"365"}
!732 = distinct !DISubprogram(name: "constant_time_lt", scope: !441, file: !441, line: 138, type: !442, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!733 = !DILocalVariable(name: "a", arg: 1, scope: !732, file: !441, line: 138, type: !7)
!734 = !DILocation(line: 0, scope: !732)
!735 = !{!"366"}
!736 = !DILocalVariable(name: "b", arg: 2, scope: !732, file: !441, line: 138, type: !7)
!737 = !{!"367"}
!738 = !DILocation(line: 140, column: 38, scope: !732)
!739 = !{!"368"}
!740 = !DILocation(line: 140, column: 49, scope: !732)
!741 = !{!"369"}
!742 = !DILocation(line: 140, column: 54, scope: !732)
!743 = !{!"370"}
!744 = !DILocation(line: 140, column: 43, scope: !732)
!745 = !{!"371"}
!746 = !DILocation(line: 140, column: 32, scope: !732)
!747 = !{!"372"}
!748 = !DILocation(line: 140, column: 12, scope: !732)
!749 = !{!"373"}
!750 = !DILocation(line: 140, column: 5, scope: !732)
!751 = !{!"374"}
!752 = distinct !DISubprogram(name: "constant_time_msb", scope: !441, file: !441, line: 133, type: !753, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!753 = !DISubroutineType(types: !754)
!754 = !{!7, !7}
!755 = !DILocalVariable(name: "a", arg: 1, scope: !752, file: !441, line: 133, type: !7)
!756 = !DILocation(line: 0, scope: !752)
!757 = !{!"375"}
!758 = !DILocation(line: 135, column: 19, scope: !752)
!759 = !{!"376"}
!760 = !DILocation(line: 135, column: 14, scope: !752)
!761 = !{!"377"}
!762 = !DILocation(line: 135, column: 5, scope: !752)
!763 = !{!"378"}
!764 = distinct !DISubprogram(name: "constant_time_is_zero", scope: !441, file: !441, line: 158, type: !753, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!765 = !DILocalVariable(name: "a", arg: 1, scope: !764, file: !441, line: 158, type: !7)
!766 = !DILocation(line: 0, scope: !764)
!767 = !{!"379"}
!768 = !DILocation(line: 160, column: 30, scope: !764)
!769 = !{!"380"}
!770 = !DILocation(line: 160, column: 38, scope: !764)
!771 = !{!"381"}
!772 = !DILocation(line: 160, column: 33, scope: !764)
!773 = !{!"382"}
!774 = !DILocation(line: 160, column: 12, scope: !764)
!775 = !{!"383"}
!776 = !DILocation(line: 160, column: 5, scope: !764)
!777 = !{!"384"}
!778 = distinct !DISubprogram(name: "constant_time_select", scope: !441, file: !441, line: 188, type: !779, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!779 = !DISubroutineType(types: !780)
!780 = !{!7, !7, !7, !7}
!781 = !DILocalVariable(name: "mask", arg: 1, scope: !778, file: !441, line: 188, type: !7)
!782 = !DILocation(line: 0, scope: !778)
!783 = !{!"385"}
!784 = !DILocalVariable(name: "a", arg: 2, scope: !778, file: !441, line: 189, type: !7)
!785 = !{!"386"}
!786 = !DILocalVariable(name: "b", arg: 3, scope: !778, file: !441, line: 190, type: !7)
!787 = !{!"387"}
!788 = !DILocation(line: 192, column: 18, scope: !778)
!789 = !{!"388"}
!790 = !DILocation(line: 192, column: 26, scope: !778)
!791 = !{!"389"}
!792 = !DILocation(line: 192, column: 32, scope: !778)
!793 = !{!"390"}
!794 = !DILocation(line: 192, column: 23, scope: !778)
!795 = !{!"391"}
!796 = !DILocation(line: 192, column: 5, scope: !778)
!797 = !{!"392"}
