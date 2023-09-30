; ModuleID = 'Hacl_Curve25519_51_secret_to_public.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@g25519 = internal constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_51_fsquare_times(i64* %0, i64* %1, i128* %2, i32 %3) #0 !dbg !32 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i64* %1, metadata !39, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i128* %2, metadata !40, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 %3, metadata !41, metadata !DIExpression()), !dbg !38
  call void @Hacl_Impl_Curve25519_Field51_fsqr(i64* %0, i64* %1, i128* %2), !dbg !42
  call void @llvm.dbg.value(metadata i32 0, metadata !43, metadata !DIExpression()), !dbg !45
  br label %5, !dbg !46

5:                                                ; preds = %9, %4
  %.0 = phi i32 [ 0, %4 ], [ %10, %9 ], !dbg !45
  call void @llvm.dbg.value(metadata i32 %.0, metadata !43, metadata !DIExpression()), !dbg !45
  %6 = sub i32 %3, 1, !dbg !47
  %7 = icmp ult i32 %.0, %6, !dbg !49
  br i1 %7, label %8, label %11, !dbg !50

8:                                                ; preds = %5
  call void @Hacl_Impl_Curve25519_Field51_fsqr(i64* %0, i64* %0, i128* %2), !dbg !51
  br label %9, !dbg !53

9:                                                ; preds = %8
  %10 = add i32 %.0, 1, !dbg !54
  call void @llvm.dbg.value(metadata i32 %10, metadata !43, metadata !DIExpression()), !dbg !45
  br label %5, !dbg !55, !llvm.loop !56

11:                                               ; preds = %5
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fsqr(i64* %0, i64* %1, i128* %2) #0 !dbg !60 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = alloca i128, align 16
  %21 = alloca i128, align 16
  %22 = alloca i128, align 16
  %23 = alloca i128, align 16
  %24 = alloca i128, align 16
  %25 = alloca i128, align 16
  %26 = alloca i128, align 16
  %27 = alloca i128, align 16
  %28 = alloca i128, align 16
  %29 = alloca i128, align 16
  %30 = alloca i128, align 16
  %31 = alloca i128, align 16
  %32 = alloca i128, align 16
  %33 = alloca i128, align 16
  %34 = alloca i128, align 16
  %35 = alloca i128, align 16
  %36 = alloca i128, align 16
  %37 = alloca i128, align 16
  %38 = alloca i128, align 16
  %39 = alloca i128, align 16
  %40 = alloca i128, align 16
  %41 = alloca i128, align 16
  %42 = alloca i128, align 16
  %43 = alloca i128, align 16
  %44 = alloca i128, align 16
  %45 = alloca i128, align 16
  %46 = alloca i128, align 16
  %47 = alloca i128, align 16
  %48 = alloca i128, align 16
  %49 = alloca i128, align 16
  %50 = alloca i128, align 16
  %51 = alloca i128, align 16
  %52 = alloca i128, align 16
  %53 = alloca i128, align 16
  %54 = alloca i128, align 16
  %55 = alloca i128, align 16
  %56 = alloca i128, align 16
  %57 = alloca i128, align 16
  %58 = alloca i128, align 16
  %59 = alloca i128, align 16
  %60 = alloca i128, align 16
  %61 = alloca i128, align 16
  %62 = alloca i128, align 16
  %63 = alloca i128, align 16
  %64 = alloca i128, align 16
  %65 = alloca i128, align 16
  %66 = alloca i128, align 16
  %67 = alloca i128, align 16
  %68 = alloca i128, align 16
  %69 = alloca i128, align 16
  %70 = alloca i128, align 16
  %71 = alloca i128, align 16
  %72 = alloca i128, align 16
  %73 = alloca i128, align 16
  %74 = alloca i128, align 16
  %75 = alloca i128, align 16
  %76 = alloca i128, align 16
  %77 = alloca i128, align 16
  %78 = alloca i128, align 16
  %79 = alloca i128, align 16
  %80 = alloca i128, align 16
  %81 = alloca i128, align 16
  %82 = alloca i128, align 16
  %83 = alloca i128, align 16
  %84 = alloca i128, align 16
  %85 = alloca i128, align 16
  %86 = alloca i128, align 16
  %87 = alloca i128, align 16
  %88 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64* %1, metadata !66, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i128* %2, metadata !67, metadata !DIExpression()), !dbg !65
  %89 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !68
  %90 = load i64, i64* %89, align 8, !dbg !68
  call void @llvm.dbg.value(metadata i64 %90, metadata !69, metadata !DIExpression()), !dbg !65
  %91 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !70
  %92 = load i64, i64* %91, align 8, !dbg !70
  call void @llvm.dbg.value(metadata i64 %92, metadata !71, metadata !DIExpression()), !dbg !65
  %93 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !72
  %94 = load i64, i64* %93, align 8, !dbg !72
  call void @llvm.dbg.value(metadata i64 %94, metadata !73, metadata !DIExpression()), !dbg !65
  %95 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !74
  %96 = load i64, i64* %95, align 8, !dbg !74
  call void @llvm.dbg.value(metadata i64 %96, metadata !75, metadata !DIExpression()), !dbg !65
  %97 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !76
  %98 = load i64, i64* %97, align 8, !dbg !76
  call void @llvm.dbg.value(metadata i64 %98, metadata !77, metadata !DIExpression()), !dbg !65
  %99 = mul i64 2, %90, !dbg !78
  call void @llvm.dbg.value(metadata i64 %99, metadata !79, metadata !DIExpression()), !dbg !65
  %100 = mul i64 2, %92, !dbg !80
  call void @llvm.dbg.value(metadata i64 %100, metadata !81, metadata !DIExpression()), !dbg !65
  %101 = mul i64 38, %94, !dbg !82
  call void @llvm.dbg.value(metadata i64 %101, metadata !83, metadata !DIExpression()), !dbg !65
  %102 = mul i64 19, %96, !dbg !84
  call void @llvm.dbg.value(metadata i64 %102, metadata !85, metadata !DIExpression()), !dbg !65
  %103 = mul i64 19, %98, !dbg !86
  call void @llvm.dbg.value(metadata i64 %103, metadata !87, metadata !DIExpression()), !dbg !65
  %104 = mul i64 2, %103, !dbg !88
  call void @llvm.dbg.value(metadata i64 %104, metadata !89, metadata !DIExpression()), !dbg !65
  %105 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %90, i64 %90), !dbg !90
  %106 = bitcast i128* %4 to { i64, i64 }*, !dbg !90
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0, !dbg !90
  %108 = extractvalue { i64, i64 } %105, 0, !dbg !90
  store i64 %108, i64* %107, align 16, !dbg !90
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1, !dbg !90
  %110 = extractvalue { i64, i64 } %105, 1, !dbg !90
  store i64 %110, i64* %109, align 8, !dbg !90
  %111 = load i128, i128* %4, align 16, !dbg !90
  %112 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %104, i64 %92), !dbg !91
  %113 = bitcast i128* %5 to { i64, i64 }*, !dbg !91
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 0, !dbg !91
  %115 = extractvalue { i64, i64 } %112, 0, !dbg !91
  store i64 %115, i64* %114, align 16, !dbg !91
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 1, !dbg !91
  %117 = extractvalue { i64, i64 } %112, 1, !dbg !91
  store i64 %117, i64* %116, align 8, !dbg !91
  %118 = load i128, i128* %5, align 16, !dbg !91
  store i128 %111, i128* %6, align 16, !dbg !92
  %119 = bitcast i128* %6 to { i64, i64 }*, !dbg !92
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 0, !dbg !92
  %121 = load i64, i64* %120, align 16, !dbg !92
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 1, !dbg !92
  %123 = load i64, i64* %122, align 8, !dbg !92
  store i128 %118, i128* %7, align 16, !dbg !92
  %124 = bitcast i128* %7 to { i64, i64 }*, !dbg !92
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %124, i32 0, i32 0, !dbg !92
  %126 = load i64, i64* %125, align 16, !dbg !92
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %124, i32 0, i32 1, !dbg !92
  %128 = load i64, i64* %127, align 8, !dbg !92
  %129 = call { i64, i64 } @FStar_UInt128_add(i64 %121, i64 %123, i64 %126, i64 %128), !dbg !92
  %130 = bitcast i128* %8 to { i64, i64 }*, !dbg !92
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 0, !dbg !92
  %132 = extractvalue { i64, i64 } %129, 0, !dbg !92
  store i64 %132, i64* %131, align 16, !dbg !92
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 1, !dbg !92
  %134 = extractvalue { i64, i64 } %129, 1, !dbg !92
  store i64 %134, i64* %133, align 8, !dbg !92
  %135 = load i128, i128* %8, align 16, !dbg !92
  %136 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %101, i64 %96), !dbg !93
  %137 = bitcast i128* %9 to { i64, i64 }*, !dbg !93
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0, !dbg !93
  %139 = extractvalue { i64, i64 } %136, 0, !dbg !93
  store i64 %139, i64* %138, align 16, !dbg !93
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1, !dbg !93
  %141 = extractvalue { i64, i64 } %136, 1, !dbg !93
  store i64 %141, i64* %140, align 8, !dbg !93
  %142 = load i128, i128* %9, align 16, !dbg !93
  store i128 %135, i128* %10, align 16, !dbg !94
  %143 = bitcast i128* %10 to { i64, i64 }*, !dbg !94
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 0, !dbg !94
  %145 = load i64, i64* %144, align 16, !dbg !94
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 1, !dbg !94
  %147 = load i64, i64* %146, align 8, !dbg !94
  store i128 %142, i128* %11, align 16, !dbg !94
  %148 = bitcast i128* %11 to { i64, i64 }*, !dbg !94
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 0, !dbg !94
  %150 = load i64, i64* %149, align 16, !dbg !94
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 1, !dbg !94
  %152 = load i64, i64* %151, align 8, !dbg !94
  %153 = call { i64, i64 } @FStar_UInt128_add(i64 %145, i64 %147, i64 %150, i64 %152), !dbg !94
  %154 = bitcast i128* %12 to { i64, i64 }*, !dbg !94
  %155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %154, i32 0, i32 0, !dbg !94
  %156 = extractvalue { i64, i64 } %153, 0, !dbg !94
  store i64 %156, i64* %155, align 16, !dbg !94
  %157 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %154, i32 0, i32 1, !dbg !94
  %158 = extractvalue { i64, i64 } %153, 1, !dbg !94
  store i64 %158, i64* %157, align 8, !dbg !94
  %159 = load i128, i128* %12, align 16, !dbg !94
  call void @llvm.dbg.value(metadata i128 %159, metadata !95, metadata !DIExpression()), !dbg !65
  %160 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %99, i64 %92), !dbg !96
  %161 = bitcast i128* %13 to { i64, i64 }*, !dbg !96
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 0, !dbg !96
  %163 = extractvalue { i64, i64 } %160, 0, !dbg !96
  store i64 %163, i64* %162, align 16, !dbg !96
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 1, !dbg !96
  %165 = extractvalue { i64, i64 } %160, 1, !dbg !96
  store i64 %165, i64* %164, align 8, !dbg !96
  %166 = load i128, i128* %13, align 16, !dbg !96
  %167 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %104, i64 %94), !dbg !97
  %168 = bitcast i128* %14 to { i64, i64 }*, !dbg !97
  %169 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %168, i32 0, i32 0, !dbg !97
  %170 = extractvalue { i64, i64 } %167, 0, !dbg !97
  store i64 %170, i64* %169, align 16, !dbg !97
  %171 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %168, i32 0, i32 1, !dbg !97
  %172 = extractvalue { i64, i64 } %167, 1, !dbg !97
  store i64 %172, i64* %171, align 8, !dbg !97
  %173 = load i128, i128* %14, align 16, !dbg !97
  store i128 %166, i128* %15, align 16, !dbg !98
  %174 = bitcast i128* %15 to { i64, i64 }*, !dbg !98
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 0, !dbg !98
  %176 = load i64, i64* %175, align 16, !dbg !98
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 1, !dbg !98
  %178 = load i64, i64* %177, align 8, !dbg !98
  store i128 %173, i128* %16, align 16, !dbg !98
  %179 = bitcast i128* %16 to { i64, i64 }*, !dbg !98
  %180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %179, i32 0, i32 0, !dbg !98
  %181 = load i64, i64* %180, align 16, !dbg !98
  %182 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %179, i32 0, i32 1, !dbg !98
  %183 = load i64, i64* %182, align 8, !dbg !98
  %184 = call { i64, i64 } @FStar_UInt128_add(i64 %176, i64 %178, i64 %181, i64 %183), !dbg !98
  %185 = bitcast i128* %17 to { i64, i64 }*, !dbg !98
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0, !dbg !98
  %187 = extractvalue { i64, i64 } %184, 0, !dbg !98
  store i64 %187, i64* %186, align 16, !dbg !98
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1, !dbg !98
  %189 = extractvalue { i64, i64 } %184, 1, !dbg !98
  store i64 %189, i64* %188, align 8, !dbg !98
  %190 = load i128, i128* %17, align 16, !dbg !98
  %191 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %102, i64 %96), !dbg !99
  %192 = bitcast i128* %18 to { i64, i64 }*, !dbg !99
  %193 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %192, i32 0, i32 0, !dbg !99
  %194 = extractvalue { i64, i64 } %191, 0, !dbg !99
  store i64 %194, i64* %193, align 16, !dbg !99
  %195 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %192, i32 0, i32 1, !dbg !99
  %196 = extractvalue { i64, i64 } %191, 1, !dbg !99
  store i64 %196, i64* %195, align 8, !dbg !99
  %197 = load i128, i128* %18, align 16, !dbg !99
  store i128 %190, i128* %19, align 16, !dbg !100
  %198 = bitcast i128* %19 to { i64, i64 }*, !dbg !100
  %199 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %198, i32 0, i32 0, !dbg !100
  %200 = load i64, i64* %199, align 16, !dbg !100
  %201 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %198, i32 0, i32 1, !dbg !100
  %202 = load i64, i64* %201, align 8, !dbg !100
  store i128 %197, i128* %20, align 16, !dbg !100
  %203 = bitcast i128* %20 to { i64, i64 }*, !dbg !100
  %204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %203, i32 0, i32 0, !dbg !100
  %205 = load i64, i64* %204, align 16, !dbg !100
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %203, i32 0, i32 1, !dbg !100
  %207 = load i64, i64* %206, align 8, !dbg !100
  %208 = call { i64, i64 } @FStar_UInt128_add(i64 %200, i64 %202, i64 %205, i64 %207), !dbg !100
  %209 = bitcast i128* %21 to { i64, i64 }*, !dbg !100
  %210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %209, i32 0, i32 0, !dbg !100
  %211 = extractvalue { i64, i64 } %208, 0, !dbg !100
  store i64 %211, i64* %210, align 16, !dbg !100
  %212 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %209, i32 0, i32 1, !dbg !100
  %213 = extractvalue { i64, i64 } %208, 1, !dbg !100
  store i64 %213, i64* %212, align 8, !dbg !100
  %214 = load i128, i128* %21, align 16, !dbg !100
  call void @llvm.dbg.value(metadata i128 %214, metadata !101, metadata !DIExpression()), !dbg !65
  %215 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %99, i64 %94), !dbg !102
  %216 = bitcast i128* %22 to { i64, i64 }*, !dbg !102
  %217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %216, i32 0, i32 0, !dbg !102
  %218 = extractvalue { i64, i64 } %215, 0, !dbg !102
  store i64 %218, i64* %217, align 16, !dbg !102
  %219 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %216, i32 0, i32 1, !dbg !102
  %220 = extractvalue { i64, i64 } %215, 1, !dbg !102
  store i64 %220, i64* %219, align 8, !dbg !102
  %221 = load i128, i128* %22, align 16, !dbg !102
  %222 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %92, i64 %92), !dbg !103
  %223 = bitcast i128* %23 to { i64, i64 }*, !dbg !103
  %224 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %223, i32 0, i32 0, !dbg !103
  %225 = extractvalue { i64, i64 } %222, 0, !dbg !103
  store i64 %225, i64* %224, align 16, !dbg !103
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %223, i32 0, i32 1, !dbg !103
  %227 = extractvalue { i64, i64 } %222, 1, !dbg !103
  store i64 %227, i64* %226, align 8, !dbg !103
  %228 = load i128, i128* %23, align 16, !dbg !103
  store i128 %221, i128* %24, align 16, !dbg !104
  %229 = bitcast i128* %24 to { i64, i64 }*, !dbg !104
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %229, i32 0, i32 0, !dbg !104
  %231 = load i64, i64* %230, align 16, !dbg !104
  %232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %229, i32 0, i32 1, !dbg !104
  %233 = load i64, i64* %232, align 8, !dbg !104
  store i128 %228, i128* %25, align 16, !dbg !104
  %234 = bitcast i128* %25 to { i64, i64 }*, !dbg !104
  %235 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %234, i32 0, i32 0, !dbg !104
  %236 = load i64, i64* %235, align 16, !dbg !104
  %237 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %234, i32 0, i32 1, !dbg !104
  %238 = load i64, i64* %237, align 8, !dbg !104
  %239 = call { i64, i64 } @FStar_UInt128_add(i64 %231, i64 %233, i64 %236, i64 %238), !dbg !104
  %240 = bitcast i128* %26 to { i64, i64 }*, !dbg !104
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %240, i32 0, i32 0, !dbg !104
  %242 = extractvalue { i64, i64 } %239, 0, !dbg !104
  store i64 %242, i64* %241, align 16, !dbg !104
  %243 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %240, i32 0, i32 1, !dbg !104
  %244 = extractvalue { i64, i64 } %239, 1, !dbg !104
  store i64 %244, i64* %243, align 8, !dbg !104
  %245 = load i128, i128* %26, align 16, !dbg !104
  %246 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %104, i64 %96), !dbg !105
  %247 = bitcast i128* %27 to { i64, i64 }*, !dbg !105
  %248 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %247, i32 0, i32 0, !dbg !105
  %249 = extractvalue { i64, i64 } %246, 0, !dbg !105
  store i64 %249, i64* %248, align 16, !dbg !105
  %250 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %247, i32 0, i32 1, !dbg !105
  %251 = extractvalue { i64, i64 } %246, 1, !dbg !105
  store i64 %251, i64* %250, align 8, !dbg !105
  %252 = load i128, i128* %27, align 16, !dbg !105
  store i128 %245, i128* %28, align 16, !dbg !106
  %253 = bitcast i128* %28 to { i64, i64 }*, !dbg !106
  %254 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 0, !dbg !106
  %255 = load i64, i64* %254, align 16, !dbg !106
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 1, !dbg !106
  %257 = load i64, i64* %256, align 8, !dbg !106
  store i128 %252, i128* %29, align 16, !dbg !106
  %258 = bitcast i128* %29 to { i64, i64 }*, !dbg !106
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0, !dbg !106
  %260 = load i64, i64* %259, align 16, !dbg !106
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1, !dbg !106
  %262 = load i64, i64* %261, align 8, !dbg !106
  %263 = call { i64, i64 } @FStar_UInt128_add(i64 %255, i64 %257, i64 %260, i64 %262), !dbg !106
  %264 = bitcast i128* %30 to { i64, i64 }*, !dbg !106
  %265 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %264, i32 0, i32 0, !dbg !106
  %266 = extractvalue { i64, i64 } %263, 0, !dbg !106
  store i64 %266, i64* %265, align 16, !dbg !106
  %267 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %264, i32 0, i32 1, !dbg !106
  %268 = extractvalue { i64, i64 } %263, 1, !dbg !106
  store i64 %268, i64* %267, align 8, !dbg !106
  %269 = load i128, i128* %30, align 16, !dbg !106
  call void @llvm.dbg.value(metadata i128 %269, metadata !107, metadata !DIExpression()), !dbg !65
  %270 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %99, i64 %96), !dbg !108
  %271 = bitcast i128* %31 to { i64, i64 }*, !dbg !108
  %272 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %271, i32 0, i32 0, !dbg !108
  %273 = extractvalue { i64, i64 } %270, 0, !dbg !108
  store i64 %273, i64* %272, align 16, !dbg !108
  %274 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %271, i32 0, i32 1, !dbg !108
  %275 = extractvalue { i64, i64 } %270, 1, !dbg !108
  store i64 %275, i64* %274, align 8, !dbg !108
  %276 = load i128, i128* %31, align 16, !dbg !108
  %277 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %100, i64 %94), !dbg !109
  %278 = bitcast i128* %32 to { i64, i64 }*, !dbg !109
  %279 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %278, i32 0, i32 0, !dbg !109
  %280 = extractvalue { i64, i64 } %277, 0, !dbg !109
  store i64 %280, i64* %279, align 16, !dbg !109
  %281 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %278, i32 0, i32 1, !dbg !109
  %282 = extractvalue { i64, i64 } %277, 1, !dbg !109
  store i64 %282, i64* %281, align 8, !dbg !109
  %283 = load i128, i128* %32, align 16, !dbg !109
  store i128 %276, i128* %33, align 16, !dbg !110
  %284 = bitcast i128* %33 to { i64, i64 }*, !dbg !110
  %285 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %284, i32 0, i32 0, !dbg !110
  %286 = load i64, i64* %285, align 16, !dbg !110
  %287 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %284, i32 0, i32 1, !dbg !110
  %288 = load i64, i64* %287, align 8, !dbg !110
  store i128 %283, i128* %34, align 16, !dbg !110
  %289 = bitcast i128* %34 to { i64, i64 }*, !dbg !110
  %290 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %289, i32 0, i32 0, !dbg !110
  %291 = load i64, i64* %290, align 16, !dbg !110
  %292 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %289, i32 0, i32 1, !dbg !110
  %293 = load i64, i64* %292, align 8, !dbg !110
  %294 = call { i64, i64 } @FStar_UInt128_add(i64 %286, i64 %288, i64 %291, i64 %293), !dbg !110
  %295 = bitcast i128* %35 to { i64, i64 }*, !dbg !110
  %296 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 0, !dbg !110
  %297 = extractvalue { i64, i64 } %294, 0, !dbg !110
  store i64 %297, i64* %296, align 16, !dbg !110
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 1, !dbg !110
  %299 = extractvalue { i64, i64 } %294, 1, !dbg !110
  store i64 %299, i64* %298, align 8, !dbg !110
  %300 = load i128, i128* %35, align 16, !dbg !110
  %301 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %98, i64 %103), !dbg !111
  %302 = bitcast i128* %36 to { i64, i64 }*, !dbg !111
  %303 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %302, i32 0, i32 0, !dbg !111
  %304 = extractvalue { i64, i64 } %301, 0, !dbg !111
  store i64 %304, i64* %303, align 16, !dbg !111
  %305 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %302, i32 0, i32 1, !dbg !111
  %306 = extractvalue { i64, i64 } %301, 1, !dbg !111
  store i64 %306, i64* %305, align 8, !dbg !111
  %307 = load i128, i128* %36, align 16, !dbg !111
  store i128 %300, i128* %37, align 16, !dbg !112
  %308 = bitcast i128* %37 to { i64, i64 }*, !dbg !112
  %309 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %308, i32 0, i32 0, !dbg !112
  %310 = load i64, i64* %309, align 16, !dbg !112
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %308, i32 0, i32 1, !dbg !112
  %312 = load i64, i64* %311, align 8, !dbg !112
  store i128 %307, i128* %38, align 16, !dbg !112
  %313 = bitcast i128* %38 to { i64, i64 }*, !dbg !112
  %314 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %313, i32 0, i32 0, !dbg !112
  %315 = load i64, i64* %314, align 16, !dbg !112
  %316 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %313, i32 0, i32 1, !dbg !112
  %317 = load i64, i64* %316, align 8, !dbg !112
  %318 = call { i64, i64 } @FStar_UInt128_add(i64 %310, i64 %312, i64 %315, i64 %317), !dbg !112
  %319 = bitcast i128* %39 to { i64, i64 }*, !dbg !112
  %320 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %319, i32 0, i32 0, !dbg !112
  %321 = extractvalue { i64, i64 } %318, 0, !dbg !112
  store i64 %321, i64* %320, align 16, !dbg !112
  %322 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %319, i32 0, i32 1, !dbg !112
  %323 = extractvalue { i64, i64 } %318, 1, !dbg !112
  store i64 %323, i64* %322, align 8, !dbg !112
  %324 = load i128, i128* %39, align 16, !dbg !112
  call void @llvm.dbg.value(metadata i128 %324, metadata !113, metadata !DIExpression()), !dbg !65
  %325 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %99, i64 %98), !dbg !114
  %326 = bitcast i128* %40 to { i64, i64 }*, !dbg !114
  %327 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %326, i32 0, i32 0, !dbg !114
  %328 = extractvalue { i64, i64 } %325, 0, !dbg !114
  store i64 %328, i64* %327, align 16, !dbg !114
  %329 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %326, i32 0, i32 1, !dbg !114
  %330 = extractvalue { i64, i64 } %325, 1, !dbg !114
  store i64 %330, i64* %329, align 8, !dbg !114
  %331 = load i128, i128* %40, align 16, !dbg !114
  %332 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %100, i64 %96), !dbg !115
  %333 = bitcast i128* %41 to { i64, i64 }*, !dbg !115
  %334 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %333, i32 0, i32 0, !dbg !115
  %335 = extractvalue { i64, i64 } %332, 0, !dbg !115
  store i64 %335, i64* %334, align 16, !dbg !115
  %336 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %333, i32 0, i32 1, !dbg !115
  %337 = extractvalue { i64, i64 } %332, 1, !dbg !115
  store i64 %337, i64* %336, align 8, !dbg !115
  %338 = load i128, i128* %41, align 16, !dbg !115
  store i128 %331, i128* %42, align 16, !dbg !116
  %339 = bitcast i128* %42 to { i64, i64 }*, !dbg !116
  %340 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %339, i32 0, i32 0, !dbg !116
  %341 = load i64, i64* %340, align 16, !dbg !116
  %342 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %339, i32 0, i32 1, !dbg !116
  %343 = load i64, i64* %342, align 8, !dbg !116
  store i128 %338, i128* %43, align 16, !dbg !116
  %344 = bitcast i128* %43 to { i64, i64 }*, !dbg !116
  %345 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %344, i32 0, i32 0, !dbg !116
  %346 = load i64, i64* %345, align 16, !dbg !116
  %347 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %344, i32 0, i32 1, !dbg !116
  %348 = load i64, i64* %347, align 8, !dbg !116
  %349 = call { i64, i64 } @FStar_UInt128_add(i64 %341, i64 %343, i64 %346, i64 %348), !dbg !116
  %350 = bitcast i128* %44 to { i64, i64 }*, !dbg !116
  %351 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %350, i32 0, i32 0, !dbg !116
  %352 = extractvalue { i64, i64 } %349, 0, !dbg !116
  store i64 %352, i64* %351, align 16, !dbg !116
  %353 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %350, i32 0, i32 1, !dbg !116
  %354 = extractvalue { i64, i64 } %349, 1, !dbg !116
  store i64 %354, i64* %353, align 8, !dbg !116
  %355 = load i128, i128* %44, align 16, !dbg !116
  %356 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %94, i64 %94), !dbg !117
  %357 = bitcast i128* %45 to { i64, i64 }*, !dbg !117
  %358 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 0, !dbg !117
  %359 = extractvalue { i64, i64 } %356, 0, !dbg !117
  store i64 %359, i64* %358, align 16, !dbg !117
  %360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 1, !dbg !117
  %361 = extractvalue { i64, i64 } %356, 1, !dbg !117
  store i64 %361, i64* %360, align 8, !dbg !117
  %362 = load i128, i128* %45, align 16, !dbg !117
  store i128 %355, i128* %46, align 16, !dbg !118
  %363 = bitcast i128* %46 to { i64, i64 }*, !dbg !118
  %364 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %363, i32 0, i32 0, !dbg !118
  %365 = load i64, i64* %364, align 16, !dbg !118
  %366 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %363, i32 0, i32 1, !dbg !118
  %367 = load i64, i64* %366, align 8, !dbg !118
  store i128 %362, i128* %47, align 16, !dbg !118
  %368 = bitcast i128* %47 to { i64, i64 }*, !dbg !118
  %369 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %368, i32 0, i32 0, !dbg !118
  %370 = load i64, i64* %369, align 16, !dbg !118
  %371 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %368, i32 0, i32 1, !dbg !118
  %372 = load i64, i64* %371, align 8, !dbg !118
  %373 = call { i64, i64 } @FStar_UInt128_add(i64 %365, i64 %367, i64 %370, i64 %372), !dbg !118
  %374 = bitcast i128* %48 to { i64, i64 }*, !dbg !118
  %375 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %374, i32 0, i32 0, !dbg !118
  %376 = extractvalue { i64, i64 } %373, 0, !dbg !118
  store i64 %376, i64* %375, align 16, !dbg !118
  %377 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %374, i32 0, i32 1, !dbg !118
  %378 = extractvalue { i64, i64 } %373, 1, !dbg !118
  store i64 %378, i64* %377, align 8, !dbg !118
  %379 = load i128, i128* %48, align 16, !dbg !118
  call void @llvm.dbg.value(metadata i128 %379, metadata !119, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i128 %159, metadata !120, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i128 %214, metadata !121, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i128 %269, metadata !122, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i128 %324, metadata !123, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i128 %379, metadata !124, metadata !DIExpression()), !dbg !65
  %380 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !125
  %381 = bitcast i128* %49 to { i64, i64 }*, !dbg !125
  %382 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 0, !dbg !125
  %383 = extractvalue { i64, i64 } %380, 0, !dbg !125
  store i64 %383, i64* %382, align 16, !dbg !125
  %384 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 1, !dbg !125
  %385 = extractvalue { i64, i64 } %380, 1, !dbg !125
  store i64 %385, i64* %384, align 8, !dbg !125
  %386 = load i128, i128* %49, align 16, !dbg !125
  store i128 %159, i128* %50, align 16, !dbg !126
  %387 = bitcast i128* %50 to { i64, i64 }*, !dbg !126
  %388 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 0, !dbg !126
  %389 = load i64, i64* %388, align 16, !dbg !126
  %390 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 1, !dbg !126
  %391 = load i64, i64* %390, align 8, !dbg !126
  store i128 %386, i128* %51, align 16, !dbg !126
  %392 = bitcast i128* %51 to { i64, i64 }*, !dbg !126
  %393 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %392, i32 0, i32 0, !dbg !126
  %394 = load i64, i64* %393, align 16, !dbg !126
  %395 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %392, i32 0, i32 1, !dbg !126
  %396 = load i64, i64* %395, align 8, !dbg !126
  %397 = call { i64, i64 } @FStar_UInt128_add(i64 %389, i64 %391, i64 %394, i64 %396), !dbg !126
  %398 = bitcast i128* %52 to { i64, i64 }*, !dbg !126
  %399 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %398, i32 0, i32 0, !dbg !126
  %400 = extractvalue { i64, i64 } %397, 0, !dbg !126
  store i64 %400, i64* %399, align 16, !dbg !126
  %401 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %398, i32 0, i32 1, !dbg !126
  %402 = extractvalue { i64, i64 } %397, 1, !dbg !126
  store i64 %402, i64* %401, align 8, !dbg !126
  %403 = load i128, i128* %52, align 16, !dbg !126
  call void @llvm.dbg.value(metadata i128 %403, metadata !127, metadata !DIExpression()), !dbg !65
  store i128 %403, i128* %53, align 16, !dbg !128
  %404 = bitcast i128* %53 to { i64, i64 }*, !dbg !128
  %405 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %404, i32 0, i32 0, !dbg !128
  %406 = load i64, i64* %405, align 16, !dbg !128
  %407 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %404, i32 0, i32 1, !dbg !128
  %408 = load i64, i64* %407, align 8, !dbg !128
  %409 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %406, i64 %408), !dbg !128
  %410 = and i64 %409, 2251799813685247, !dbg !129
  call void @llvm.dbg.value(metadata i64 %410, metadata !130, metadata !DIExpression()), !dbg !65
  store i128 %403, i128* %54, align 16, !dbg !131
  %411 = bitcast i128* %54 to { i64, i64 }*, !dbg !131
  %412 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 0, !dbg !131
  %413 = load i64, i64* %412, align 16, !dbg !131
  %414 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 1, !dbg !131
  %415 = load i64, i64* %414, align 8, !dbg !131
  %416 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %413, i64 %415, i32 51), !dbg !131
  %417 = bitcast i128* %55 to { i64, i64 }*, !dbg !131
  %418 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %417, i32 0, i32 0, !dbg !131
  %419 = extractvalue { i64, i64 } %416, 0, !dbg !131
  store i64 %419, i64* %418, align 16, !dbg !131
  %420 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %417, i32 0, i32 1, !dbg !131
  %421 = extractvalue { i64, i64 } %416, 1, !dbg !131
  store i64 %421, i64* %420, align 8, !dbg !131
  %422 = load i128, i128* %55, align 16, !dbg !131
  store i128 %422, i128* %56, align 16, !dbg !132
  %423 = bitcast i128* %56 to { i64, i64 }*, !dbg !132
  %424 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %423, i32 0, i32 0, !dbg !132
  %425 = load i64, i64* %424, align 16, !dbg !132
  %426 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %423, i32 0, i32 1, !dbg !132
  %427 = load i64, i64* %426, align 8, !dbg !132
  %428 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %425, i64 %427), !dbg !132
  call void @llvm.dbg.value(metadata i64 %428, metadata !133, metadata !DIExpression()), !dbg !65
  %429 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %428), !dbg !134
  %430 = bitcast i128* %57 to { i64, i64 }*, !dbg !134
  %431 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %430, i32 0, i32 0, !dbg !134
  %432 = extractvalue { i64, i64 } %429, 0, !dbg !134
  store i64 %432, i64* %431, align 16, !dbg !134
  %433 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %430, i32 0, i32 1, !dbg !134
  %434 = extractvalue { i64, i64 } %429, 1, !dbg !134
  store i64 %434, i64* %433, align 8, !dbg !134
  %435 = load i128, i128* %57, align 16, !dbg !134
  store i128 %214, i128* %58, align 16, !dbg !135
  %436 = bitcast i128* %58 to { i64, i64 }*, !dbg !135
  %437 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %436, i32 0, i32 0, !dbg !135
  %438 = load i64, i64* %437, align 16, !dbg !135
  %439 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %436, i32 0, i32 1, !dbg !135
  %440 = load i64, i64* %439, align 8, !dbg !135
  store i128 %435, i128* %59, align 16, !dbg !135
  %441 = bitcast i128* %59 to { i64, i64 }*, !dbg !135
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 0, !dbg !135
  %443 = load i64, i64* %442, align 16, !dbg !135
  %444 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 1, !dbg !135
  %445 = load i64, i64* %444, align 8, !dbg !135
  %446 = call { i64, i64 } @FStar_UInt128_add(i64 %438, i64 %440, i64 %443, i64 %445), !dbg !135
  %447 = bitcast i128* %60 to { i64, i64 }*, !dbg !135
  %448 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %447, i32 0, i32 0, !dbg !135
  %449 = extractvalue { i64, i64 } %446, 0, !dbg !135
  store i64 %449, i64* %448, align 16, !dbg !135
  %450 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %447, i32 0, i32 1, !dbg !135
  %451 = extractvalue { i64, i64 } %446, 1, !dbg !135
  store i64 %451, i64* %450, align 8, !dbg !135
  %452 = load i128, i128* %60, align 16, !dbg !135
  call void @llvm.dbg.value(metadata i128 %452, metadata !136, metadata !DIExpression()), !dbg !65
  store i128 %452, i128* %61, align 16, !dbg !137
  %453 = bitcast i128* %61 to { i64, i64 }*, !dbg !137
  %454 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %453, i32 0, i32 0, !dbg !137
  %455 = load i64, i64* %454, align 16, !dbg !137
  %456 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %453, i32 0, i32 1, !dbg !137
  %457 = load i64, i64* %456, align 8, !dbg !137
  %458 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %455, i64 %457), !dbg !137
  %459 = and i64 %458, 2251799813685247, !dbg !138
  call void @llvm.dbg.value(metadata i64 %459, metadata !139, metadata !DIExpression()), !dbg !65
  store i128 %452, i128* %62, align 16, !dbg !140
  %460 = bitcast i128* %62 to { i64, i64 }*, !dbg !140
  %461 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %460, i32 0, i32 0, !dbg !140
  %462 = load i64, i64* %461, align 16, !dbg !140
  %463 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %460, i32 0, i32 1, !dbg !140
  %464 = load i64, i64* %463, align 8, !dbg !140
  %465 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %462, i64 %464, i32 51), !dbg !140
  %466 = bitcast i128* %63 to { i64, i64 }*, !dbg !140
  %467 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %466, i32 0, i32 0, !dbg !140
  %468 = extractvalue { i64, i64 } %465, 0, !dbg !140
  store i64 %468, i64* %467, align 16, !dbg !140
  %469 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %466, i32 0, i32 1, !dbg !140
  %470 = extractvalue { i64, i64 } %465, 1, !dbg !140
  store i64 %470, i64* %469, align 8, !dbg !140
  %471 = load i128, i128* %63, align 16, !dbg !140
  store i128 %471, i128* %64, align 16, !dbg !141
  %472 = bitcast i128* %64 to { i64, i64 }*, !dbg !141
  %473 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %472, i32 0, i32 0, !dbg !141
  %474 = load i64, i64* %473, align 16, !dbg !141
  %475 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %472, i32 0, i32 1, !dbg !141
  %476 = load i64, i64* %475, align 8, !dbg !141
  %477 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %474, i64 %476), !dbg !141
  call void @llvm.dbg.value(metadata i64 %477, metadata !142, metadata !DIExpression()), !dbg !65
  %478 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %477), !dbg !143
  %479 = bitcast i128* %65 to { i64, i64 }*, !dbg !143
  %480 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %479, i32 0, i32 0, !dbg !143
  %481 = extractvalue { i64, i64 } %478, 0, !dbg !143
  store i64 %481, i64* %480, align 16, !dbg !143
  %482 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %479, i32 0, i32 1, !dbg !143
  %483 = extractvalue { i64, i64 } %478, 1, !dbg !143
  store i64 %483, i64* %482, align 8, !dbg !143
  %484 = load i128, i128* %65, align 16, !dbg !143
  store i128 %269, i128* %66, align 16, !dbg !144
  %485 = bitcast i128* %66 to { i64, i64 }*, !dbg !144
  %486 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %485, i32 0, i32 0, !dbg !144
  %487 = load i64, i64* %486, align 16, !dbg !144
  %488 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %485, i32 0, i32 1, !dbg !144
  %489 = load i64, i64* %488, align 8, !dbg !144
  store i128 %484, i128* %67, align 16, !dbg !144
  %490 = bitcast i128* %67 to { i64, i64 }*, !dbg !144
  %491 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %490, i32 0, i32 0, !dbg !144
  %492 = load i64, i64* %491, align 16, !dbg !144
  %493 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %490, i32 0, i32 1, !dbg !144
  %494 = load i64, i64* %493, align 8, !dbg !144
  %495 = call { i64, i64 } @FStar_UInt128_add(i64 %487, i64 %489, i64 %492, i64 %494), !dbg !144
  %496 = bitcast i128* %68 to { i64, i64 }*, !dbg !144
  %497 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %496, i32 0, i32 0, !dbg !144
  %498 = extractvalue { i64, i64 } %495, 0, !dbg !144
  store i64 %498, i64* %497, align 16, !dbg !144
  %499 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %496, i32 0, i32 1, !dbg !144
  %500 = extractvalue { i64, i64 } %495, 1, !dbg !144
  store i64 %500, i64* %499, align 8, !dbg !144
  %501 = load i128, i128* %68, align 16, !dbg !144
  call void @llvm.dbg.value(metadata i128 %501, metadata !145, metadata !DIExpression()), !dbg !65
  store i128 %501, i128* %69, align 16, !dbg !146
  %502 = bitcast i128* %69 to { i64, i64 }*, !dbg !146
  %503 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %502, i32 0, i32 0, !dbg !146
  %504 = load i64, i64* %503, align 16, !dbg !146
  %505 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %502, i32 0, i32 1, !dbg !146
  %506 = load i64, i64* %505, align 8, !dbg !146
  %507 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %504, i64 %506), !dbg !146
  %508 = and i64 %507, 2251799813685247, !dbg !147
  call void @llvm.dbg.value(metadata i64 %508, metadata !148, metadata !DIExpression()), !dbg !65
  store i128 %501, i128* %70, align 16, !dbg !149
  %509 = bitcast i128* %70 to { i64, i64 }*, !dbg !149
  %510 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %509, i32 0, i32 0, !dbg !149
  %511 = load i64, i64* %510, align 16, !dbg !149
  %512 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %509, i32 0, i32 1, !dbg !149
  %513 = load i64, i64* %512, align 8, !dbg !149
  %514 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %511, i64 %513, i32 51), !dbg !149
  %515 = bitcast i128* %71 to { i64, i64 }*, !dbg !149
  %516 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %515, i32 0, i32 0, !dbg !149
  %517 = extractvalue { i64, i64 } %514, 0, !dbg !149
  store i64 %517, i64* %516, align 16, !dbg !149
  %518 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %515, i32 0, i32 1, !dbg !149
  %519 = extractvalue { i64, i64 } %514, 1, !dbg !149
  store i64 %519, i64* %518, align 8, !dbg !149
  %520 = load i128, i128* %71, align 16, !dbg !149
  store i128 %520, i128* %72, align 16, !dbg !150
  %521 = bitcast i128* %72 to { i64, i64 }*, !dbg !150
  %522 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %521, i32 0, i32 0, !dbg !150
  %523 = load i64, i64* %522, align 16, !dbg !150
  %524 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %521, i32 0, i32 1, !dbg !150
  %525 = load i64, i64* %524, align 8, !dbg !150
  %526 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %523, i64 %525), !dbg !150
  call void @llvm.dbg.value(metadata i64 %526, metadata !151, metadata !DIExpression()), !dbg !65
  %527 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %526), !dbg !152
  %528 = bitcast i128* %73 to { i64, i64 }*, !dbg !152
  %529 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %528, i32 0, i32 0, !dbg !152
  %530 = extractvalue { i64, i64 } %527, 0, !dbg !152
  store i64 %530, i64* %529, align 16, !dbg !152
  %531 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %528, i32 0, i32 1, !dbg !152
  %532 = extractvalue { i64, i64 } %527, 1, !dbg !152
  store i64 %532, i64* %531, align 8, !dbg !152
  %533 = load i128, i128* %73, align 16, !dbg !152
  store i128 %324, i128* %74, align 16, !dbg !153
  %534 = bitcast i128* %74 to { i64, i64 }*, !dbg !153
  %535 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %534, i32 0, i32 0, !dbg !153
  %536 = load i64, i64* %535, align 16, !dbg !153
  %537 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %534, i32 0, i32 1, !dbg !153
  %538 = load i64, i64* %537, align 8, !dbg !153
  store i128 %533, i128* %75, align 16, !dbg !153
  %539 = bitcast i128* %75 to { i64, i64 }*, !dbg !153
  %540 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %539, i32 0, i32 0, !dbg !153
  %541 = load i64, i64* %540, align 16, !dbg !153
  %542 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %539, i32 0, i32 1, !dbg !153
  %543 = load i64, i64* %542, align 8, !dbg !153
  %544 = call { i64, i64 } @FStar_UInt128_add(i64 %536, i64 %538, i64 %541, i64 %543), !dbg !153
  %545 = bitcast i128* %76 to { i64, i64 }*, !dbg !153
  %546 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %545, i32 0, i32 0, !dbg !153
  %547 = extractvalue { i64, i64 } %544, 0, !dbg !153
  store i64 %547, i64* %546, align 16, !dbg !153
  %548 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %545, i32 0, i32 1, !dbg !153
  %549 = extractvalue { i64, i64 } %544, 1, !dbg !153
  store i64 %549, i64* %548, align 8, !dbg !153
  %550 = load i128, i128* %76, align 16, !dbg !153
  call void @llvm.dbg.value(metadata i128 %550, metadata !154, metadata !DIExpression()), !dbg !65
  store i128 %550, i128* %77, align 16, !dbg !155
  %551 = bitcast i128* %77 to { i64, i64 }*, !dbg !155
  %552 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %551, i32 0, i32 0, !dbg !155
  %553 = load i64, i64* %552, align 16, !dbg !155
  %554 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %551, i32 0, i32 1, !dbg !155
  %555 = load i64, i64* %554, align 8, !dbg !155
  %556 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %553, i64 %555), !dbg !155
  %557 = and i64 %556, 2251799813685247, !dbg !156
  call void @llvm.dbg.value(metadata i64 %557, metadata !157, metadata !DIExpression()), !dbg !65
  store i128 %550, i128* %78, align 16, !dbg !158
  %558 = bitcast i128* %78 to { i64, i64 }*, !dbg !158
  %559 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %558, i32 0, i32 0, !dbg !158
  %560 = load i64, i64* %559, align 16, !dbg !158
  %561 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %558, i32 0, i32 1, !dbg !158
  %562 = load i64, i64* %561, align 8, !dbg !158
  %563 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %560, i64 %562, i32 51), !dbg !158
  %564 = bitcast i128* %79 to { i64, i64 }*, !dbg !158
  %565 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %564, i32 0, i32 0, !dbg !158
  %566 = extractvalue { i64, i64 } %563, 0, !dbg !158
  store i64 %566, i64* %565, align 16, !dbg !158
  %567 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %564, i32 0, i32 1, !dbg !158
  %568 = extractvalue { i64, i64 } %563, 1, !dbg !158
  store i64 %568, i64* %567, align 8, !dbg !158
  %569 = load i128, i128* %79, align 16, !dbg !158
  store i128 %569, i128* %80, align 16, !dbg !159
  %570 = bitcast i128* %80 to { i64, i64 }*, !dbg !159
  %571 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %570, i32 0, i32 0, !dbg !159
  %572 = load i64, i64* %571, align 16, !dbg !159
  %573 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %570, i32 0, i32 1, !dbg !159
  %574 = load i64, i64* %573, align 8, !dbg !159
  %575 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %572, i64 %574), !dbg !159
  call void @llvm.dbg.value(metadata i64 %575, metadata !160, metadata !DIExpression()), !dbg !65
  %576 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %575), !dbg !161
  %577 = bitcast i128* %81 to { i64, i64 }*, !dbg !161
  %578 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %577, i32 0, i32 0, !dbg !161
  %579 = extractvalue { i64, i64 } %576, 0, !dbg !161
  store i64 %579, i64* %578, align 16, !dbg !161
  %580 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %577, i32 0, i32 1, !dbg !161
  %581 = extractvalue { i64, i64 } %576, 1, !dbg !161
  store i64 %581, i64* %580, align 8, !dbg !161
  %582 = load i128, i128* %81, align 16, !dbg !161
  store i128 %379, i128* %82, align 16, !dbg !162
  %583 = bitcast i128* %82 to { i64, i64 }*, !dbg !162
  %584 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %583, i32 0, i32 0, !dbg !162
  %585 = load i64, i64* %584, align 16, !dbg !162
  %586 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %583, i32 0, i32 1, !dbg !162
  %587 = load i64, i64* %586, align 8, !dbg !162
  store i128 %582, i128* %83, align 16, !dbg !162
  %588 = bitcast i128* %83 to { i64, i64 }*, !dbg !162
  %589 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %588, i32 0, i32 0, !dbg !162
  %590 = load i64, i64* %589, align 16, !dbg !162
  %591 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %588, i32 0, i32 1, !dbg !162
  %592 = load i64, i64* %591, align 8, !dbg !162
  %593 = call { i64, i64 } @FStar_UInt128_add(i64 %585, i64 %587, i64 %590, i64 %592), !dbg !162
  %594 = bitcast i128* %84 to { i64, i64 }*, !dbg !162
  %595 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %594, i32 0, i32 0, !dbg !162
  %596 = extractvalue { i64, i64 } %593, 0, !dbg !162
  store i64 %596, i64* %595, align 16, !dbg !162
  %597 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %594, i32 0, i32 1, !dbg !162
  %598 = extractvalue { i64, i64 } %593, 1, !dbg !162
  store i64 %598, i64* %597, align 8, !dbg !162
  %599 = load i128, i128* %84, align 16, !dbg !162
  call void @llvm.dbg.value(metadata i128 %599, metadata !163, metadata !DIExpression()), !dbg !65
  store i128 %599, i128* %85, align 16, !dbg !164
  %600 = bitcast i128* %85 to { i64, i64 }*, !dbg !164
  %601 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %600, i32 0, i32 0, !dbg !164
  %602 = load i64, i64* %601, align 16, !dbg !164
  %603 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %600, i32 0, i32 1, !dbg !164
  %604 = load i64, i64* %603, align 8, !dbg !164
  %605 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %602, i64 %604), !dbg !164
  %606 = and i64 %605, 2251799813685247, !dbg !165
  call void @llvm.dbg.value(metadata i64 %606, metadata !166, metadata !DIExpression()), !dbg !65
  store i128 %599, i128* %86, align 16, !dbg !167
  %607 = bitcast i128* %86 to { i64, i64 }*, !dbg !167
  %608 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %607, i32 0, i32 0, !dbg !167
  %609 = load i64, i64* %608, align 16, !dbg !167
  %610 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %607, i32 0, i32 1, !dbg !167
  %611 = load i64, i64* %610, align 8, !dbg !167
  %612 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %609, i64 %611, i32 51), !dbg !167
  %613 = bitcast i128* %87 to { i64, i64 }*, !dbg !167
  %614 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %613, i32 0, i32 0, !dbg !167
  %615 = extractvalue { i64, i64 } %612, 0, !dbg !167
  store i64 %615, i64* %614, align 16, !dbg !167
  %616 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %613, i32 0, i32 1, !dbg !167
  %617 = extractvalue { i64, i64 } %612, 1, !dbg !167
  store i64 %617, i64* %616, align 8, !dbg !167
  %618 = load i128, i128* %87, align 16, !dbg !167
  store i128 %618, i128* %88, align 16, !dbg !168
  %619 = bitcast i128* %88 to { i64, i64 }*, !dbg !168
  %620 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %619, i32 0, i32 0, !dbg !168
  %621 = load i64, i64* %620, align 16, !dbg !168
  %622 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %619, i32 0, i32 1, !dbg !168
  %623 = load i64, i64* %622, align 8, !dbg !168
  %624 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %621, i64 %623), !dbg !168
  call void @llvm.dbg.value(metadata i64 %624, metadata !169, metadata !DIExpression()), !dbg !65
  %625 = mul i64 %624, 19, !dbg !170
  %626 = add i64 %410, %625, !dbg !171
  call void @llvm.dbg.value(metadata i64 %626, metadata !172, metadata !DIExpression()), !dbg !65
  %627 = and i64 %626, 2251799813685247, !dbg !173
  call void @llvm.dbg.value(metadata i64 %627, metadata !174, metadata !DIExpression()), !dbg !65
  %628 = lshr i64 %626, 51, !dbg !175
  call void @llvm.dbg.value(metadata i64 %628, metadata !176, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %627, metadata !177, metadata !DIExpression()), !dbg !65
  %629 = add i64 %459, %628, !dbg !178
  call void @llvm.dbg.value(metadata i64 %629, metadata !179, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %508, metadata !180, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %557, metadata !181, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %606, metadata !182, metadata !DIExpression()), !dbg !65
  %630 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !183
  store i64 %627, i64* %630, align 8, !dbg !184
  %631 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !185
  store i64 %629, i64* %631, align 8, !dbg !186
  %632 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !187
  store i64 %508, i64* %632, align 8, !dbg !188
  %633 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !189
  store i64 %557, i64* %633, align 8, !dbg !190
  %634 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !191
  store i64 %606, i64* %634, align 8, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @FStar_UInt128_mul_wide(i64 %0, i64 %1) #0 !dbg !194 {
  %3 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i64 %1, metadata !200, metadata !DIExpression()), !dbg !199
  %4 = zext i64 %0 to i128, !dbg !201
  %5 = zext i64 %1 to i128, !dbg !202
  %6 = mul i128 %4, %5, !dbg !203
  store i128 %6, i128* %3, align 16, !dbg !204
  %7 = bitcast i128* %3 to { i64, i64 }*, !dbg !204
  %8 = load { i64, i64 }, { i64, i64 }* %7, align 16, !dbg !204
  ret { i64, i64 } %8, !dbg !204
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @FStar_UInt128_add(i64 %0, i64 %1, i64 %2, i64 %3) #0 !dbg !205 {
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = bitcast i128* %6 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %6, align 16
  %12 = bitcast i128* %7 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 16
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %3, i64* %14, align 8
  %15 = load i128, i128* %7, align 16
  call void @llvm.dbg.value(metadata i128 %11, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i128 %15, metadata !210, metadata !DIExpression()), !dbg !209
  %16 = add i128 %11, %15, !dbg !211
  store i128 %16, i128* %5, align 16, !dbg !212
  %17 = bitcast i128* %5 to { i64, i64 }*, !dbg !212
  %18 = load { i64, i64 }, { i64, i64 }* %17, align 16, !dbg !212
  ret { i64, i64 } %18, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %0) #0 !dbg !213 {
  %2 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !216, metadata !DIExpression()), !dbg !217
  %3 = zext i64 %0 to i128, !dbg !218
  store i128 %3, i128* %2, align 16, !dbg !219
  %4 = bitcast i128* %2 to { i64, i64 }*, !dbg !219
  %5 = load { i64, i64 }, { i64, i64 }* %4, align 16, !dbg !219
  ret { i64, i64 } %5, !dbg !219
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_uint128_to_uint64(i64 %0, i64 %1) #0 !dbg !220 {
  %3 = alloca i128, align 16
  %4 = bitcast i128* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 16
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = load i128, i128* %3, align 16
  call void @llvm.dbg.value(metadata i128 %7, metadata !223, metadata !DIExpression()), !dbg !224
  %8 = trunc i128 %7 to i64, !dbg !225
  ret i64 %8, !dbg !226
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @FStar_UInt128_shift_right(i64 %0, i64 %1, i32 %2) #0 !dbg !227 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  call void @llvm.dbg.value(metadata i128 %9, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 %2, metadata !232, metadata !DIExpression()), !dbg !231
  %10 = zext i32 %2 to i128, !dbg !233
  %11 = lshr i128 %9, %10, !dbg !233
  store i128 %11, i128* %4, align 16, !dbg !234
  %12 = bitcast i128* %4 to { i64, i64 }*, !dbg !234
  %13 = load { i64, i64 }, { i64, i64 }* %12, align 16, !dbg !234
  ret { i64, i64 } %13, !dbg !234
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_51_finv(i64* %0, i64* %1, i128* %2) #0 !dbg !235 {
  %4 = alloca [20 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64* %1, metadata !238, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i128* %2, metadata !239, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [20 x i64]* %4, metadata !240, metadata !DIExpression()), !dbg !244
  %5 = bitcast [20 x i64]* %4 to i8*, !dbg !244
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 160, i1 false), !dbg !244
  %6 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !245
  call void @llvm.dbg.value(metadata i64* %6, metadata !246, metadata !DIExpression()), !dbg !237
  %7 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !247
  %8 = getelementptr inbounds i64, i64* %7, i64 5, !dbg !248
  call void @llvm.dbg.value(metadata i64* %8, metadata !249, metadata !DIExpression()), !dbg !237
  %9 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !250
  %10 = getelementptr inbounds i64, i64* %9, i64 15, !dbg !251
  call void @llvm.dbg.value(metadata i64* %10, metadata !252, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i128* %2, metadata !253, metadata !DIExpression()), !dbg !237
  call void @Hacl_Curve25519_51_fsquare_times(i64* %6, i64* %1, i128* %2, i32 1), !dbg !254
  call void @Hacl_Curve25519_51_fsquare_times(i64* %10, i64* %6, i128* %2, i32 2), !dbg !255
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %8, i64* %10, i64* %1, i128* %2), !dbg !256
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %6, i64* %8, i64* %6, i128* %2), !dbg !257
  call void @Hacl_Curve25519_51_fsquare_times(i64* %10, i64* %6, i128* %2, i32 1), !dbg !258
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %8, i64* %10, i64* %8, i128* %2), !dbg !259
  call void @Hacl_Curve25519_51_fsquare_times(i64* %10, i64* %8, i128* %2, i32 5), !dbg !260
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %8, i64* %10, i64* %8, i128* %2), !dbg !261
  %11 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !262
  %12 = getelementptr inbounds i64, i64* %11, i64 5, !dbg !263
  call void @llvm.dbg.value(metadata i64* %12, metadata !264, metadata !DIExpression()), !dbg !237
  %13 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !265
  %14 = getelementptr inbounds i64, i64* %13, i64 10, !dbg !266
  call void @llvm.dbg.value(metadata i64* %14, metadata !267, metadata !DIExpression()), !dbg !237
  %15 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !268
  %16 = getelementptr inbounds i64, i64* %15, i64 15, !dbg !269
  call void @llvm.dbg.value(metadata i64* %16, metadata !270, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i128* %2, metadata !271, metadata !DIExpression()), !dbg !237
  call void @Hacl_Curve25519_51_fsquare_times(i64* %16, i64* %12, i128* %2, i32 10), !dbg !272
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %14, i64* %16, i64* %12, i128* %2), !dbg !273
  call void @Hacl_Curve25519_51_fsquare_times(i64* %16, i64* %14, i128* %2, i32 20), !dbg !274
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %16, i64* %16, i64* %14, i128* %2), !dbg !275
  call void @Hacl_Curve25519_51_fsquare_times(i64* %16, i64* %16, i128* %2, i32 10), !dbg !276
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %12, i64* %16, i64* %12, i128* %2), !dbg !277
  call void @Hacl_Curve25519_51_fsquare_times(i64* %16, i64* %12, i128* %2, i32 50), !dbg !278
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %14, i64* %16, i64* %12, i128* %2), !dbg !279
  %17 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !280
  %18 = getelementptr inbounds i64, i64* %17, i64 5, !dbg !281
  call void @llvm.dbg.value(metadata i64* %18, metadata !282, metadata !DIExpression()), !dbg !237
  %19 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !283
  %20 = getelementptr inbounds i64, i64* %19, i64 10, !dbg !284
  call void @llvm.dbg.value(metadata i64* %20, metadata !285, metadata !DIExpression()), !dbg !237
  %21 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !286
  %22 = getelementptr inbounds i64, i64* %21, i64 15, !dbg !287
  call void @llvm.dbg.value(metadata i64* %22, metadata !288, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i128* %2, metadata !289, metadata !DIExpression()), !dbg !237
  call void @Hacl_Curve25519_51_fsquare_times(i64* %22, i64* %20, i128* %2, i32 100), !dbg !290
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %22, i64* %22, i64* %20, i128* %2), !dbg !291
  call void @Hacl_Curve25519_51_fsquare_times(i64* %22, i64* %22, i128* %2, i32 50), !dbg !292
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %22, i64* %22, i64* %18, i128* %2), !dbg !293
  call void @Hacl_Curve25519_51_fsquare_times(i64* %22, i64* %22, i128* %2, i32 5), !dbg !294
  %23 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !295
  call void @llvm.dbg.value(metadata i64* %23, metadata !296, metadata !DIExpression()), !dbg !237
  %24 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !297
  %25 = getelementptr inbounds i64, i64* %24, i64 15, !dbg !298
  call void @llvm.dbg.value(metadata i64* %25, metadata !299, metadata !DIExpression()), !dbg !237
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %0, i64* %25, i64* %23, i128* %2), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fmul(i64* %0, i64* %1, i64* %2, i128* %3) #0 !dbg !302 {
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = alloca i128, align 16
  %21 = alloca i128, align 16
  %22 = alloca i128, align 16
  %23 = alloca i128, align 16
  %24 = alloca i128, align 16
  %25 = alloca i128, align 16
  %26 = alloca i128, align 16
  %27 = alloca i128, align 16
  %28 = alloca i128, align 16
  %29 = alloca i128, align 16
  %30 = alloca i128, align 16
  %31 = alloca i128, align 16
  %32 = alloca i128, align 16
  %33 = alloca i128, align 16
  %34 = alloca i128, align 16
  %35 = alloca i128, align 16
  %36 = alloca i128, align 16
  %37 = alloca i128, align 16
  %38 = alloca i128, align 16
  %39 = alloca i128, align 16
  %40 = alloca i128, align 16
  %41 = alloca i128, align 16
  %42 = alloca i128, align 16
  %43 = alloca i128, align 16
  %44 = alloca i128, align 16
  %45 = alloca i128, align 16
  %46 = alloca i128, align 16
  %47 = alloca i128, align 16
  %48 = alloca i128, align 16
  %49 = alloca i128, align 16
  %50 = alloca i128, align 16
  %51 = alloca i128, align 16
  %52 = alloca i128, align 16
  %53 = alloca i128, align 16
  %54 = alloca i128, align 16
  %55 = alloca i128, align 16
  %56 = alloca i128, align 16
  %57 = alloca i128, align 16
  %58 = alloca i128, align 16
  %59 = alloca i128, align 16
  %60 = alloca i128, align 16
  %61 = alloca i128, align 16
  %62 = alloca i128, align 16
  %63 = alloca i128, align 16
  %64 = alloca i128, align 16
  %65 = alloca i128, align 16
  %66 = alloca i128, align 16
  %67 = alloca i128, align 16
  %68 = alloca i128, align 16
  %69 = alloca i128, align 16
  %70 = alloca i128, align 16
  %71 = alloca i128, align 16
  %72 = alloca i128, align 16
  %73 = alloca i128, align 16
  %74 = alloca i128, align 16
  %75 = alloca i128, align 16
  %76 = alloca i128, align 16
  %77 = alloca i128, align 16
  %78 = alloca i128, align 16
  %79 = alloca i128, align 16
  %80 = alloca i128, align 16
  %81 = alloca i128, align 16
  %82 = alloca i128, align 16
  %83 = alloca i128, align 16
  %84 = alloca i128, align 16
  %85 = alloca i128, align 16
  %86 = alloca i128, align 16
  %87 = alloca i128, align 16
  %88 = alloca i128, align 16
  %89 = alloca i128, align 16
  %90 = alloca i128, align 16
  %91 = alloca i128, align 16
  %92 = alloca i128, align 16
  %93 = alloca i128, align 16
  %94 = alloca i128, align 16
  %95 = alloca i128, align 16
  %96 = alloca i128, align 16
  %97 = alloca i128, align 16
  %98 = alloca i128, align 16
  %99 = alloca i128, align 16
  %100 = alloca i128, align 16
  %101 = alloca i128, align 16
  %102 = alloca i128, align 16
  %103 = alloca i128, align 16
  %104 = alloca i128, align 16
  %105 = alloca i128, align 16
  %106 = alloca i128, align 16
  %107 = alloca i128, align 16
  %108 = alloca i128, align 16
  %109 = alloca i128, align 16
  %110 = alloca i128, align 16
  %111 = alloca i128, align 16
  %112 = alloca i128, align 16
  %113 = alloca i128, align 16
  %114 = alloca i128, align 16
  %115 = alloca i128, align 16
  %116 = alloca i128, align 16
  %117 = alloca i128, align 16
  %118 = alloca i128, align 16
  %119 = alloca i128, align 16
  %120 = alloca i128, align 16
  %121 = alloca i128, align 16
  %122 = alloca i128, align 16
  %123 = alloca i128, align 16
  %124 = alloca i128, align 16
  %125 = alloca i128, align 16
  %126 = alloca i128, align 16
  %127 = alloca i128, align 16
  %128 = alloca i128, align 16
  %129 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64* %1, metadata !307, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64* %2, metadata !308, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i128* %3, metadata !309, metadata !DIExpression()), !dbg !306
  %130 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !310
  %131 = load i64, i64* %130, align 8, !dbg !310
  call void @llvm.dbg.value(metadata i64 %131, metadata !311, metadata !DIExpression()), !dbg !306
  %132 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !312
  %133 = load i64, i64* %132, align 8, !dbg !312
  call void @llvm.dbg.value(metadata i64 %133, metadata !313, metadata !DIExpression()), !dbg !306
  %134 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !314
  %135 = load i64, i64* %134, align 8, !dbg !314
  call void @llvm.dbg.value(metadata i64 %135, metadata !315, metadata !DIExpression()), !dbg !306
  %136 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !316
  %137 = load i64, i64* %136, align 8, !dbg !316
  call void @llvm.dbg.value(metadata i64 %137, metadata !317, metadata !DIExpression()), !dbg !306
  %138 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !318
  %139 = load i64, i64* %138, align 8, !dbg !318
  call void @llvm.dbg.value(metadata i64 %139, metadata !319, metadata !DIExpression()), !dbg !306
  %140 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !320
  %141 = load i64, i64* %140, align 8, !dbg !320
  call void @llvm.dbg.value(metadata i64 %141, metadata !321, metadata !DIExpression()), !dbg !306
  %142 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !322
  %143 = load i64, i64* %142, align 8, !dbg !322
  call void @llvm.dbg.value(metadata i64 %143, metadata !323, metadata !DIExpression()), !dbg !306
  %144 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !324
  %145 = load i64, i64* %144, align 8, !dbg !324
  call void @llvm.dbg.value(metadata i64 %145, metadata !325, metadata !DIExpression()), !dbg !306
  %146 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !326
  %147 = load i64, i64* %146, align 8, !dbg !326
  call void @llvm.dbg.value(metadata i64 %147, metadata !327, metadata !DIExpression()), !dbg !306
  %148 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !328
  %149 = load i64, i64* %148, align 8, !dbg !328
  call void @llvm.dbg.value(metadata i64 %149, metadata !329, metadata !DIExpression()), !dbg !306
  %150 = mul i64 %143, 19, !dbg !330
  call void @llvm.dbg.value(metadata i64 %150, metadata !331, metadata !DIExpression()), !dbg !306
  %151 = mul i64 %145, 19, !dbg !332
  call void @llvm.dbg.value(metadata i64 %151, metadata !333, metadata !DIExpression()), !dbg !306
  %152 = mul i64 %147, 19, !dbg !334
  call void @llvm.dbg.value(metadata i64 %152, metadata !335, metadata !DIExpression()), !dbg !306
  %153 = mul i64 %149, 19, !dbg !336
  call void @llvm.dbg.value(metadata i64 %153, metadata !337, metadata !DIExpression()), !dbg !306
  %154 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %131, i64 %141), !dbg !338
  %155 = bitcast i128* %5 to { i64, i64 }*, !dbg !338
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 0, !dbg !338
  %157 = extractvalue { i64, i64 } %154, 0, !dbg !338
  store i64 %157, i64* %156, align 16, !dbg !338
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 1, !dbg !338
  %159 = extractvalue { i64, i64 } %154, 1, !dbg !338
  store i64 %159, i64* %158, align 8, !dbg !338
  %160 = load i128, i128* %5, align 16, !dbg !338
  call void @llvm.dbg.value(metadata i128 %160, metadata !339, metadata !DIExpression()), !dbg !306
  %161 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %131, i64 %143), !dbg !340
  %162 = bitcast i128* %6 to { i64, i64 }*, !dbg !340
  %163 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %162, i32 0, i32 0, !dbg !340
  %164 = extractvalue { i64, i64 } %161, 0, !dbg !340
  store i64 %164, i64* %163, align 16, !dbg !340
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %162, i32 0, i32 1, !dbg !340
  %166 = extractvalue { i64, i64 } %161, 1, !dbg !340
  store i64 %166, i64* %165, align 8, !dbg !340
  %167 = load i128, i128* %6, align 16, !dbg !340
  call void @llvm.dbg.value(metadata i128 %167, metadata !341, metadata !DIExpression()), !dbg !306
  %168 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %131, i64 %145), !dbg !342
  %169 = bitcast i128* %7 to { i64, i64 }*, !dbg !342
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 0, !dbg !342
  %171 = extractvalue { i64, i64 } %168, 0, !dbg !342
  store i64 %171, i64* %170, align 16, !dbg !342
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 1, !dbg !342
  %173 = extractvalue { i64, i64 } %168, 1, !dbg !342
  store i64 %173, i64* %172, align 8, !dbg !342
  %174 = load i128, i128* %7, align 16, !dbg !342
  call void @llvm.dbg.value(metadata i128 %174, metadata !343, metadata !DIExpression()), !dbg !306
  %175 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %131, i64 %147), !dbg !344
  %176 = bitcast i128* %8 to { i64, i64 }*, !dbg !344
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %176, i32 0, i32 0, !dbg !344
  %178 = extractvalue { i64, i64 } %175, 0, !dbg !344
  store i64 %178, i64* %177, align 16, !dbg !344
  %179 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %176, i32 0, i32 1, !dbg !344
  %180 = extractvalue { i64, i64 } %175, 1, !dbg !344
  store i64 %180, i64* %179, align 8, !dbg !344
  %181 = load i128, i128* %8, align 16, !dbg !344
  call void @llvm.dbg.value(metadata i128 %181, metadata !345, metadata !DIExpression()), !dbg !306
  %182 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %131, i64 %149), !dbg !346
  %183 = bitcast i128* %9 to { i64, i64 }*, !dbg !346
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 0, !dbg !346
  %185 = extractvalue { i64, i64 } %182, 0, !dbg !346
  store i64 %185, i64* %184, align 16, !dbg !346
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 1, !dbg !346
  %187 = extractvalue { i64, i64 } %182, 1, !dbg !346
  store i64 %187, i64* %186, align 8, !dbg !346
  %188 = load i128, i128* %9, align 16, !dbg !346
  call void @llvm.dbg.value(metadata i128 %188, metadata !347, metadata !DIExpression()), !dbg !306
  %189 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %133, i64 %153), !dbg !348
  %190 = bitcast i128* %10 to { i64, i64 }*, !dbg !348
  %191 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %190, i32 0, i32 0, !dbg !348
  %192 = extractvalue { i64, i64 } %189, 0, !dbg !348
  store i64 %192, i64* %191, align 16, !dbg !348
  %193 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %190, i32 0, i32 1, !dbg !348
  %194 = extractvalue { i64, i64 } %189, 1, !dbg !348
  store i64 %194, i64* %193, align 8, !dbg !348
  %195 = load i128, i128* %10, align 16, !dbg !348
  store i128 %160, i128* %11, align 16, !dbg !349
  %196 = bitcast i128* %11 to { i64, i64 }*, !dbg !349
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %196, i32 0, i32 0, !dbg !349
  %198 = load i64, i64* %197, align 16, !dbg !349
  %199 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %196, i32 0, i32 1, !dbg !349
  %200 = load i64, i64* %199, align 8, !dbg !349
  store i128 %195, i128* %12, align 16, !dbg !349
  %201 = bitcast i128* %12 to { i64, i64 }*, !dbg !349
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %201, i32 0, i32 0, !dbg !349
  %203 = load i64, i64* %202, align 16, !dbg !349
  %204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %201, i32 0, i32 1, !dbg !349
  %205 = load i64, i64* %204, align 8, !dbg !349
  %206 = call { i64, i64 } @FStar_UInt128_add(i64 %198, i64 %200, i64 %203, i64 %205), !dbg !349
  %207 = bitcast i128* %13 to { i64, i64 }*, !dbg !349
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 0, !dbg !349
  %209 = extractvalue { i64, i64 } %206, 0, !dbg !349
  store i64 %209, i64* %208, align 16, !dbg !349
  %210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 1, !dbg !349
  %211 = extractvalue { i64, i64 } %206, 1, !dbg !349
  store i64 %211, i64* %210, align 8, !dbg !349
  %212 = load i128, i128* %13, align 16, !dbg !349
  call void @llvm.dbg.value(metadata i128 %212, metadata !350, metadata !DIExpression()), !dbg !306
  %213 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %133, i64 %141), !dbg !351
  %214 = bitcast i128* %14 to { i64, i64 }*, !dbg !351
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %214, i32 0, i32 0, !dbg !351
  %216 = extractvalue { i64, i64 } %213, 0, !dbg !351
  store i64 %216, i64* %215, align 16, !dbg !351
  %217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %214, i32 0, i32 1, !dbg !351
  %218 = extractvalue { i64, i64 } %213, 1, !dbg !351
  store i64 %218, i64* %217, align 8, !dbg !351
  %219 = load i128, i128* %14, align 16, !dbg !351
  store i128 %167, i128* %15, align 16, !dbg !352
  %220 = bitcast i128* %15 to { i64, i64 }*, !dbg !352
  %221 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %220, i32 0, i32 0, !dbg !352
  %222 = load i64, i64* %221, align 16, !dbg !352
  %223 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %220, i32 0, i32 1, !dbg !352
  %224 = load i64, i64* %223, align 8, !dbg !352
  store i128 %219, i128* %16, align 16, !dbg !352
  %225 = bitcast i128* %16 to { i64, i64 }*, !dbg !352
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 0, !dbg !352
  %227 = load i64, i64* %226, align 16, !dbg !352
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 1, !dbg !352
  %229 = load i64, i64* %228, align 8, !dbg !352
  %230 = call { i64, i64 } @FStar_UInt128_add(i64 %222, i64 %224, i64 %227, i64 %229), !dbg !352
  %231 = bitcast i128* %17 to { i64, i64 }*, !dbg !352
  %232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %231, i32 0, i32 0, !dbg !352
  %233 = extractvalue { i64, i64 } %230, 0, !dbg !352
  store i64 %233, i64* %232, align 16, !dbg !352
  %234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %231, i32 0, i32 1, !dbg !352
  %235 = extractvalue { i64, i64 } %230, 1, !dbg !352
  store i64 %235, i64* %234, align 8, !dbg !352
  %236 = load i128, i128* %17, align 16, !dbg !352
  call void @llvm.dbg.value(metadata i128 %236, metadata !353, metadata !DIExpression()), !dbg !306
  %237 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %133, i64 %143), !dbg !354
  %238 = bitcast i128* %18 to { i64, i64 }*, !dbg !354
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 0, !dbg !354
  %240 = extractvalue { i64, i64 } %237, 0, !dbg !354
  store i64 %240, i64* %239, align 16, !dbg !354
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 1, !dbg !354
  %242 = extractvalue { i64, i64 } %237, 1, !dbg !354
  store i64 %242, i64* %241, align 8, !dbg !354
  %243 = load i128, i128* %18, align 16, !dbg !354
  store i128 %174, i128* %19, align 16, !dbg !355
  %244 = bitcast i128* %19 to { i64, i64 }*, !dbg !355
  %245 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %244, i32 0, i32 0, !dbg !355
  %246 = load i64, i64* %245, align 16, !dbg !355
  %247 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %244, i32 0, i32 1, !dbg !355
  %248 = load i64, i64* %247, align 8, !dbg !355
  store i128 %243, i128* %20, align 16, !dbg !355
  %249 = bitcast i128* %20 to { i64, i64 }*, !dbg !355
  %250 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %249, i32 0, i32 0, !dbg !355
  %251 = load i64, i64* %250, align 16, !dbg !355
  %252 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %249, i32 0, i32 1, !dbg !355
  %253 = load i64, i64* %252, align 8, !dbg !355
  %254 = call { i64, i64 } @FStar_UInt128_add(i64 %246, i64 %248, i64 %251, i64 %253), !dbg !355
  %255 = bitcast i128* %21 to { i64, i64 }*, !dbg !355
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %255, i32 0, i32 0, !dbg !355
  %257 = extractvalue { i64, i64 } %254, 0, !dbg !355
  store i64 %257, i64* %256, align 16, !dbg !355
  %258 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %255, i32 0, i32 1, !dbg !355
  %259 = extractvalue { i64, i64 } %254, 1, !dbg !355
  store i64 %259, i64* %258, align 8, !dbg !355
  %260 = load i128, i128* %21, align 16, !dbg !355
  call void @llvm.dbg.value(metadata i128 %260, metadata !356, metadata !DIExpression()), !dbg !306
  %261 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %133, i64 %145), !dbg !357
  %262 = bitcast i128* %22 to { i64, i64 }*, !dbg !357
  %263 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %262, i32 0, i32 0, !dbg !357
  %264 = extractvalue { i64, i64 } %261, 0, !dbg !357
  store i64 %264, i64* %263, align 16, !dbg !357
  %265 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %262, i32 0, i32 1, !dbg !357
  %266 = extractvalue { i64, i64 } %261, 1, !dbg !357
  store i64 %266, i64* %265, align 8, !dbg !357
  %267 = load i128, i128* %22, align 16, !dbg !357
  store i128 %181, i128* %23, align 16, !dbg !358
  %268 = bitcast i128* %23 to { i64, i64 }*, !dbg !358
  %269 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %268, i32 0, i32 0, !dbg !358
  %270 = load i64, i64* %269, align 16, !dbg !358
  %271 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %268, i32 0, i32 1, !dbg !358
  %272 = load i64, i64* %271, align 8, !dbg !358
  store i128 %267, i128* %24, align 16, !dbg !358
  %273 = bitcast i128* %24 to { i64, i64 }*, !dbg !358
  %274 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %273, i32 0, i32 0, !dbg !358
  %275 = load i64, i64* %274, align 16, !dbg !358
  %276 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %273, i32 0, i32 1, !dbg !358
  %277 = load i64, i64* %276, align 8, !dbg !358
  %278 = call { i64, i64 } @FStar_UInt128_add(i64 %270, i64 %272, i64 %275, i64 %277), !dbg !358
  %279 = bitcast i128* %25 to { i64, i64 }*, !dbg !358
  %280 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %279, i32 0, i32 0, !dbg !358
  %281 = extractvalue { i64, i64 } %278, 0, !dbg !358
  store i64 %281, i64* %280, align 16, !dbg !358
  %282 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %279, i32 0, i32 1, !dbg !358
  %283 = extractvalue { i64, i64 } %278, 1, !dbg !358
  store i64 %283, i64* %282, align 8, !dbg !358
  %284 = load i128, i128* %25, align 16, !dbg !358
  call void @llvm.dbg.value(metadata i128 %284, metadata !359, metadata !DIExpression()), !dbg !306
  %285 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %133, i64 %147), !dbg !360
  %286 = bitcast i128* %26 to { i64, i64 }*, !dbg !360
  %287 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %286, i32 0, i32 0, !dbg !360
  %288 = extractvalue { i64, i64 } %285, 0, !dbg !360
  store i64 %288, i64* %287, align 16, !dbg !360
  %289 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %286, i32 0, i32 1, !dbg !360
  %290 = extractvalue { i64, i64 } %285, 1, !dbg !360
  store i64 %290, i64* %289, align 8, !dbg !360
  %291 = load i128, i128* %26, align 16, !dbg !360
  store i128 %188, i128* %27, align 16, !dbg !361
  %292 = bitcast i128* %27 to { i64, i64 }*, !dbg !361
  %293 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %292, i32 0, i32 0, !dbg !361
  %294 = load i64, i64* %293, align 16, !dbg !361
  %295 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %292, i32 0, i32 1, !dbg !361
  %296 = load i64, i64* %295, align 8, !dbg !361
  store i128 %291, i128* %28, align 16, !dbg !361
  %297 = bitcast i128* %28 to { i64, i64 }*, !dbg !361
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %297, i32 0, i32 0, !dbg !361
  %299 = load i64, i64* %298, align 16, !dbg !361
  %300 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %297, i32 0, i32 1, !dbg !361
  %301 = load i64, i64* %300, align 8, !dbg !361
  %302 = call { i64, i64 } @FStar_UInt128_add(i64 %294, i64 %296, i64 %299, i64 %301), !dbg !361
  %303 = bitcast i128* %29 to { i64, i64 }*, !dbg !361
  %304 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %303, i32 0, i32 0, !dbg !361
  %305 = extractvalue { i64, i64 } %302, 0, !dbg !361
  store i64 %305, i64* %304, align 16, !dbg !361
  %306 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %303, i32 0, i32 1, !dbg !361
  %307 = extractvalue { i64, i64 } %302, 1, !dbg !361
  store i64 %307, i64* %306, align 8, !dbg !361
  %308 = load i128, i128* %29, align 16, !dbg !361
  call void @llvm.dbg.value(metadata i128 %308, metadata !362, metadata !DIExpression()), !dbg !306
  %309 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %135, i64 %152), !dbg !363
  %310 = bitcast i128* %30 to { i64, i64 }*, !dbg !363
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 0, !dbg !363
  %312 = extractvalue { i64, i64 } %309, 0, !dbg !363
  store i64 %312, i64* %311, align 16, !dbg !363
  %313 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 1, !dbg !363
  %314 = extractvalue { i64, i64 } %309, 1, !dbg !363
  store i64 %314, i64* %313, align 8, !dbg !363
  %315 = load i128, i128* %30, align 16, !dbg !363
  store i128 %212, i128* %31, align 16, !dbg !364
  %316 = bitcast i128* %31 to { i64, i64 }*, !dbg !364
  %317 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %316, i32 0, i32 0, !dbg !364
  %318 = load i64, i64* %317, align 16, !dbg !364
  %319 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %316, i32 0, i32 1, !dbg !364
  %320 = load i64, i64* %319, align 8, !dbg !364
  store i128 %315, i128* %32, align 16, !dbg !364
  %321 = bitcast i128* %32 to { i64, i64 }*, !dbg !364
  %322 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %321, i32 0, i32 0, !dbg !364
  %323 = load i64, i64* %322, align 16, !dbg !364
  %324 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %321, i32 0, i32 1, !dbg !364
  %325 = load i64, i64* %324, align 8, !dbg !364
  %326 = call { i64, i64 } @FStar_UInt128_add(i64 %318, i64 %320, i64 %323, i64 %325), !dbg !364
  %327 = bitcast i128* %33 to { i64, i64 }*, !dbg !364
  %328 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %327, i32 0, i32 0, !dbg !364
  %329 = extractvalue { i64, i64 } %326, 0, !dbg !364
  store i64 %329, i64* %328, align 16, !dbg !364
  %330 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %327, i32 0, i32 1, !dbg !364
  %331 = extractvalue { i64, i64 } %326, 1, !dbg !364
  store i64 %331, i64* %330, align 8, !dbg !364
  %332 = load i128, i128* %33, align 16, !dbg !364
  call void @llvm.dbg.value(metadata i128 %332, metadata !365, metadata !DIExpression()), !dbg !306
  %333 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %135, i64 %153), !dbg !366
  %334 = bitcast i128* %34 to { i64, i64 }*, !dbg !366
  %335 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %334, i32 0, i32 0, !dbg !366
  %336 = extractvalue { i64, i64 } %333, 0, !dbg !366
  store i64 %336, i64* %335, align 16, !dbg !366
  %337 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %334, i32 0, i32 1, !dbg !366
  %338 = extractvalue { i64, i64 } %333, 1, !dbg !366
  store i64 %338, i64* %337, align 8, !dbg !366
  %339 = load i128, i128* %34, align 16, !dbg !366
  store i128 %236, i128* %35, align 16, !dbg !367
  %340 = bitcast i128* %35 to { i64, i64 }*, !dbg !367
  %341 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %340, i32 0, i32 0, !dbg !367
  %342 = load i64, i64* %341, align 16, !dbg !367
  %343 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %340, i32 0, i32 1, !dbg !367
  %344 = load i64, i64* %343, align 8, !dbg !367
  store i128 %339, i128* %36, align 16, !dbg !367
  %345 = bitcast i128* %36 to { i64, i64 }*, !dbg !367
  %346 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %345, i32 0, i32 0, !dbg !367
  %347 = load i64, i64* %346, align 16, !dbg !367
  %348 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %345, i32 0, i32 1, !dbg !367
  %349 = load i64, i64* %348, align 8, !dbg !367
  %350 = call { i64, i64 } @FStar_UInt128_add(i64 %342, i64 %344, i64 %347, i64 %349), !dbg !367
  %351 = bitcast i128* %37 to { i64, i64 }*, !dbg !367
  %352 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %351, i32 0, i32 0, !dbg !367
  %353 = extractvalue { i64, i64 } %350, 0, !dbg !367
  store i64 %353, i64* %352, align 16, !dbg !367
  %354 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %351, i32 0, i32 1, !dbg !367
  %355 = extractvalue { i64, i64 } %350, 1, !dbg !367
  store i64 %355, i64* %354, align 8, !dbg !367
  %356 = load i128, i128* %37, align 16, !dbg !367
  call void @llvm.dbg.value(metadata i128 %356, metadata !368, metadata !DIExpression()), !dbg !306
  %357 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %135, i64 %141), !dbg !369
  %358 = bitcast i128* %38 to { i64, i64 }*, !dbg !369
  %359 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %358, i32 0, i32 0, !dbg !369
  %360 = extractvalue { i64, i64 } %357, 0, !dbg !369
  store i64 %360, i64* %359, align 16, !dbg !369
  %361 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %358, i32 0, i32 1, !dbg !369
  %362 = extractvalue { i64, i64 } %357, 1, !dbg !369
  store i64 %362, i64* %361, align 8, !dbg !369
  %363 = load i128, i128* %38, align 16, !dbg !369
  store i128 %260, i128* %39, align 16, !dbg !370
  %364 = bitcast i128* %39 to { i64, i64 }*, !dbg !370
  %365 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %364, i32 0, i32 0, !dbg !370
  %366 = load i64, i64* %365, align 16, !dbg !370
  %367 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %364, i32 0, i32 1, !dbg !370
  %368 = load i64, i64* %367, align 8, !dbg !370
  store i128 %363, i128* %40, align 16, !dbg !370
  %369 = bitcast i128* %40 to { i64, i64 }*, !dbg !370
  %370 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 0, !dbg !370
  %371 = load i64, i64* %370, align 16, !dbg !370
  %372 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 1, !dbg !370
  %373 = load i64, i64* %372, align 8, !dbg !370
  %374 = call { i64, i64 } @FStar_UInt128_add(i64 %366, i64 %368, i64 %371, i64 %373), !dbg !370
  %375 = bitcast i128* %41 to { i64, i64 }*, !dbg !370
  %376 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %375, i32 0, i32 0, !dbg !370
  %377 = extractvalue { i64, i64 } %374, 0, !dbg !370
  store i64 %377, i64* %376, align 16, !dbg !370
  %378 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %375, i32 0, i32 1, !dbg !370
  %379 = extractvalue { i64, i64 } %374, 1, !dbg !370
  store i64 %379, i64* %378, align 8, !dbg !370
  %380 = load i128, i128* %41, align 16, !dbg !370
  call void @llvm.dbg.value(metadata i128 %380, metadata !371, metadata !DIExpression()), !dbg !306
  %381 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %135, i64 %143), !dbg !372
  %382 = bitcast i128* %42 to { i64, i64 }*, !dbg !372
  %383 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %382, i32 0, i32 0, !dbg !372
  %384 = extractvalue { i64, i64 } %381, 0, !dbg !372
  store i64 %384, i64* %383, align 16, !dbg !372
  %385 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %382, i32 0, i32 1, !dbg !372
  %386 = extractvalue { i64, i64 } %381, 1, !dbg !372
  store i64 %386, i64* %385, align 8, !dbg !372
  %387 = load i128, i128* %42, align 16, !dbg !372
  store i128 %284, i128* %43, align 16, !dbg !373
  %388 = bitcast i128* %43 to { i64, i64 }*, !dbg !373
  %389 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %388, i32 0, i32 0, !dbg !373
  %390 = load i64, i64* %389, align 16, !dbg !373
  %391 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %388, i32 0, i32 1, !dbg !373
  %392 = load i64, i64* %391, align 8, !dbg !373
  store i128 %387, i128* %44, align 16, !dbg !373
  %393 = bitcast i128* %44 to { i64, i64 }*, !dbg !373
  %394 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %393, i32 0, i32 0, !dbg !373
  %395 = load i64, i64* %394, align 16, !dbg !373
  %396 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %393, i32 0, i32 1, !dbg !373
  %397 = load i64, i64* %396, align 8, !dbg !373
  %398 = call { i64, i64 } @FStar_UInt128_add(i64 %390, i64 %392, i64 %395, i64 %397), !dbg !373
  %399 = bitcast i128* %45 to { i64, i64 }*, !dbg !373
  %400 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %399, i32 0, i32 0, !dbg !373
  %401 = extractvalue { i64, i64 } %398, 0, !dbg !373
  store i64 %401, i64* %400, align 16, !dbg !373
  %402 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %399, i32 0, i32 1, !dbg !373
  %403 = extractvalue { i64, i64 } %398, 1, !dbg !373
  store i64 %403, i64* %402, align 8, !dbg !373
  %404 = load i128, i128* %45, align 16, !dbg !373
  call void @llvm.dbg.value(metadata i128 %404, metadata !374, metadata !DIExpression()), !dbg !306
  %405 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %135, i64 %145), !dbg !375
  %406 = bitcast i128* %46 to { i64, i64 }*, !dbg !375
  %407 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %406, i32 0, i32 0, !dbg !375
  %408 = extractvalue { i64, i64 } %405, 0, !dbg !375
  store i64 %408, i64* %407, align 16, !dbg !375
  %409 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %406, i32 0, i32 1, !dbg !375
  %410 = extractvalue { i64, i64 } %405, 1, !dbg !375
  store i64 %410, i64* %409, align 8, !dbg !375
  %411 = load i128, i128* %46, align 16, !dbg !375
  store i128 %308, i128* %47, align 16, !dbg !376
  %412 = bitcast i128* %47 to { i64, i64 }*, !dbg !376
  %413 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %412, i32 0, i32 0, !dbg !376
  %414 = load i64, i64* %413, align 16, !dbg !376
  %415 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %412, i32 0, i32 1, !dbg !376
  %416 = load i64, i64* %415, align 8, !dbg !376
  store i128 %411, i128* %48, align 16, !dbg !376
  %417 = bitcast i128* %48 to { i64, i64 }*, !dbg !376
  %418 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %417, i32 0, i32 0, !dbg !376
  %419 = load i64, i64* %418, align 16, !dbg !376
  %420 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %417, i32 0, i32 1, !dbg !376
  %421 = load i64, i64* %420, align 8, !dbg !376
  %422 = call { i64, i64 } @FStar_UInt128_add(i64 %414, i64 %416, i64 %419, i64 %421), !dbg !376
  %423 = bitcast i128* %49 to { i64, i64 }*, !dbg !376
  %424 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %423, i32 0, i32 0, !dbg !376
  %425 = extractvalue { i64, i64 } %422, 0, !dbg !376
  store i64 %425, i64* %424, align 16, !dbg !376
  %426 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %423, i32 0, i32 1, !dbg !376
  %427 = extractvalue { i64, i64 } %422, 1, !dbg !376
  store i64 %427, i64* %426, align 8, !dbg !376
  %428 = load i128, i128* %49, align 16, !dbg !376
  call void @llvm.dbg.value(metadata i128 %428, metadata !377, metadata !DIExpression()), !dbg !306
  %429 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %137, i64 %151), !dbg !378
  %430 = bitcast i128* %50 to { i64, i64 }*, !dbg !378
  %431 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %430, i32 0, i32 0, !dbg !378
  %432 = extractvalue { i64, i64 } %429, 0, !dbg !378
  store i64 %432, i64* %431, align 16, !dbg !378
  %433 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %430, i32 0, i32 1, !dbg !378
  %434 = extractvalue { i64, i64 } %429, 1, !dbg !378
  store i64 %434, i64* %433, align 8, !dbg !378
  %435 = load i128, i128* %50, align 16, !dbg !378
  store i128 %332, i128* %51, align 16, !dbg !379
  %436 = bitcast i128* %51 to { i64, i64 }*, !dbg !379
  %437 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %436, i32 0, i32 0, !dbg !379
  %438 = load i64, i64* %437, align 16, !dbg !379
  %439 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %436, i32 0, i32 1, !dbg !379
  %440 = load i64, i64* %439, align 8, !dbg !379
  store i128 %435, i128* %52, align 16, !dbg !379
  %441 = bitcast i128* %52 to { i64, i64 }*, !dbg !379
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 0, !dbg !379
  %443 = load i64, i64* %442, align 16, !dbg !379
  %444 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 1, !dbg !379
  %445 = load i64, i64* %444, align 8, !dbg !379
  %446 = call { i64, i64 } @FStar_UInt128_add(i64 %438, i64 %440, i64 %443, i64 %445), !dbg !379
  %447 = bitcast i128* %53 to { i64, i64 }*, !dbg !379
  %448 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %447, i32 0, i32 0, !dbg !379
  %449 = extractvalue { i64, i64 } %446, 0, !dbg !379
  store i64 %449, i64* %448, align 16, !dbg !379
  %450 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %447, i32 0, i32 1, !dbg !379
  %451 = extractvalue { i64, i64 } %446, 1, !dbg !379
  store i64 %451, i64* %450, align 8, !dbg !379
  %452 = load i128, i128* %53, align 16, !dbg !379
  call void @llvm.dbg.value(metadata i128 %452, metadata !380, metadata !DIExpression()), !dbg !306
  %453 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %137, i64 %152), !dbg !381
  %454 = bitcast i128* %54 to { i64, i64 }*, !dbg !381
  %455 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %454, i32 0, i32 0, !dbg !381
  %456 = extractvalue { i64, i64 } %453, 0, !dbg !381
  store i64 %456, i64* %455, align 16, !dbg !381
  %457 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %454, i32 0, i32 1, !dbg !381
  %458 = extractvalue { i64, i64 } %453, 1, !dbg !381
  store i64 %458, i64* %457, align 8, !dbg !381
  %459 = load i128, i128* %54, align 16, !dbg !381
  store i128 %356, i128* %55, align 16, !dbg !382
  %460 = bitcast i128* %55 to { i64, i64 }*, !dbg !382
  %461 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %460, i32 0, i32 0, !dbg !382
  %462 = load i64, i64* %461, align 16, !dbg !382
  %463 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %460, i32 0, i32 1, !dbg !382
  %464 = load i64, i64* %463, align 8, !dbg !382
  store i128 %459, i128* %56, align 16, !dbg !382
  %465 = bitcast i128* %56 to { i64, i64 }*, !dbg !382
  %466 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 0, !dbg !382
  %467 = load i64, i64* %466, align 16, !dbg !382
  %468 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 1, !dbg !382
  %469 = load i64, i64* %468, align 8, !dbg !382
  %470 = call { i64, i64 } @FStar_UInt128_add(i64 %462, i64 %464, i64 %467, i64 %469), !dbg !382
  %471 = bitcast i128* %57 to { i64, i64 }*, !dbg !382
  %472 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %471, i32 0, i32 0, !dbg !382
  %473 = extractvalue { i64, i64 } %470, 0, !dbg !382
  store i64 %473, i64* %472, align 16, !dbg !382
  %474 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %471, i32 0, i32 1, !dbg !382
  %475 = extractvalue { i64, i64 } %470, 1, !dbg !382
  store i64 %475, i64* %474, align 8, !dbg !382
  %476 = load i128, i128* %57, align 16, !dbg !382
  call void @llvm.dbg.value(metadata i128 %476, metadata !383, metadata !DIExpression()), !dbg !306
  %477 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %137, i64 %153), !dbg !384
  %478 = bitcast i128* %58 to { i64, i64 }*, !dbg !384
  %479 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %478, i32 0, i32 0, !dbg !384
  %480 = extractvalue { i64, i64 } %477, 0, !dbg !384
  store i64 %480, i64* %479, align 16, !dbg !384
  %481 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %478, i32 0, i32 1, !dbg !384
  %482 = extractvalue { i64, i64 } %477, 1, !dbg !384
  store i64 %482, i64* %481, align 8, !dbg !384
  %483 = load i128, i128* %58, align 16, !dbg !384
  store i128 %380, i128* %59, align 16, !dbg !385
  %484 = bitcast i128* %59 to { i64, i64 }*, !dbg !385
  %485 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %484, i32 0, i32 0, !dbg !385
  %486 = load i64, i64* %485, align 16, !dbg !385
  %487 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %484, i32 0, i32 1, !dbg !385
  %488 = load i64, i64* %487, align 8, !dbg !385
  store i128 %483, i128* %60, align 16, !dbg !385
  %489 = bitcast i128* %60 to { i64, i64 }*, !dbg !385
  %490 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 0, !dbg !385
  %491 = load i64, i64* %490, align 16, !dbg !385
  %492 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 1, !dbg !385
  %493 = load i64, i64* %492, align 8, !dbg !385
  %494 = call { i64, i64 } @FStar_UInt128_add(i64 %486, i64 %488, i64 %491, i64 %493), !dbg !385
  %495 = bitcast i128* %61 to { i64, i64 }*, !dbg !385
  %496 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %495, i32 0, i32 0, !dbg !385
  %497 = extractvalue { i64, i64 } %494, 0, !dbg !385
  store i64 %497, i64* %496, align 16, !dbg !385
  %498 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %495, i32 0, i32 1, !dbg !385
  %499 = extractvalue { i64, i64 } %494, 1, !dbg !385
  store i64 %499, i64* %498, align 8, !dbg !385
  %500 = load i128, i128* %61, align 16, !dbg !385
  call void @llvm.dbg.value(metadata i128 %500, metadata !386, metadata !DIExpression()), !dbg !306
  %501 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %137, i64 %141), !dbg !387
  %502 = bitcast i128* %62 to { i64, i64 }*, !dbg !387
  %503 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %502, i32 0, i32 0, !dbg !387
  %504 = extractvalue { i64, i64 } %501, 0, !dbg !387
  store i64 %504, i64* %503, align 16, !dbg !387
  %505 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %502, i32 0, i32 1, !dbg !387
  %506 = extractvalue { i64, i64 } %501, 1, !dbg !387
  store i64 %506, i64* %505, align 8, !dbg !387
  %507 = load i128, i128* %62, align 16, !dbg !387
  store i128 %404, i128* %63, align 16, !dbg !388
  %508 = bitcast i128* %63 to { i64, i64 }*, !dbg !388
  %509 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %508, i32 0, i32 0, !dbg !388
  %510 = load i64, i64* %509, align 16, !dbg !388
  %511 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %508, i32 0, i32 1, !dbg !388
  %512 = load i64, i64* %511, align 8, !dbg !388
  store i128 %507, i128* %64, align 16, !dbg !388
  %513 = bitcast i128* %64 to { i64, i64 }*, !dbg !388
  %514 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %513, i32 0, i32 0, !dbg !388
  %515 = load i64, i64* %514, align 16, !dbg !388
  %516 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %513, i32 0, i32 1, !dbg !388
  %517 = load i64, i64* %516, align 8, !dbg !388
  %518 = call { i64, i64 } @FStar_UInt128_add(i64 %510, i64 %512, i64 %515, i64 %517), !dbg !388
  %519 = bitcast i128* %65 to { i64, i64 }*, !dbg !388
  %520 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %519, i32 0, i32 0, !dbg !388
  %521 = extractvalue { i64, i64 } %518, 0, !dbg !388
  store i64 %521, i64* %520, align 16, !dbg !388
  %522 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %519, i32 0, i32 1, !dbg !388
  %523 = extractvalue { i64, i64 } %518, 1, !dbg !388
  store i64 %523, i64* %522, align 8, !dbg !388
  %524 = load i128, i128* %65, align 16, !dbg !388
  call void @llvm.dbg.value(metadata i128 %524, metadata !389, metadata !DIExpression()), !dbg !306
  %525 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %137, i64 %143), !dbg !390
  %526 = bitcast i128* %66 to { i64, i64 }*, !dbg !390
  %527 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %526, i32 0, i32 0, !dbg !390
  %528 = extractvalue { i64, i64 } %525, 0, !dbg !390
  store i64 %528, i64* %527, align 16, !dbg !390
  %529 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %526, i32 0, i32 1, !dbg !390
  %530 = extractvalue { i64, i64 } %525, 1, !dbg !390
  store i64 %530, i64* %529, align 8, !dbg !390
  %531 = load i128, i128* %66, align 16, !dbg !390
  store i128 %428, i128* %67, align 16, !dbg !391
  %532 = bitcast i128* %67 to { i64, i64 }*, !dbg !391
  %533 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %532, i32 0, i32 0, !dbg !391
  %534 = load i64, i64* %533, align 16, !dbg !391
  %535 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %532, i32 0, i32 1, !dbg !391
  %536 = load i64, i64* %535, align 8, !dbg !391
  store i128 %531, i128* %68, align 16, !dbg !391
  %537 = bitcast i128* %68 to { i64, i64 }*, !dbg !391
  %538 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %537, i32 0, i32 0, !dbg !391
  %539 = load i64, i64* %538, align 16, !dbg !391
  %540 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %537, i32 0, i32 1, !dbg !391
  %541 = load i64, i64* %540, align 8, !dbg !391
  %542 = call { i64, i64 } @FStar_UInt128_add(i64 %534, i64 %536, i64 %539, i64 %541), !dbg !391
  %543 = bitcast i128* %69 to { i64, i64 }*, !dbg !391
  %544 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %543, i32 0, i32 0, !dbg !391
  %545 = extractvalue { i64, i64 } %542, 0, !dbg !391
  store i64 %545, i64* %544, align 16, !dbg !391
  %546 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %543, i32 0, i32 1, !dbg !391
  %547 = extractvalue { i64, i64 } %542, 1, !dbg !391
  store i64 %547, i64* %546, align 8, !dbg !391
  %548 = load i128, i128* %69, align 16, !dbg !391
  call void @llvm.dbg.value(metadata i128 %548, metadata !392, metadata !DIExpression()), !dbg !306
  %549 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %139, i64 %150), !dbg !393
  %550 = bitcast i128* %70 to { i64, i64 }*, !dbg !393
  %551 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %550, i32 0, i32 0, !dbg !393
  %552 = extractvalue { i64, i64 } %549, 0, !dbg !393
  store i64 %552, i64* %551, align 16, !dbg !393
  %553 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %550, i32 0, i32 1, !dbg !393
  %554 = extractvalue { i64, i64 } %549, 1, !dbg !393
  store i64 %554, i64* %553, align 8, !dbg !393
  %555 = load i128, i128* %70, align 16, !dbg !393
  store i128 %452, i128* %71, align 16, !dbg !394
  %556 = bitcast i128* %71 to { i64, i64 }*, !dbg !394
  %557 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %556, i32 0, i32 0, !dbg !394
  %558 = load i64, i64* %557, align 16, !dbg !394
  %559 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %556, i32 0, i32 1, !dbg !394
  %560 = load i64, i64* %559, align 8, !dbg !394
  store i128 %555, i128* %72, align 16, !dbg !394
  %561 = bitcast i128* %72 to { i64, i64 }*, !dbg !394
  %562 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %561, i32 0, i32 0, !dbg !394
  %563 = load i64, i64* %562, align 16, !dbg !394
  %564 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %561, i32 0, i32 1, !dbg !394
  %565 = load i64, i64* %564, align 8, !dbg !394
  %566 = call { i64, i64 } @FStar_UInt128_add(i64 %558, i64 %560, i64 %563, i64 %565), !dbg !394
  %567 = bitcast i128* %73 to { i64, i64 }*, !dbg !394
  %568 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %567, i32 0, i32 0, !dbg !394
  %569 = extractvalue { i64, i64 } %566, 0, !dbg !394
  store i64 %569, i64* %568, align 16, !dbg !394
  %570 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %567, i32 0, i32 1, !dbg !394
  %571 = extractvalue { i64, i64 } %566, 1, !dbg !394
  store i64 %571, i64* %570, align 8, !dbg !394
  %572 = load i128, i128* %73, align 16, !dbg !394
  call void @llvm.dbg.value(metadata i128 %572, metadata !395, metadata !DIExpression()), !dbg !306
  %573 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %139, i64 %151), !dbg !396
  %574 = bitcast i128* %74 to { i64, i64 }*, !dbg !396
  %575 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %574, i32 0, i32 0, !dbg !396
  %576 = extractvalue { i64, i64 } %573, 0, !dbg !396
  store i64 %576, i64* %575, align 16, !dbg !396
  %577 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %574, i32 0, i32 1, !dbg !396
  %578 = extractvalue { i64, i64 } %573, 1, !dbg !396
  store i64 %578, i64* %577, align 8, !dbg !396
  %579 = load i128, i128* %74, align 16, !dbg !396
  store i128 %476, i128* %75, align 16, !dbg !397
  %580 = bitcast i128* %75 to { i64, i64 }*, !dbg !397
  %581 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %580, i32 0, i32 0, !dbg !397
  %582 = load i64, i64* %581, align 16, !dbg !397
  %583 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %580, i32 0, i32 1, !dbg !397
  %584 = load i64, i64* %583, align 8, !dbg !397
  store i128 %579, i128* %76, align 16, !dbg !397
  %585 = bitcast i128* %76 to { i64, i64 }*, !dbg !397
  %586 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 0, !dbg !397
  %587 = load i64, i64* %586, align 16, !dbg !397
  %588 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 1, !dbg !397
  %589 = load i64, i64* %588, align 8, !dbg !397
  %590 = call { i64, i64 } @FStar_UInt128_add(i64 %582, i64 %584, i64 %587, i64 %589), !dbg !397
  %591 = bitcast i128* %77 to { i64, i64 }*, !dbg !397
  %592 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %591, i32 0, i32 0, !dbg !397
  %593 = extractvalue { i64, i64 } %590, 0, !dbg !397
  store i64 %593, i64* %592, align 16, !dbg !397
  %594 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %591, i32 0, i32 1, !dbg !397
  %595 = extractvalue { i64, i64 } %590, 1, !dbg !397
  store i64 %595, i64* %594, align 8, !dbg !397
  %596 = load i128, i128* %77, align 16, !dbg !397
  call void @llvm.dbg.value(metadata i128 %596, metadata !398, metadata !DIExpression()), !dbg !306
  %597 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %139, i64 %152), !dbg !399
  %598 = bitcast i128* %78 to { i64, i64 }*, !dbg !399
  %599 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %598, i32 0, i32 0, !dbg !399
  %600 = extractvalue { i64, i64 } %597, 0, !dbg !399
  store i64 %600, i64* %599, align 16, !dbg !399
  %601 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %598, i32 0, i32 1, !dbg !399
  %602 = extractvalue { i64, i64 } %597, 1, !dbg !399
  store i64 %602, i64* %601, align 8, !dbg !399
  %603 = load i128, i128* %78, align 16, !dbg !399
  store i128 %500, i128* %79, align 16, !dbg !400
  %604 = bitcast i128* %79 to { i64, i64 }*, !dbg !400
  %605 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %604, i32 0, i32 0, !dbg !400
  %606 = load i64, i64* %605, align 16, !dbg !400
  %607 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %604, i32 0, i32 1, !dbg !400
  %608 = load i64, i64* %607, align 8, !dbg !400
  store i128 %603, i128* %80, align 16, !dbg !400
  %609 = bitcast i128* %80 to { i64, i64 }*, !dbg !400
  %610 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %609, i32 0, i32 0, !dbg !400
  %611 = load i64, i64* %610, align 16, !dbg !400
  %612 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %609, i32 0, i32 1, !dbg !400
  %613 = load i64, i64* %612, align 8, !dbg !400
  %614 = call { i64, i64 } @FStar_UInt128_add(i64 %606, i64 %608, i64 %611, i64 %613), !dbg !400
  %615 = bitcast i128* %81 to { i64, i64 }*, !dbg !400
  %616 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %615, i32 0, i32 0, !dbg !400
  %617 = extractvalue { i64, i64 } %614, 0, !dbg !400
  store i64 %617, i64* %616, align 16, !dbg !400
  %618 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %615, i32 0, i32 1, !dbg !400
  %619 = extractvalue { i64, i64 } %614, 1, !dbg !400
  store i64 %619, i64* %618, align 8, !dbg !400
  %620 = load i128, i128* %81, align 16, !dbg !400
  call void @llvm.dbg.value(metadata i128 %620, metadata !401, metadata !DIExpression()), !dbg !306
  %621 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %139, i64 %153), !dbg !402
  %622 = bitcast i128* %82 to { i64, i64 }*, !dbg !402
  %623 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %622, i32 0, i32 0, !dbg !402
  %624 = extractvalue { i64, i64 } %621, 0, !dbg !402
  store i64 %624, i64* %623, align 16, !dbg !402
  %625 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %622, i32 0, i32 1, !dbg !402
  %626 = extractvalue { i64, i64 } %621, 1, !dbg !402
  store i64 %626, i64* %625, align 8, !dbg !402
  %627 = load i128, i128* %82, align 16, !dbg !402
  store i128 %524, i128* %83, align 16, !dbg !403
  %628 = bitcast i128* %83 to { i64, i64 }*, !dbg !403
  %629 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %628, i32 0, i32 0, !dbg !403
  %630 = load i64, i64* %629, align 16, !dbg !403
  %631 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %628, i32 0, i32 1, !dbg !403
  %632 = load i64, i64* %631, align 8, !dbg !403
  store i128 %627, i128* %84, align 16, !dbg !403
  %633 = bitcast i128* %84 to { i64, i64 }*, !dbg !403
  %634 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %633, i32 0, i32 0, !dbg !403
  %635 = load i64, i64* %634, align 16, !dbg !403
  %636 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %633, i32 0, i32 1, !dbg !403
  %637 = load i64, i64* %636, align 8, !dbg !403
  %638 = call { i64, i64 } @FStar_UInt128_add(i64 %630, i64 %632, i64 %635, i64 %637), !dbg !403
  %639 = bitcast i128* %85 to { i64, i64 }*, !dbg !403
  %640 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %639, i32 0, i32 0, !dbg !403
  %641 = extractvalue { i64, i64 } %638, 0, !dbg !403
  store i64 %641, i64* %640, align 16, !dbg !403
  %642 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %639, i32 0, i32 1, !dbg !403
  %643 = extractvalue { i64, i64 } %638, 1, !dbg !403
  store i64 %643, i64* %642, align 8, !dbg !403
  %644 = load i128, i128* %85, align 16, !dbg !403
  call void @llvm.dbg.value(metadata i128 %644, metadata !404, metadata !DIExpression()), !dbg !306
  %645 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %139, i64 %141), !dbg !405
  %646 = bitcast i128* %86 to { i64, i64 }*, !dbg !405
  %647 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %646, i32 0, i32 0, !dbg !405
  %648 = extractvalue { i64, i64 } %645, 0, !dbg !405
  store i64 %648, i64* %647, align 16, !dbg !405
  %649 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %646, i32 0, i32 1, !dbg !405
  %650 = extractvalue { i64, i64 } %645, 1, !dbg !405
  store i64 %650, i64* %649, align 8, !dbg !405
  %651 = load i128, i128* %86, align 16, !dbg !405
  store i128 %548, i128* %87, align 16, !dbg !406
  %652 = bitcast i128* %87 to { i64, i64 }*, !dbg !406
  %653 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %652, i32 0, i32 0, !dbg !406
  %654 = load i64, i64* %653, align 16, !dbg !406
  %655 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %652, i32 0, i32 1, !dbg !406
  %656 = load i64, i64* %655, align 8, !dbg !406
  store i128 %651, i128* %88, align 16, !dbg !406
  %657 = bitcast i128* %88 to { i64, i64 }*, !dbg !406
  %658 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %657, i32 0, i32 0, !dbg !406
  %659 = load i64, i64* %658, align 16, !dbg !406
  %660 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %657, i32 0, i32 1, !dbg !406
  %661 = load i64, i64* %660, align 8, !dbg !406
  %662 = call { i64, i64 } @FStar_UInt128_add(i64 %654, i64 %656, i64 %659, i64 %661), !dbg !406
  %663 = bitcast i128* %89 to { i64, i64 }*, !dbg !406
  %664 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %663, i32 0, i32 0, !dbg !406
  %665 = extractvalue { i64, i64 } %662, 0, !dbg !406
  store i64 %665, i64* %664, align 16, !dbg !406
  %666 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %663, i32 0, i32 1, !dbg !406
  %667 = extractvalue { i64, i64 } %662, 1, !dbg !406
  store i64 %667, i64* %666, align 8, !dbg !406
  %668 = load i128, i128* %89, align 16, !dbg !406
  call void @llvm.dbg.value(metadata i128 %668, metadata !407, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i128 %572, metadata !408, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i128 %596, metadata !409, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i128 %620, metadata !410, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i128 %644, metadata !411, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i128 %668, metadata !412, metadata !DIExpression()), !dbg !306
  %669 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !413
  %670 = bitcast i128* %90 to { i64, i64 }*, !dbg !413
  %671 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %670, i32 0, i32 0, !dbg !413
  %672 = extractvalue { i64, i64 } %669, 0, !dbg !413
  store i64 %672, i64* %671, align 16, !dbg !413
  %673 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %670, i32 0, i32 1, !dbg !413
  %674 = extractvalue { i64, i64 } %669, 1, !dbg !413
  store i64 %674, i64* %673, align 8, !dbg !413
  %675 = load i128, i128* %90, align 16, !dbg !413
  store i128 %572, i128* %91, align 16, !dbg !414
  %676 = bitcast i128* %91 to { i64, i64 }*, !dbg !414
  %677 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %676, i32 0, i32 0, !dbg !414
  %678 = load i64, i64* %677, align 16, !dbg !414
  %679 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %676, i32 0, i32 1, !dbg !414
  %680 = load i64, i64* %679, align 8, !dbg !414
  store i128 %675, i128* %92, align 16, !dbg !414
  %681 = bitcast i128* %92 to { i64, i64 }*, !dbg !414
  %682 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %681, i32 0, i32 0, !dbg !414
  %683 = load i64, i64* %682, align 16, !dbg !414
  %684 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %681, i32 0, i32 1, !dbg !414
  %685 = load i64, i64* %684, align 8, !dbg !414
  %686 = call { i64, i64 } @FStar_UInt128_add(i64 %678, i64 %680, i64 %683, i64 %685), !dbg !414
  %687 = bitcast i128* %93 to { i64, i64 }*, !dbg !414
  %688 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %687, i32 0, i32 0, !dbg !414
  %689 = extractvalue { i64, i64 } %686, 0, !dbg !414
  store i64 %689, i64* %688, align 16, !dbg !414
  %690 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %687, i32 0, i32 1, !dbg !414
  %691 = extractvalue { i64, i64 } %686, 1, !dbg !414
  store i64 %691, i64* %690, align 8, !dbg !414
  %692 = load i128, i128* %93, align 16, !dbg !414
  call void @llvm.dbg.value(metadata i128 %692, metadata !415, metadata !DIExpression()), !dbg !306
  store i128 %692, i128* %94, align 16, !dbg !416
  %693 = bitcast i128* %94 to { i64, i64 }*, !dbg !416
  %694 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %693, i32 0, i32 0, !dbg !416
  %695 = load i64, i64* %694, align 16, !dbg !416
  %696 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %693, i32 0, i32 1, !dbg !416
  %697 = load i64, i64* %696, align 8, !dbg !416
  %698 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %695, i64 %697), !dbg !416
  %699 = and i64 %698, 2251799813685247, !dbg !417
  call void @llvm.dbg.value(metadata i64 %699, metadata !418, metadata !DIExpression()), !dbg !306
  store i128 %692, i128* %95, align 16, !dbg !419
  %700 = bitcast i128* %95 to { i64, i64 }*, !dbg !419
  %701 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %700, i32 0, i32 0, !dbg !419
  %702 = load i64, i64* %701, align 16, !dbg !419
  %703 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %700, i32 0, i32 1, !dbg !419
  %704 = load i64, i64* %703, align 8, !dbg !419
  %705 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %702, i64 %704, i32 51), !dbg !419
  %706 = bitcast i128* %96 to { i64, i64 }*, !dbg !419
  %707 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %706, i32 0, i32 0, !dbg !419
  %708 = extractvalue { i64, i64 } %705, 0, !dbg !419
  store i64 %708, i64* %707, align 16, !dbg !419
  %709 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %706, i32 0, i32 1, !dbg !419
  %710 = extractvalue { i64, i64 } %705, 1, !dbg !419
  store i64 %710, i64* %709, align 8, !dbg !419
  %711 = load i128, i128* %96, align 16, !dbg !419
  store i128 %711, i128* %97, align 16, !dbg !420
  %712 = bitcast i128* %97 to { i64, i64 }*, !dbg !420
  %713 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %712, i32 0, i32 0, !dbg !420
  %714 = load i64, i64* %713, align 16, !dbg !420
  %715 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %712, i32 0, i32 1, !dbg !420
  %716 = load i64, i64* %715, align 8, !dbg !420
  %717 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %714, i64 %716), !dbg !420
  call void @llvm.dbg.value(metadata i64 %717, metadata !421, metadata !DIExpression()), !dbg !306
  %718 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %717), !dbg !422
  %719 = bitcast i128* %98 to { i64, i64 }*, !dbg !422
  %720 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %719, i32 0, i32 0, !dbg !422
  %721 = extractvalue { i64, i64 } %718, 0, !dbg !422
  store i64 %721, i64* %720, align 16, !dbg !422
  %722 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %719, i32 0, i32 1, !dbg !422
  %723 = extractvalue { i64, i64 } %718, 1, !dbg !422
  store i64 %723, i64* %722, align 8, !dbg !422
  %724 = load i128, i128* %98, align 16, !dbg !422
  store i128 %596, i128* %99, align 16, !dbg !423
  %725 = bitcast i128* %99 to { i64, i64 }*, !dbg !423
  %726 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %725, i32 0, i32 0, !dbg !423
  %727 = load i64, i64* %726, align 16, !dbg !423
  %728 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %725, i32 0, i32 1, !dbg !423
  %729 = load i64, i64* %728, align 8, !dbg !423
  store i128 %724, i128* %100, align 16, !dbg !423
  %730 = bitcast i128* %100 to { i64, i64 }*, !dbg !423
  %731 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %730, i32 0, i32 0, !dbg !423
  %732 = load i64, i64* %731, align 16, !dbg !423
  %733 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %730, i32 0, i32 1, !dbg !423
  %734 = load i64, i64* %733, align 8, !dbg !423
  %735 = call { i64, i64 } @FStar_UInt128_add(i64 %727, i64 %729, i64 %732, i64 %734), !dbg !423
  %736 = bitcast i128* %101 to { i64, i64 }*, !dbg !423
  %737 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %736, i32 0, i32 0, !dbg !423
  %738 = extractvalue { i64, i64 } %735, 0, !dbg !423
  store i64 %738, i64* %737, align 16, !dbg !423
  %739 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %736, i32 0, i32 1, !dbg !423
  %740 = extractvalue { i64, i64 } %735, 1, !dbg !423
  store i64 %740, i64* %739, align 8, !dbg !423
  %741 = load i128, i128* %101, align 16, !dbg !423
  call void @llvm.dbg.value(metadata i128 %741, metadata !424, metadata !DIExpression()), !dbg !306
  store i128 %741, i128* %102, align 16, !dbg !425
  %742 = bitcast i128* %102 to { i64, i64 }*, !dbg !425
  %743 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %742, i32 0, i32 0, !dbg !425
  %744 = load i64, i64* %743, align 16, !dbg !425
  %745 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %742, i32 0, i32 1, !dbg !425
  %746 = load i64, i64* %745, align 8, !dbg !425
  %747 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %744, i64 %746), !dbg !425
  %748 = and i64 %747, 2251799813685247, !dbg !426
  call void @llvm.dbg.value(metadata i64 %748, metadata !427, metadata !DIExpression()), !dbg !306
  store i128 %741, i128* %103, align 16, !dbg !428
  %749 = bitcast i128* %103 to { i64, i64 }*, !dbg !428
  %750 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %749, i32 0, i32 0, !dbg !428
  %751 = load i64, i64* %750, align 16, !dbg !428
  %752 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %749, i32 0, i32 1, !dbg !428
  %753 = load i64, i64* %752, align 8, !dbg !428
  %754 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %751, i64 %753, i32 51), !dbg !428
  %755 = bitcast i128* %104 to { i64, i64 }*, !dbg !428
  %756 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %755, i32 0, i32 0, !dbg !428
  %757 = extractvalue { i64, i64 } %754, 0, !dbg !428
  store i64 %757, i64* %756, align 16, !dbg !428
  %758 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %755, i32 0, i32 1, !dbg !428
  %759 = extractvalue { i64, i64 } %754, 1, !dbg !428
  store i64 %759, i64* %758, align 8, !dbg !428
  %760 = load i128, i128* %104, align 16, !dbg !428
  store i128 %760, i128* %105, align 16, !dbg !429
  %761 = bitcast i128* %105 to { i64, i64 }*, !dbg !429
  %762 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %761, i32 0, i32 0, !dbg !429
  %763 = load i64, i64* %762, align 16, !dbg !429
  %764 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %761, i32 0, i32 1, !dbg !429
  %765 = load i64, i64* %764, align 8, !dbg !429
  %766 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %763, i64 %765), !dbg !429
  call void @llvm.dbg.value(metadata i64 %766, metadata !430, metadata !DIExpression()), !dbg !306
  %767 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %766), !dbg !431
  %768 = bitcast i128* %106 to { i64, i64 }*, !dbg !431
  %769 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %768, i32 0, i32 0, !dbg !431
  %770 = extractvalue { i64, i64 } %767, 0, !dbg !431
  store i64 %770, i64* %769, align 16, !dbg !431
  %771 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %768, i32 0, i32 1, !dbg !431
  %772 = extractvalue { i64, i64 } %767, 1, !dbg !431
  store i64 %772, i64* %771, align 8, !dbg !431
  %773 = load i128, i128* %106, align 16, !dbg !431
  store i128 %620, i128* %107, align 16, !dbg !432
  %774 = bitcast i128* %107 to { i64, i64 }*, !dbg !432
  %775 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %774, i32 0, i32 0, !dbg !432
  %776 = load i64, i64* %775, align 16, !dbg !432
  %777 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %774, i32 0, i32 1, !dbg !432
  %778 = load i64, i64* %777, align 8, !dbg !432
  store i128 %773, i128* %108, align 16, !dbg !432
  %779 = bitcast i128* %108 to { i64, i64 }*, !dbg !432
  %780 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %779, i32 0, i32 0, !dbg !432
  %781 = load i64, i64* %780, align 16, !dbg !432
  %782 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %779, i32 0, i32 1, !dbg !432
  %783 = load i64, i64* %782, align 8, !dbg !432
  %784 = call { i64, i64 } @FStar_UInt128_add(i64 %776, i64 %778, i64 %781, i64 %783), !dbg !432
  %785 = bitcast i128* %109 to { i64, i64 }*, !dbg !432
  %786 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %785, i32 0, i32 0, !dbg !432
  %787 = extractvalue { i64, i64 } %784, 0, !dbg !432
  store i64 %787, i64* %786, align 16, !dbg !432
  %788 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %785, i32 0, i32 1, !dbg !432
  %789 = extractvalue { i64, i64 } %784, 1, !dbg !432
  store i64 %789, i64* %788, align 8, !dbg !432
  %790 = load i128, i128* %109, align 16, !dbg !432
  call void @llvm.dbg.value(metadata i128 %790, metadata !433, metadata !DIExpression()), !dbg !306
  store i128 %790, i128* %110, align 16, !dbg !434
  %791 = bitcast i128* %110 to { i64, i64 }*, !dbg !434
  %792 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %791, i32 0, i32 0, !dbg !434
  %793 = load i64, i64* %792, align 16, !dbg !434
  %794 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %791, i32 0, i32 1, !dbg !434
  %795 = load i64, i64* %794, align 8, !dbg !434
  %796 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %793, i64 %795), !dbg !434
  %797 = and i64 %796, 2251799813685247, !dbg !435
  call void @llvm.dbg.value(metadata i64 %797, metadata !436, metadata !DIExpression()), !dbg !306
  store i128 %790, i128* %111, align 16, !dbg !437
  %798 = bitcast i128* %111 to { i64, i64 }*, !dbg !437
  %799 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %798, i32 0, i32 0, !dbg !437
  %800 = load i64, i64* %799, align 16, !dbg !437
  %801 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %798, i32 0, i32 1, !dbg !437
  %802 = load i64, i64* %801, align 8, !dbg !437
  %803 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %800, i64 %802, i32 51), !dbg !437
  %804 = bitcast i128* %112 to { i64, i64 }*, !dbg !437
  %805 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %804, i32 0, i32 0, !dbg !437
  %806 = extractvalue { i64, i64 } %803, 0, !dbg !437
  store i64 %806, i64* %805, align 16, !dbg !437
  %807 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %804, i32 0, i32 1, !dbg !437
  %808 = extractvalue { i64, i64 } %803, 1, !dbg !437
  store i64 %808, i64* %807, align 8, !dbg !437
  %809 = load i128, i128* %112, align 16, !dbg !437
  store i128 %809, i128* %113, align 16, !dbg !438
  %810 = bitcast i128* %113 to { i64, i64 }*, !dbg !438
  %811 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %810, i32 0, i32 0, !dbg !438
  %812 = load i64, i64* %811, align 16, !dbg !438
  %813 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %810, i32 0, i32 1, !dbg !438
  %814 = load i64, i64* %813, align 8, !dbg !438
  %815 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %812, i64 %814), !dbg !438
  call void @llvm.dbg.value(metadata i64 %815, metadata !439, metadata !DIExpression()), !dbg !306
  %816 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %815), !dbg !440
  %817 = bitcast i128* %114 to { i64, i64 }*, !dbg !440
  %818 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %817, i32 0, i32 0, !dbg !440
  %819 = extractvalue { i64, i64 } %816, 0, !dbg !440
  store i64 %819, i64* %818, align 16, !dbg !440
  %820 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %817, i32 0, i32 1, !dbg !440
  %821 = extractvalue { i64, i64 } %816, 1, !dbg !440
  store i64 %821, i64* %820, align 8, !dbg !440
  %822 = load i128, i128* %114, align 16, !dbg !440
  store i128 %644, i128* %115, align 16, !dbg !441
  %823 = bitcast i128* %115 to { i64, i64 }*, !dbg !441
  %824 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %823, i32 0, i32 0, !dbg !441
  %825 = load i64, i64* %824, align 16, !dbg !441
  %826 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %823, i32 0, i32 1, !dbg !441
  %827 = load i64, i64* %826, align 8, !dbg !441
  store i128 %822, i128* %116, align 16, !dbg !441
  %828 = bitcast i128* %116 to { i64, i64 }*, !dbg !441
  %829 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %828, i32 0, i32 0, !dbg !441
  %830 = load i64, i64* %829, align 16, !dbg !441
  %831 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %828, i32 0, i32 1, !dbg !441
  %832 = load i64, i64* %831, align 8, !dbg !441
  %833 = call { i64, i64 } @FStar_UInt128_add(i64 %825, i64 %827, i64 %830, i64 %832), !dbg !441
  %834 = bitcast i128* %117 to { i64, i64 }*, !dbg !441
  %835 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %834, i32 0, i32 0, !dbg !441
  %836 = extractvalue { i64, i64 } %833, 0, !dbg !441
  store i64 %836, i64* %835, align 16, !dbg !441
  %837 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %834, i32 0, i32 1, !dbg !441
  %838 = extractvalue { i64, i64 } %833, 1, !dbg !441
  store i64 %838, i64* %837, align 8, !dbg !441
  %839 = load i128, i128* %117, align 16, !dbg !441
  call void @llvm.dbg.value(metadata i128 %839, metadata !442, metadata !DIExpression()), !dbg !306
  store i128 %839, i128* %118, align 16, !dbg !443
  %840 = bitcast i128* %118 to { i64, i64 }*, !dbg !443
  %841 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %840, i32 0, i32 0, !dbg !443
  %842 = load i64, i64* %841, align 16, !dbg !443
  %843 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %840, i32 0, i32 1, !dbg !443
  %844 = load i64, i64* %843, align 8, !dbg !443
  %845 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %842, i64 %844), !dbg !443
  %846 = and i64 %845, 2251799813685247, !dbg !444
  call void @llvm.dbg.value(metadata i64 %846, metadata !445, metadata !DIExpression()), !dbg !306
  store i128 %839, i128* %119, align 16, !dbg !446
  %847 = bitcast i128* %119 to { i64, i64 }*, !dbg !446
  %848 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %847, i32 0, i32 0, !dbg !446
  %849 = load i64, i64* %848, align 16, !dbg !446
  %850 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %847, i32 0, i32 1, !dbg !446
  %851 = load i64, i64* %850, align 8, !dbg !446
  %852 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %849, i64 %851, i32 51), !dbg !446
  %853 = bitcast i128* %120 to { i64, i64 }*, !dbg !446
  %854 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %853, i32 0, i32 0, !dbg !446
  %855 = extractvalue { i64, i64 } %852, 0, !dbg !446
  store i64 %855, i64* %854, align 16, !dbg !446
  %856 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %853, i32 0, i32 1, !dbg !446
  %857 = extractvalue { i64, i64 } %852, 1, !dbg !446
  store i64 %857, i64* %856, align 8, !dbg !446
  %858 = load i128, i128* %120, align 16, !dbg !446
  store i128 %858, i128* %121, align 16, !dbg !447
  %859 = bitcast i128* %121 to { i64, i64 }*, !dbg !447
  %860 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %859, i32 0, i32 0, !dbg !447
  %861 = load i64, i64* %860, align 16, !dbg !447
  %862 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %859, i32 0, i32 1, !dbg !447
  %863 = load i64, i64* %862, align 8, !dbg !447
  %864 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %861, i64 %863), !dbg !447
  call void @llvm.dbg.value(metadata i64 %864, metadata !448, metadata !DIExpression()), !dbg !306
  %865 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %864), !dbg !449
  %866 = bitcast i128* %122 to { i64, i64 }*, !dbg !449
  %867 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %866, i32 0, i32 0, !dbg !449
  %868 = extractvalue { i64, i64 } %865, 0, !dbg !449
  store i64 %868, i64* %867, align 16, !dbg !449
  %869 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %866, i32 0, i32 1, !dbg !449
  %870 = extractvalue { i64, i64 } %865, 1, !dbg !449
  store i64 %870, i64* %869, align 8, !dbg !449
  %871 = load i128, i128* %122, align 16, !dbg !449
  store i128 %668, i128* %123, align 16, !dbg !450
  %872 = bitcast i128* %123 to { i64, i64 }*, !dbg !450
  %873 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %872, i32 0, i32 0, !dbg !450
  %874 = load i64, i64* %873, align 16, !dbg !450
  %875 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %872, i32 0, i32 1, !dbg !450
  %876 = load i64, i64* %875, align 8, !dbg !450
  store i128 %871, i128* %124, align 16, !dbg !450
  %877 = bitcast i128* %124 to { i64, i64 }*, !dbg !450
  %878 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %877, i32 0, i32 0, !dbg !450
  %879 = load i64, i64* %878, align 16, !dbg !450
  %880 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %877, i32 0, i32 1, !dbg !450
  %881 = load i64, i64* %880, align 8, !dbg !450
  %882 = call { i64, i64 } @FStar_UInt128_add(i64 %874, i64 %876, i64 %879, i64 %881), !dbg !450
  %883 = bitcast i128* %125 to { i64, i64 }*, !dbg !450
  %884 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %883, i32 0, i32 0, !dbg !450
  %885 = extractvalue { i64, i64 } %882, 0, !dbg !450
  store i64 %885, i64* %884, align 16, !dbg !450
  %886 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %883, i32 0, i32 1, !dbg !450
  %887 = extractvalue { i64, i64 } %882, 1, !dbg !450
  store i64 %887, i64* %886, align 8, !dbg !450
  %888 = load i128, i128* %125, align 16, !dbg !450
  call void @llvm.dbg.value(metadata i128 %888, metadata !451, metadata !DIExpression()), !dbg !306
  store i128 %888, i128* %126, align 16, !dbg !452
  %889 = bitcast i128* %126 to { i64, i64 }*, !dbg !452
  %890 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %889, i32 0, i32 0, !dbg !452
  %891 = load i64, i64* %890, align 16, !dbg !452
  %892 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %889, i32 0, i32 1, !dbg !452
  %893 = load i64, i64* %892, align 8, !dbg !452
  %894 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %891, i64 %893), !dbg !452
  %895 = and i64 %894, 2251799813685247, !dbg !453
  call void @llvm.dbg.value(metadata i64 %895, metadata !454, metadata !DIExpression()), !dbg !306
  store i128 %888, i128* %127, align 16, !dbg !455
  %896 = bitcast i128* %127 to { i64, i64 }*, !dbg !455
  %897 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %896, i32 0, i32 0, !dbg !455
  %898 = load i64, i64* %897, align 16, !dbg !455
  %899 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %896, i32 0, i32 1, !dbg !455
  %900 = load i64, i64* %899, align 8, !dbg !455
  %901 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %898, i64 %900, i32 51), !dbg !455
  %902 = bitcast i128* %128 to { i64, i64 }*, !dbg !455
  %903 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %902, i32 0, i32 0, !dbg !455
  %904 = extractvalue { i64, i64 } %901, 0, !dbg !455
  store i64 %904, i64* %903, align 16, !dbg !455
  %905 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %902, i32 0, i32 1, !dbg !455
  %906 = extractvalue { i64, i64 } %901, 1, !dbg !455
  store i64 %906, i64* %905, align 8, !dbg !455
  %907 = load i128, i128* %128, align 16, !dbg !455
  store i128 %907, i128* %129, align 16, !dbg !456
  %908 = bitcast i128* %129 to { i64, i64 }*, !dbg !456
  %909 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %908, i32 0, i32 0, !dbg !456
  %910 = load i64, i64* %909, align 16, !dbg !456
  %911 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %908, i32 0, i32 1, !dbg !456
  %912 = load i64, i64* %911, align 8, !dbg !456
  %913 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %910, i64 %912), !dbg !456
  call void @llvm.dbg.value(metadata i64 %913, metadata !457, metadata !DIExpression()), !dbg !306
  %914 = mul i64 %913, 19, !dbg !458
  %915 = add i64 %699, %914, !dbg !459
  call void @llvm.dbg.value(metadata i64 %915, metadata !460, metadata !DIExpression()), !dbg !306
  %916 = and i64 %915, 2251799813685247, !dbg !461
  call void @llvm.dbg.value(metadata i64 %916, metadata !462, metadata !DIExpression()), !dbg !306
  %917 = lshr i64 %915, 51, !dbg !463
  call void @llvm.dbg.value(metadata i64 %917, metadata !464, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64 %916, metadata !465, metadata !DIExpression()), !dbg !306
  %918 = add i64 %748, %917, !dbg !466
  call void @llvm.dbg.value(metadata i64 %918, metadata !467, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64 %797, metadata !468, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64 %846, metadata !469, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64 %895, metadata !470, metadata !DIExpression()), !dbg !306
  %919 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !471
  store i64 %916, i64* %919, align 8, !dbg !472
  %920 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !473
  store i64 %918, i64* %920, align 8, !dbg !474
  %921 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !475
  store i64 %797, i64* %921, align 8, !dbg !476
  %922 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !477
  store i64 %846, i64* %922, align 8, !dbg !478
  %923 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !479
  store i64 %895, i64* %923, align 8, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_51_scalarmult(i8* %0, i8* %1, i8* %2) #0 !dbg !482 {
  %4 = alloca [10 x i64], align 16
  %5 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8* %1, metadata !488, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8* %2, metadata !489, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata [10 x i64]* %4, metadata !490, metadata !DIExpression()), !dbg !494
  %6 = bitcast [10 x i64]* %4 to i8*, !dbg !494
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 80, i1 false), !dbg !494
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !495, metadata !DIExpression()), !dbg !499
  %7 = bitcast [4 x i64]* %5 to i8*, !dbg !499
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false), !dbg !499
  br label %8, !dbg !500

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !503
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !504
  call void @llvm.dbg.value(metadata i64* %9, metadata !506, metadata !DIExpression()), !dbg !507
  %10 = mul i32 0, 8, !dbg !504
  %11 = zext i32 %10 to i64, !dbg !504
  %12 = getelementptr inbounds i8, i8* %2, i64 %11, !dbg !504
  call void @llvm.dbg.value(metadata i8* %12, metadata !508, metadata !DIExpression()), !dbg !507
  %13 = call i64 @load64(i8* %12), !dbg !504
  %14 = call i64 @__uint64_identity(i64 %13), !dbg !504
  call void @llvm.dbg.value(metadata i64 %14, metadata !509, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %14, metadata !510, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %14, metadata !511, metadata !DIExpression()), !dbg !507
  %15 = zext i32 0 to i64, !dbg !504
  %16 = getelementptr inbounds i64, i64* %9, i64 %15, !dbg !504
  store i64 %14, i64* %16, align 8, !dbg !504
  %17 = add i32 0, 1, !dbg !504
  call void @llvm.dbg.value(metadata i32 %17, metadata !501, metadata !DIExpression()), !dbg !503
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !512
  call void @llvm.dbg.value(metadata i64* %18, metadata !514, metadata !DIExpression()), !dbg !515
  %19 = mul i32 %17, 8, !dbg !512
  %20 = zext i32 %19 to i64, !dbg !512
  %21 = getelementptr inbounds i8, i8* %2, i64 %20, !dbg !512
  call void @llvm.dbg.value(metadata i8* %21, metadata !516, metadata !DIExpression()), !dbg !515
  %22 = call i64 @load64(i8* %21), !dbg !512
  %23 = call i64 @__uint64_identity(i64 %22), !dbg !512
  call void @llvm.dbg.value(metadata i64 %23, metadata !517, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %23, metadata !518, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %23, metadata !519, metadata !DIExpression()), !dbg !515
  %24 = zext i32 %17 to i64, !dbg !512
  %25 = getelementptr inbounds i64, i64* %18, i64 %24, !dbg !512
  store i64 %23, i64* %25, align 8, !dbg !512
  %26 = add i32 %17, 1, !dbg !512
  call void @llvm.dbg.value(metadata i32 %26, metadata !501, metadata !DIExpression()), !dbg !503
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !520
  call void @llvm.dbg.value(metadata i64* %27, metadata !522, metadata !DIExpression()), !dbg !523
  %28 = mul i32 %26, 8, !dbg !520
  %29 = zext i32 %28 to i64, !dbg !520
  %30 = getelementptr inbounds i8, i8* %2, i64 %29, !dbg !520
  call void @llvm.dbg.value(metadata i8* %30, metadata !524, metadata !DIExpression()), !dbg !523
  %31 = call i64 @load64(i8* %30), !dbg !520
  %32 = call i64 @__uint64_identity(i64 %31), !dbg !520
  call void @llvm.dbg.value(metadata i64 %32, metadata !525, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i64 %32, metadata !526, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i64 %32, metadata !527, metadata !DIExpression()), !dbg !523
  %33 = zext i32 %26 to i64, !dbg !520
  %34 = getelementptr inbounds i64, i64* %27, i64 %33, !dbg !520
  store i64 %32, i64* %34, align 8, !dbg !520
  %35 = add i32 %26, 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %35, metadata !501, metadata !DIExpression()), !dbg !503
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !528
  call void @llvm.dbg.value(metadata i64* %36, metadata !530, metadata !DIExpression()), !dbg !531
  %37 = mul i32 %35, 8, !dbg !528
  %38 = zext i32 %37 to i64, !dbg !528
  %39 = getelementptr inbounds i8, i8* %2, i64 %38, !dbg !528
  call void @llvm.dbg.value(metadata i8* %39, metadata !532, metadata !DIExpression()), !dbg !531
  %40 = call i64 @load64(i8* %39), !dbg !528
  %41 = call i64 @__uint64_identity(i64 %40), !dbg !528
  call void @llvm.dbg.value(metadata i64 %41, metadata !533, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %41, metadata !534, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %41, metadata !535, metadata !DIExpression()), !dbg !531
  %42 = zext i32 %35 to i64, !dbg !528
  %43 = getelementptr inbounds i64, i64* %36, i64 %42, !dbg !528
  store i64 %41, i64* %43, align 8, !dbg !528
  %44 = add i32 %35, 1, !dbg !528
  call void @llvm.dbg.value(metadata i32 %44, metadata !501, metadata !DIExpression()), !dbg !503
  br label %45, !dbg !536

45:                                               ; preds = %8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !537
  %47 = load i64, i64* %46, align 8, !dbg !537
  call void @llvm.dbg.value(metadata i64 %47, metadata !538, metadata !DIExpression()), !dbg !487
  %48 = and i64 %47, 9223372036854775807, !dbg !539
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !540
  store i64 %48, i64* %49, align 8, !dbg !541
  %50 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0, !dbg !542
  call void @llvm.dbg.value(metadata i64* %50, metadata !543, metadata !DIExpression()), !dbg !487
  %51 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0, !dbg !544
  %52 = getelementptr inbounds i64, i64* %51, i64 5, !dbg !545
  call void @llvm.dbg.value(metadata i64* %52, metadata !546, metadata !DIExpression()), !dbg !487
  %53 = getelementptr inbounds i64, i64* %52, i64 0, !dbg !547
  store i64 1, i64* %53, align 8, !dbg !548
  %54 = getelementptr inbounds i64, i64* %52, i64 1, !dbg !549
  store i64 0, i64* %54, align 8, !dbg !550
  %55 = getelementptr inbounds i64, i64* %52, i64 2, !dbg !551
  store i64 0, i64* %55, align 8, !dbg !552
  %56 = getelementptr inbounds i64, i64* %52, i64 3, !dbg !553
  store i64 0, i64* %56, align 8, !dbg !554
  %57 = getelementptr inbounds i64, i64* %52, i64 4, !dbg !555
  store i64 0, i64* %57, align 8, !dbg !556
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !557
  %59 = load i64, i64* %58, align 16, !dbg !557
  %60 = and i64 %59, 2251799813685247, !dbg !558
  call void @llvm.dbg.value(metadata i64 %60, metadata !559, metadata !DIExpression()), !dbg !487
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !560
  %62 = load i64, i64* %61, align 16, !dbg !560
  %63 = lshr i64 %62, 51, !dbg !561
  call void @llvm.dbg.value(metadata i64 %63, metadata !562, metadata !DIExpression()), !dbg !487
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1, !dbg !563
  %65 = load i64, i64* %64, align 8, !dbg !563
  %66 = and i64 %65, 274877906943, !dbg !564
  %67 = shl i64 %66, 13, !dbg !565
  call void @llvm.dbg.value(metadata i64 %67, metadata !566, metadata !DIExpression()), !dbg !487
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1, !dbg !567
  %69 = load i64, i64* %68, align 8, !dbg !567
  %70 = lshr i64 %69, 38, !dbg !568
  call void @llvm.dbg.value(metadata i64 %70, metadata !569, metadata !DIExpression()), !dbg !487
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2, !dbg !570
  %72 = load i64, i64* %71, align 16, !dbg !570
  %73 = and i64 %72, 33554431, !dbg !571
  %74 = shl i64 %73, 26, !dbg !572
  call void @llvm.dbg.value(metadata i64 %74, metadata !573, metadata !DIExpression()), !dbg !487
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2, !dbg !574
  %76 = load i64, i64* %75, align 16, !dbg !574
  %77 = lshr i64 %76, 25, !dbg !575
  call void @llvm.dbg.value(metadata i64 %77, metadata !576, metadata !DIExpression()), !dbg !487
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !577
  %79 = load i64, i64* %78, align 8, !dbg !577
  %80 = and i64 %79, 4095, !dbg !578
  %81 = shl i64 %80, 39, !dbg !579
  call void @llvm.dbg.value(metadata i64 %81, metadata !580, metadata !DIExpression()), !dbg !487
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !581
  %83 = load i64, i64* %82, align 8, !dbg !581
  %84 = lshr i64 %83, 12, !dbg !582
  call void @llvm.dbg.value(metadata i64 %84, metadata !583, metadata !DIExpression()), !dbg !487
  %85 = getelementptr inbounds i64, i64* %50, i64 0, !dbg !584
  store i64 %60, i64* %85, align 8, !dbg !585
  %86 = or i64 %63, %67, !dbg !586
  %87 = getelementptr inbounds i64, i64* %50, i64 1, !dbg !587
  store i64 %86, i64* %87, align 8, !dbg !588
  %88 = or i64 %70, %74, !dbg !589
  %89 = getelementptr inbounds i64, i64* %50, i64 2, !dbg !590
  store i64 %88, i64* %89, align 8, !dbg !591
  %90 = or i64 %77, %81, !dbg !592
  %91 = getelementptr inbounds i64, i64* %50, i64 3, !dbg !593
  store i64 %90, i64* %91, align 8, !dbg !594
  %92 = getelementptr inbounds i64, i64* %50, i64 4, !dbg !595
  store i64 %84, i64* %92, align 8, !dbg !596
  %93 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0, !dbg !597
  %94 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0, !dbg !598
  call void @montgomery_ladder(i64* %93, i8* %1, i64* %94), !dbg !599
  %95 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0, !dbg !600
  call void @encode_point(i8* %0, i64* %95), !dbg !601
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @load64(i8* %0) #0 !dbg !603 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !607, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata i64* %2, metadata !609, metadata !DIExpression()), !dbg !610
  %3 = bitcast i64* %2 to i8*, !dbg !611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !611
  %4 = load i64, i64* %2, align 8, !dbg !612
  ret i64 %4, !dbg !613
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__uint64_identity(i64 %0) #0 !dbg !614 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !618, metadata !DIExpression()), !dbg !619
  ret i64 %0, !dbg !620
}

; Function Attrs: noinline nounwind uwtable
define internal void @montgomery_ladder(i64* %0, i8* %1, i64* %2) #0 !dbg !621 {
  %4 = alloca [10 x i128], align 16
  %5 = alloca i128, align 16
  %6 = alloca [41 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i8* %1, metadata !626, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %2, metadata !627, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata [10 x i128]* %4, metadata !628, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()), !dbg !633
  br label %7, !dbg !634

7:                                                ; preds = %19, %3
  %.01 = phi i32 [ 0, %3 ], [ %20, %19 ], !dbg !633
  call void @llvm.dbg.value(metadata i32 %.01, metadata !631, metadata !DIExpression()), !dbg !633
  %8 = icmp ult i32 %.01, 10, !dbg !635
  br i1 %8, label %9, label %21, !dbg !637

9:                                                ; preds = %7
  %10 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !638
  %11 = bitcast i128* %5 to { i64, i64 }*, !dbg !638
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0, !dbg !638
  %13 = extractvalue { i64, i64 } %10, 0, !dbg !638
  store i64 %13, i64* %12, align 16, !dbg !638
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1, !dbg !638
  %15 = extractvalue { i64, i64 } %10, 1, !dbg !638
  store i64 %15, i64* %14, align 8, !dbg !638
  %16 = load i128, i128* %5, align 16, !dbg !638
  %17 = zext i32 %.01 to i64, !dbg !639
  %18 = getelementptr inbounds [10 x i128], [10 x i128]* %4, i64 0, i64 %17, !dbg !639
  store i128 %16, i128* %18, align 16, !dbg !640
  br label %19, !dbg !639

19:                                               ; preds = %9
  %20 = add i32 %.01, 1, !dbg !641
  call void @llvm.dbg.value(metadata i32 %20, metadata !631, metadata !DIExpression()), !dbg !633
  br label %7, !dbg !642, !llvm.loop !643

21:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata [41 x i64]* %6, metadata !645, metadata !DIExpression()), !dbg !649
  %22 = bitcast [41 x i64]* %6 to i8*, !dbg !649
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 328, i1 false), !dbg !649
  %23 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !650
  call void @llvm.dbg.value(metadata i64* %23, metadata !651, metadata !DIExpression()), !dbg !625
  %24 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !652
  call void @llvm.dbg.value(metadata i64* %24, metadata !653, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %24, metadata !654, metadata !DIExpression()), !dbg !625
  %25 = getelementptr inbounds i64, i64* %24, i64 10, !dbg !655
  call void @llvm.dbg.value(metadata i64* %25, metadata !656, metadata !DIExpression()), !dbg !625
  %26 = bitcast i64* %25 to i8*, !dbg !657
  %27 = bitcast i64* %2 to i8*, !dbg !657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 80, i1 false), !dbg !657
  call void @llvm.dbg.value(metadata i64* %24, metadata !658, metadata !DIExpression()), !dbg !625
  %28 = getelementptr inbounds i64, i64* %24, i64 5, !dbg !659
  call void @llvm.dbg.value(metadata i64* %28, metadata !660, metadata !DIExpression()), !dbg !625
  %29 = getelementptr inbounds i64, i64* %24, i64 0, !dbg !661
  store i64 1, i64* %29, align 8, !dbg !662
  %30 = getelementptr inbounds i64, i64* %24, i64 1, !dbg !663
  store i64 0, i64* %30, align 8, !dbg !664
  %31 = getelementptr inbounds i64, i64* %24, i64 2, !dbg !665
  store i64 0, i64* %31, align 8, !dbg !666
  %32 = getelementptr inbounds i64, i64* %24, i64 3, !dbg !667
  store i64 0, i64* %32, align 8, !dbg !668
  %33 = getelementptr inbounds i64, i64* %24, i64 4, !dbg !669
  store i64 0, i64* %33, align 8, !dbg !670
  %34 = getelementptr inbounds i64, i64* %28, i64 0, !dbg !671
  store i64 0, i64* %34, align 8, !dbg !672
  %35 = getelementptr inbounds i64, i64* %28, i64 1, !dbg !673
  store i64 0, i64* %35, align 8, !dbg !674
  %36 = getelementptr inbounds i64, i64* %28, i64 2, !dbg !675
  store i64 0, i64* %36, align 8, !dbg !676
  %37 = getelementptr inbounds i64, i64* %28, i64 3, !dbg !677
  store i64 0, i64* %37, align 8, !dbg !678
  %38 = getelementptr inbounds i64, i64* %28, i64 4, !dbg !679
  store i64 0, i64* %38, align 8, !dbg !680
  %39 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !681
  call void @llvm.dbg.value(metadata i64* %39, metadata !682, metadata !DIExpression()), !dbg !625
  %40 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !683
  call void @llvm.dbg.value(metadata i64* %40, metadata !684, metadata !DIExpression()), !dbg !625
  %41 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !685
  call void @llvm.dbg.value(metadata i64* %41, metadata !686, metadata !DIExpression()), !dbg !625
  %42 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !687
  %43 = getelementptr inbounds i64, i64* %42, i64 10, !dbg !688
  call void @llvm.dbg.value(metadata i64* %43, metadata !689, metadata !DIExpression()), !dbg !625
  %44 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !690
  %45 = getelementptr inbounds i64, i64* %44, i64 40, !dbg !691
  call void @llvm.dbg.value(metadata i64* %45, metadata !692, metadata !DIExpression()), !dbg !625
  call void @Hacl_Impl_Curve25519_Field51_cswap2(i64 1, i64* %41, i64* %43), !dbg !693
  %46 = getelementptr inbounds [10 x i128], [10 x i128]* %4, i64 0, i64 0, !dbg !694
  call void @point_add_and_double(i64* %2, i64* %40, i128* %46), !dbg !695
  %47 = getelementptr inbounds i64, i64* %45, i64 0, !dbg !696
  store i64 1, i64* %47, align 8, !dbg !697
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()), !dbg !700
  br label %48, !dbg !701

48:                                               ; preds = %71, %21
  %.0 = phi i32 [ 0, %21 ], [ %72, %71 ], !dbg !700
  call void @llvm.dbg.value(metadata i32 %.0, metadata !698, metadata !DIExpression()), !dbg !700
  %49 = icmp ult i32 %.0, 251, !dbg !702
  br i1 %49, label %50, label %73, !dbg !704

50:                                               ; preds = %48
  %51 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !705
  call void @llvm.dbg.value(metadata i64* %51, metadata !707, metadata !DIExpression()), !dbg !708
  %52 = getelementptr inbounds [41 x i64], [41 x i64]* %6, i64 0, i64 0, !dbg !709
  %53 = getelementptr inbounds i64, i64* %52, i64 40, !dbg !710
  call void @llvm.dbg.value(metadata i64* %53, metadata !711, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64* %51, metadata !712, metadata !DIExpression()), !dbg !708
  %54 = getelementptr inbounds i64, i64* %51, i64 10, !dbg !713
  call void @llvm.dbg.value(metadata i64* %54, metadata !714, metadata !DIExpression()), !dbg !708
  %55 = sub i32 253, %.0, !dbg !715
  %56 = udiv i32 %55, 8, !dbg !716
  %57 = zext i32 %56 to i64, !dbg !717
  %58 = getelementptr inbounds i8, i8* %1, i64 %57, !dbg !717
  %59 = load i8, i8* %58, align 1, !dbg !717
  %60 = zext i8 %59 to i32, !dbg !717
  %61 = sub i32 253, %.0, !dbg !718
  %62 = urem i32 %61, 8, !dbg !719
  %63 = ashr i32 %60, %62, !dbg !720
  %64 = and i32 %63, 1, !dbg !721
  %65 = sext i32 %64 to i64, !dbg !722
  call void @llvm.dbg.value(metadata i64 %65, metadata !723, metadata !DIExpression()), !dbg !708
  %66 = getelementptr inbounds i64, i64* %53, i64 0, !dbg !724
  %67 = load i64, i64* %66, align 8, !dbg !724
  %68 = xor i64 %67, %65, !dbg !725
  call void @llvm.dbg.value(metadata i64 %68, metadata !726, metadata !DIExpression()), !dbg !708
  call void @Hacl_Impl_Curve25519_Field51_cswap2(i64 %68, i64* %51, i64* %54), !dbg !727
  %69 = getelementptr inbounds [10 x i128], [10 x i128]* %4, i64 0, i64 0, !dbg !728
  call void @point_add_and_double(i64* %2, i64* %51, i128* %69), !dbg !729
  %70 = getelementptr inbounds i64, i64* %53, i64 0, !dbg !730
  store i64 %65, i64* %70, align 8, !dbg !731
  br label %71, !dbg !732

71:                                               ; preds = %50
  %72 = add i32 %.0, 1, !dbg !733
  call void @llvm.dbg.value(metadata i32 %72, metadata !698, metadata !DIExpression()), !dbg !700
  br label %48, !dbg !734, !llvm.loop !735

73:                                               ; preds = %48
  %74 = getelementptr inbounds i64, i64* %45, i64 0, !dbg !737
  %75 = load i64, i64* %74, align 8, !dbg !737
  call void @llvm.dbg.value(metadata i64 %75, metadata !738, metadata !DIExpression()), !dbg !625
  call void @Hacl_Impl_Curve25519_Field51_cswap2(i64 %75, i64* %41, i64* %43), !dbg !739
  call void @llvm.dbg.value(metadata i64* %39, metadata !740, metadata !DIExpression()), !dbg !625
  %76 = getelementptr inbounds i64, i64* %39, i64 20, !dbg !741
  call void @llvm.dbg.value(metadata i64* %76, metadata !742, metadata !DIExpression()), !dbg !625
  %77 = getelementptr inbounds [10 x i128], [10 x i128]* %4, i64 0, i64 0, !dbg !743
  call void @point_double(i64* %39, i64* %76, i128* %77), !dbg !744
  %78 = getelementptr inbounds [10 x i128], [10 x i128]* %4, i64 0, i64 0, !dbg !745
  call void @point_double(i64* %39, i64* %76, i128* %78), !dbg !746
  %79 = getelementptr inbounds [10 x i128], [10 x i128]* %4, i64 0, i64 0, !dbg !747
  call void @point_double(i64* %39, i64* %76, i128* %79), !dbg !748
  %80 = bitcast i64* %0 to i8*, !dbg !749
  %81 = bitcast i64* %23 to i8*, !dbg !749
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 80, i1 false), !dbg !749
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind uwtable
define internal void @encode_point(i8* %0, i64* %1) #0 !dbg !751 {
  %3 = alloca [5 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca [10 x i128], align 16
  %6 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64* %1, metadata !756, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64* %1, metadata !757, metadata !DIExpression()), !dbg !755
  %7 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !758
  call void @llvm.dbg.value(metadata i64* %7, metadata !759, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !760, metadata !DIExpression()), !dbg !764
  %8 = bitcast [5 x i64]* %3 to i8*, !dbg !764
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false), !dbg !764
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !765, metadata !DIExpression()), !dbg !766
  %9 = bitcast [4 x i64]* %4 to i8*, !dbg !766
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false), !dbg !766
  call void @llvm.dbg.declare(metadata [10 x i128]* %5, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i32 0, metadata !769, metadata !DIExpression()), !dbg !771
  br label %10, !dbg !772

10:                                               ; preds = %22, %2
  %.0 = phi i32 [ 0, %2 ], [ %23, %22 ], !dbg !771
  call void @llvm.dbg.value(metadata i32 %.0, metadata !769, metadata !DIExpression()), !dbg !771
  %11 = icmp ult i32 %.0, 10, !dbg !773
  br i1 %11, label %12, label %24, !dbg !775

12:                                               ; preds = %10
  %13 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !776
  %14 = bitcast i128* %6 to { i64, i64 }*, !dbg !776
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0, !dbg !776
  %16 = extractvalue { i64, i64 } %13, 0, !dbg !776
  store i64 %16, i64* %15, align 16, !dbg !776
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1, !dbg !776
  %18 = extractvalue { i64, i64 } %13, 1, !dbg !776
  store i64 %18, i64* %17, align 8, !dbg !776
  %19 = load i128, i128* %6, align 16, !dbg !776
  %20 = zext i32 %.0 to i64, !dbg !777
  %21 = getelementptr inbounds [10 x i128], [10 x i128]* %5, i64 0, i64 %20, !dbg !777
  store i128 %19, i128* %21, align 16, !dbg !778
  br label %22, !dbg !777

22:                                               ; preds = %12
  %23 = add i32 %.0, 1, !dbg !779
  call void @llvm.dbg.value(metadata i32 %23, metadata !769, metadata !DIExpression()), !dbg !771
  br label %10, !dbg !780, !llvm.loop !781

24:                                               ; preds = %10
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !783
  %26 = getelementptr inbounds [10 x i128], [10 x i128]* %5, i64 0, i64 0, !dbg !784
  call void @Hacl_Curve25519_51_finv(i64* %25, i64* %7, i128* %26), !dbg !785
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !786
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !787
  %29 = getelementptr inbounds [10 x i128], [10 x i128]* %5, i64 0, i64 0, !dbg !788
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %27, i64* %28, i64* %1, i128* %29), !dbg !789
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !790
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !791
  call void @Hacl_Impl_Curve25519_Field51_store_felem(i64* %30, i64* %31), !dbg !792
  br label %32, !dbg !793

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !794, metadata !DIExpression()), !dbg !796
  %33 = mul i32 0, 8, !dbg !797
  %34 = zext i32 %33 to i64, !dbg !797
  %35 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !797
  %36 = zext i32 0 to i64, !dbg !797
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %36, !dbg !797
  %38 = load i64, i64* %37, align 8, !dbg !797
  %39 = call i64 @__uint64_identity(i64 %38), !dbg !797
  call void @store64(i8* %35, i64 %39), !dbg !797
  %40 = add i32 0, 1, !dbg !797
  call void @llvm.dbg.value(metadata i32 %40, metadata !794, metadata !DIExpression()), !dbg !796
  %41 = mul i32 %40, 8, !dbg !799
  %42 = zext i32 %41 to i64, !dbg !799
  %43 = getelementptr inbounds i8, i8* %0, i64 %42, !dbg !799
  %44 = zext i32 %40 to i64, !dbg !799
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %44, !dbg !799
  %46 = load i64, i64* %45, align 8, !dbg !799
  %47 = call i64 @__uint64_identity(i64 %46), !dbg !799
  call void @store64(i8* %43, i64 %47), !dbg !799
  %48 = add i32 %40, 1, !dbg !799
  call void @llvm.dbg.value(metadata i32 %48, metadata !794, metadata !DIExpression()), !dbg !796
  %49 = mul i32 %48, 8, !dbg !801
  %50 = zext i32 %49 to i64, !dbg !801
  %51 = getelementptr inbounds i8, i8* %0, i64 %50, !dbg !801
  %52 = zext i32 %48 to i64, !dbg !801
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %52, !dbg !801
  %54 = load i64, i64* %53, align 8, !dbg !801
  %55 = call i64 @__uint64_identity(i64 %54), !dbg !801
  call void @store64(i8* %51, i64 %55), !dbg !801
  %56 = add i32 %48, 1, !dbg !801
  call void @llvm.dbg.value(metadata i32 %56, metadata !794, metadata !DIExpression()), !dbg !796
  %57 = mul i32 %56, 8, !dbg !803
  %58 = zext i32 %57 to i64, !dbg !803
  %59 = getelementptr inbounds i8, i8* %0, i64 %58, !dbg !803
  %60 = zext i32 %56 to i64, !dbg !803
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %60, !dbg !803
  %62 = load i64, i64* %61, align 8, !dbg !803
  %63 = call i64 @__uint64_identity(i64 %62), !dbg !803
  call void @store64(i8* %59, i64 %63), !dbg !803
  %64 = add i32 %56, 1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %64, metadata !794, metadata !DIExpression()), !dbg !796
  br label %65, !dbg !805

65:                                               ; preds = %32
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_store_felem(i64* %0, i64* %1) #0 !dbg !807 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64* %1, metadata !812, metadata !DIExpression()), !dbg !811
  %3 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !813
  %4 = load i64, i64* %3, align 8, !dbg !813
  call void @llvm.dbg.value(metadata i64 %4, metadata !814, metadata !DIExpression()), !dbg !811
  %5 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !815
  %6 = load i64, i64* %5, align 8, !dbg !815
  call void @llvm.dbg.value(metadata i64 %6, metadata !816, metadata !DIExpression()), !dbg !811
  %7 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !817
  %8 = load i64, i64* %7, align 8, !dbg !817
  call void @llvm.dbg.value(metadata i64 %8, metadata !818, metadata !DIExpression()), !dbg !811
  %9 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !819
  %10 = load i64, i64* %9, align 8, !dbg !819
  call void @llvm.dbg.value(metadata i64 %10, metadata !820, metadata !DIExpression()), !dbg !811
  %11 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !821
  %12 = load i64, i64* %11, align 8, !dbg !821
  call void @llvm.dbg.value(metadata i64 %12, metadata !822, metadata !DIExpression()), !dbg !811
  %13 = add i64 %4, 0, !dbg !823
  call void @llvm.dbg.value(metadata i64 %13, metadata !824, metadata !DIExpression()), !dbg !811
  %14 = and i64 %13, 2251799813685247, !dbg !825
  call void @llvm.dbg.value(metadata i64 %14, metadata !826, metadata !DIExpression()), !dbg !811
  %15 = lshr i64 %13, 51, !dbg !827
  call void @llvm.dbg.value(metadata i64 %15, metadata !828, metadata !DIExpression()), !dbg !811
  %16 = add i64 %6, %15, !dbg !829
  call void @llvm.dbg.value(metadata i64 %16, metadata !830, metadata !DIExpression()), !dbg !811
  %17 = and i64 %16, 2251799813685247, !dbg !831
  call void @llvm.dbg.value(metadata i64 %17, metadata !832, metadata !DIExpression()), !dbg !811
  %18 = lshr i64 %16, 51, !dbg !833
  call void @llvm.dbg.value(metadata i64 %18, metadata !834, metadata !DIExpression()), !dbg !811
  %19 = add i64 %8, %18, !dbg !835
  call void @llvm.dbg.value(metadata i64 %19, metadata !836, metadata !DIExpression()), !dbg !811
  %20 = and i64 %19, 2251799813685247, !dbg !837
  call void @llvm.dbg.value(metadata i64 %20, metadata !838, metadata !DIExpression()), !dbg !811
  %21 = lshr i64 %19, 51, !dbg !839
  call void @llvm.dbg.value(metadata i64 %21, metadata !840, metadata !DIExpression()), !dbg !811
  %22 = add i64 %10, %21, !dbg !841
  call void @llvm.dbg.value(metadata i64 %22, metadata !842, metadata !DIExpression()), !dbg !811
  %23 = and i64 %22, 2251799813685247, !dbg !843
  call void @llvm.dbg.value(metadata i64 %23, metadata !844, metadata !DIExpression()), !dbg !811
  %24 = lshr i64 %22, 51, !dbg !845
  call void @llvm.dbg.value(metadata i64 %24, metadata !846, metadata !DIExpression()), !dbg !811
  %25 = add i64 %12, %24, !dbg !847
  call void @llvm.dbg.value(metadata i64 %25, metadata !848, metadata !DIExpression()), !dbg !811
  %26 = and i64 %25, 2251799813685247, !dbg !849
  call void @llvm.dbg.value(metadata i64 %26, metadata !850, metadata !DIExpression()), !dbg !811
  %27 = lshr i64 %25, 51, !dbg !851
  call void @llvm.dbg.value(metadata i64 %27, metadata !852, metadata !DIExpression()), !dbg !811
  %28 = mul i64 %27, 19, !dbg !853
  %29 = add i64 %14, %28, !dbg !854
  call void @llvm.dbg.value(metadata i64 %29, metadata !855, metadata !DIExpression()), !dbg !811
  %30 = and i64 %29, 2251799813685247, !dbg !856
  call void @llvm.dbg.value(metadata i64 %30, metadata !857, metadata !DIExpression()), !dbg !811
  %31 = lshr i64 %29, 51, !dbg !858
  call void @llvm.dbg.value(metadata i64 %31, metadata !859, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %30, metadata !860, metadata !DIExpression()), !dbg !811
  %32 = add i64 %17, %31, !dbg !861
  call void @llvm.dbg.value(metadata i64 %32, metadata !862, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %20, metadata !863, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %23, metadata !864, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %26, metadata !865, metadata !DIExpression()), !dbg !811
  %33 = call i64 @FStar_UInt64_gte_mask(i64 %30, i64 2251799813685229), !dbg !866
  call void @llvm.dbg.value(metadata i64 %33, metadata !867, metadata !DIExpression()), !dbg !811
  %34 = call i64 @FStar_UInt64_eq_mask(i64 %32, i64 2251799813685247), !dbg !868
  call void @llvm.dbg.value(metadata i64 %34, metadata !869, metadata !DIExpression()), !dbg !811
  %35 = call i64 @FStar_UInt64_eq_mask(i64 %20, i64 2251799813685247), !dbg !870
  call void @llvm.dbg.value(metadata i64 %35, metadata !871, metadata !DIExpression()), !dbg !811
  %36 = call i64 @FStar_UInt64_eq_mask(i64 %23, i64 2251799813685247), !dbg !872
  call void @llvm.dbg.value(metadata i64 %36, metadata !873, metadata !DIExpression()), !dbg !811
  %37 = call i64 @FStar_UInt64_eq_mask(i64 %26, i64 2251799813685247), !dbg !874
  call void @llvm.dbg.value(metadata i64 %37, metadata !875, metadata !DIExpression()), !dbg !811
  %38 = and i64 %33, %34, !dbg !876
  %39 = and i64 %38, %35, !dbg !877
  %40 = and i64 %39, %36, !dbg !878
  %41 = and i64 %40, %37, !dbg !879
  call void @llvm.dbg.value(metadata i64 %41, metadata !880, metadata !DIExpression()), !dbg !811
  %42 = and i64 %41, 2251799813685229, !dbg !881
  %43 = sub i64 %30, %42, !dbg !882
  call void @llvm.dbg.value(metadata i64 %43, metadata !883, metadata !DIExpression()), !dbg !811
  %44 = and i64 %41, 2251799813685247, !dbg !884
  %45 = sub i64 %32, %44, !dbg !885
  call void @llvm.dbg.value(metadata i64 %45, metadata !886, metadata !DIExpression()), !dbg !811
  %46 = and i64 %41, 2251799813685247, !dbg !887
  %47 = sub i64 %20, %46, !dbg !888
  call void @llvm.dbg.value(metadata i64 %47, metadata !889, metadata !DIExpression()), !dbg !811
  %48 = and i64 %41, 2251799813685247, !dbg !890
  %49 = sub i64 %23, %48, !dbg !891
  call void @llvm.dbg.value(metadata i64 %49, metadata !892, metadata !DIExpression()), !dbg !811
  %50 = and i64 %41, 2251799813685247, !dbg !893
  %51 = sub i64 %26, %50, !dbg !894
  call void @llvm.dbg.value(metadata i64 %51, metadata !895, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %43, metadata !896, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %45, metadata !897, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %47, metadata !898, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %49, metadata !899, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %51, metadata !900, metadata !DIExpression()), !dbg !811
  %52 = shl i64 %45, 51, !dbg !901
  %53 = or i64 %43, %52, !dbg !902
  call void @llvm.dbg.value(metadata i64 %53, metadata !903, metadata !DIExpression()), !dbg !811
  %54 = lshr i64 %45, 13, !dbg !904
  %55 = shl i64 %47, 38, !dbg !905
  %56 = or i64 %54, %55, !dbg !906
  call void @llvm.dbg.value(metadata i64 %56, metadata !907, metadata !DIExpression()), !dbg !811
  %57 = lshr i64 %47, 26, !dbg !908
  %58 = shl i64 %49, 25, !dbg !909
  %59 = or i64 %57, %58, !dbg !910
  call void @llvm.dbg.value(metadata i64 %59, metadata !911, metadata !DIExpression()), !dbg !811
  %60 = lshr i64 %49, 39, !dbg !912
  %61 = shl i64 %51, 12, !dbg !913
  %62 = or i64 %60, %61, !dbg !914
  call void @llvm.dbg.value(metadata i64 %62, metadata !915, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %53, metadata !916, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %56, metadata !917, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %59, metadata !918, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %62, metadata !919, metadata !DIExpression()), !dbg !811
  %63 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !920
  store i64 %53, i64* %63, align 8, !dbg !921
  %64 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !922
  store i64 %56, i64* %64, align 8, !dbg !923
  %65 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !924
  store i64 %59, i64* %65, align 8, !dbg !925
  %66 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !926
  store i64 %62, i64* %66, align 8, !dbg !927
  ret void, !dbg !928
}

; Function Attrs: noinline nounwind uwtable
define internal void @store64(i8* %0, i64 %1) #0 !dbg !929 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !932, metadata !DIExpression()), !dbg !933
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !934, metadata !DIExpression()), !dbg !935
  %4 = bitcast i64* %3 to i8*, !dbg !936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !936
  ret void, !dbg !937
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_gte_mask(i64 %0, i64 %1) #0 !dbg !938 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i64 %1, metadata !944, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i64 %0, metadata !945, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i64 %1, metadata !946, metadata !DIExpression()), !dbg !943
  %3 = xor i64 %0, %1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %3, metadata !948, metadata !DIExpression()), !dbg !943
  %4 = sub i64 %0, %1, !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !950, metadata !DIExpression()), !dbg !943
  %5 = xor i64 %4, %1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %5, metadata !952, metadata !DIExpression()), !dbg !943
  %6 = or i64 %3, %5, !dbg !953
  call void @llvm.dbg.value(metadata i64 %6, metadata !954, metadata !DIExpression()), !dbg !943
  %7 = xor i64 %0, %6, !dbg !955
  call void @llvm.dbg.value(metadata i64 %7, metadata !956, metadata !DIExpression()), !dbg !943
  %8 = lshr i64 %7, 63, !dbg !957
  call void @llvm.dbg.value(metadata i64 %8, metadata !958, metadata !DIExpression()), !dbg !943
  %9 = sub i64 %8, 1, !dbg !959
  ret i64 %9, !dbg !960
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_eq_mask(i64 %0, i64 %1) #0 !dbg !961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i64 %1, metadata !964, metadata !DIExpression()), !dbg !963
  %3 = xor i64 %0, %1, !dbg !965
  call void @llvm.dbg.value(metadata i64 %3, metadata !966, metadata !DIExpression()), !dbg !963
  %4 = xor i64 %3, -1, !dbg !967
  %5 = add i64 %4, 1, !dbg !968
  call void @llvm.dbg.value(metadata i64 %5, metadata !969, metadata !DIExpression()), !dbg !963
  %6 = or i64 %3, %5, !dbg !970
  call void @llvm.dbg.value(metadata i64 %6, metadata !971, metadata !DIExpression()), !dbg !963
  %7 = lshr i64 %6, 63, !dbg !972
  call void @llvm.dbg.value(metadata i64 %7, metadata !973, metadata !DIExpression()), !dbg !963
  %8 = sub i64 %7, 1, !dbg !974
  ret i64 %8, !dbg !975
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_cswap2(i64 %0, i64* %1, i64* %2) #0 !dbg !976 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !979, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i64* %1, metadata !981, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i64* %2, metadata !982, metadata !DIExpression()), !dbg !980
  %4 = sub i64 0, %0, !dbg !983
  call void @llvm.dbg.value(metadata i64 %4, metadata !984, metadata !DIExpression()), !dbg !980
  br label %5, !dbg !985

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !986, metadata !DIExpression()), !dbg !988
  %6 = zext i32 0 to i64, !dbg !989
  %7 = getelementptr inbounds i64, i64* %1, i64 %6, !dbg !989
  %8 = load i64, i64* %7, align 8, !dbg !989
  %9 = zext i32 0 to i64, !dbg !989
  %10 = getelementptr inbounds i64, i64* %2, i64 %9, !dbg !989
  %11 = load i64, i64* %10, align 8, !dbg !989
  %12 = xor i64 %8, %11, !dbg !989
  %13 = and i64 %4, %12, !dbg !989
  call void @llvm.dbg.value(metadata i64 %13, metadata !991, metadata !DIExpression()), !dbg !992
  %14 = zext i32 0 to i64, !dbg !989
  %15 = getelementptr inbounds i64, i64* %1, i64 %14, !dbg !989
  %16 = load i64, i64* %15, align 8, !dbg !989
  %17 = xor i64 %16, %13, !dbg !989
  %18 = zext i32 0 to i64, !dbg !989
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !989
  store i64 %17, i64* %19, align 8, !dbg !989
  %20 = zext i32 0 to i64, !dbg !989
  %21 = getelementptr inbounds i64, i64* %2, i64 %20, !dbg !989
  %22 = load i64, i64* %21, align 8, !dbg !989
  %23 = xor i64 %22, %13, !dbg !989
  %24 = zext i32 0 to i64, !dbg !989
  %25 = getelementptr inbounds i64, i64* %2, i64 %24, !dbg !989
  store i64 %23, i64* %25, align 8, !dbg !989
  %26 = add i32 0, 1, !dbg !989
  call void @llvm.dbg.value(metadata i32 %26, metadata !986, metadata !DIExpression()), !dbg !988
  %27 = zext i32 %26 to i64, !dbg !993
  %28 = getelementptr inbounds i64, i64* %1, i64 %27, !dbg !993
  %29 = load i64, i64* %28, align 8, !dbg !993
  %30 = zext i32 %26 to i64, !dbg !993
  %31 = getelementptr inbounds i64, i64* %2, i64 %30, !dbg !993
  %32 = load i64, i64* %31, align 8, !dbg !993
  %33 = xor i64 %29, %32, !dbg !993
  %34 = and i64 %4, %33, !dbg !993
  call void @llvm.dbg.value(metadata i64 %34, metadata !995, metadata !DIExpression()), !dbg !996
  %35 = zext i32 %26 to i64, !dbg !993
  %36 = getelementptr inbounds i64, i64* %1, i64 %35, !dbg !993
  %37 = load i64, i64* %36, align 8, !dbg !993
  %38 = xor i64 %37, %34, !dbg !993
  %39 = zext i32 %26 to i64, !dbg !993
  %40 = getelementptr inbounds i64, i64* %1, i64 %39, !dbg !993
  store i64 %38, i64* %40, align 8, !dbg !993
  %41 = zext i32 %26 to i64, !dbg !993
  %42 = getelementptr inbounds i64, i64* %2, i64 %41, !dbg !993
  %43 = load i64, i64* %42, align 8, !dbg !993
  %44 = xor i64 %43, %34, !dbg !993
  %45 = zext i32 %26 to i64, !dbg !993
  %46 = getelementptr inbounds i64, i64* %2, i64 %45, !dbg !993
  store i64 %44, i64* %46, align 8, !dbg !993
  %47 = add i32 %26, 1, !dbg !993
  call void @llvm.dbg.value(metadata i32 %47, metadata !986, metadata !DIExpression()), !dbg !988
  %48 = zext i32 %47 to i64, !dbg !997
  %49 = getelementptr inbounds i64, i64* %1, i64 %48, !dbg !997
  %50 = load i64, i64* %49, align 8, !dbg !997
  %51 = zext i32 %47 to i64, !dbg !997
  %52 = getelementptr inbounds i64, i64* %2, i64 %51, !dbg !997
  %53 = load i64, i64* %52, align 8, !dbg !997
  %54 = xor i64 %50, %53, !dbg !997
  %55 = and i64 %4, %54, !dbg !997
  call void @llvm.dbg.value(metadata i64 %55, metadata !999, metadata !DIExpression()), !dbg !1000
  %56 = zext i32 %47 to i64, !dbg !997
  %57 = getelementptr inbounds i64, i64* %1, i64 %56, !dbg !997
  %58 = load i64, i64* %57, align 8, !dbg !997
  %59 = xor i64 %58, %55, !dbg !997
  %60 = zext i32 %47 to i64, !dbg !997
  %61 = getelementptr inbounds i64, i64* %1, i64 %60, !dbg !997
  store i64 %59, i64* %61, align 8, !dbg !997
  %62 = zext i32 %47 to i64, !dbg !997
  %63 = getelementptr inbounds i64, i64* %2, i64 %62, !dbg !997
  %64 = load i64, i64* %63, align 8, !dbg !997
  %65 = xor i64 %64, %55, !dbg !997
  %66 = zext i32 %47 to i64, !dbg !997
  %67 = getelementptr inbounds i64, i64* %2, i64 %66, !dbg !997
  store i64 %65, i64* %67, align 8, !dbg !997
  %68 = add i32 %47, 1, !dbg !997
  call void @llvm.dbg.value(metadata i32 %68, metadata !986, metadata !DIExpression()), !dbg !988
  %69 = zext i32 %68 to i64, !dbg !1001
  %70 = getelementptr inbounds i64, i64* %1, i64 %69, !dbg !1001
  %71 = load i64, i64* %70, align 8, !dbg !1001
  %72 = zext i32 %68 to i64, !dbg !1001
  %73 = getelementptr inbounds i64, i64* %2, i64 %72, !dbg !1001
  %74 = load i64, i64* %73, align 8, !dbg !1001
  %75 = xor i64 %71, %74, !dbg !1001
  %76 = and i64 %4, %75, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %76, metadata !1003, metadata !DIExpression()), !dbg !1004
  %77 = zext i32 %68 to i64, !dbg !1001
  %78 = getelementptr inbounds i64, i64* %1, i64 %77, !dbg !1001
  %79 = load i64, i64* %78, align 8, !dbg !1001
  %80 = xor i64 %79, %76, !dbg !1001
  %81 = zext i32 %68 to i64, !dbg !1001
  %82 = getelementptr inbounds i64, i64* %1, i64 %81, !dbg !1001
  store i64 %80, i64* %82, align 8, !dbg !1001
  %83 = zext i32 %68 to i64, !dbg !1001
  %84 = getelementptr inbounds i64, i64* %2, i64 %83, !dbg !1001
  %85 = load i64, i64* %84, align 8, !dbg !1001
  %86 = xor i64 %85, %76, !dbg !1001
  %87 = zext i32 %68 to i64, !dbg !1001
  %88 = getelementptr inbounds i64, i64* %2, i64 %87, !dbg !1001
  store i64 %86, i64* %88, align 8, !dbg !1001
  %89 = add i32 %68, 1, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %89, metadata !986, metadata !DIExpression()), !dbg !988
  %90 = zext i32 %89 to i64, !dbg !1005
  %91 = getelementptr inbounds i64, i64* %1, i64 %90, !dbg !1005
  %92 = load i64, i64* %91, align 8, !dbg !1005
  %93 = zext i32 %89 to i64, !dbg !1005
  %94 = getelementptr inbounds i64, i64* %2, i64 %93, !dbg !1005
  %95 = load i64, i64* %94, align 8, !dbg !1005
  %96 = xor i64 %92, %95, !dbg !1005
  %97 = and i64 %4, %96, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %97, metadata !1007, metadata !DIExpression()), !dbg !1008
  %98 = zext i32 %89 to i64, !dbg !1005
  %99 = getelementptr inbounds i64, i64* %1, i64 %98, !dbg !1005
  %100 = load i64, i64* %99, align 8, !dbg !1005
  %101 = xor i64 %100, %97, !dbg !1005
  %102 = zext i32 %89 to i64, !dbg !1005
  %103 = getelementptr inbounds i64, i64* %1, i64 %102, !dbg !1005
  store i64 %101, i64* %103, align 8, !dbg !1005
  %104 = zext i32 %89 to i64, !dbg !1005
  %105 = getelementptr inbounds i64, i64* %2, i64 %104, !dbg !1005
  %106 = load i64, i64* %105, align 8, !dbg !1005
  %107 = xor i64 %106, %97, !dbg !1005
  %108 = zext i32 %89 to i64, !dbg !1005
  %109 = getelementptr inbounds i64, i64* %2, i64 %108, !dbg !1005
  store i64 %107, i64* %109, align 8, !dbg !1005
  %110 = add i32 %89, 1, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %110, metadata !986, metadata !DIExpression()), !dbg !988
  %111 = zext i32 %110 to i64, !dbg !1009
  %112 = getelementptr inbounds i64, i64* %1, i64 %111, !dbg !1009
  %113 = load i64, i64* %112, align 8, !dbg !1009
  %114 = zext i32 %110 to i64, !dbg !1009
  %115 = getelementptr inbounds i64, i64* %2, i64 %114, !dbg !1009
  %116 = load i64, i64* %115, align 8, !dbg !1009
  %117 = xor i64 %113, %116, !dbg !1009
  %118 = and i64 %4, %117, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %118, metadata !1011, metadata !DIExpression()), !dbg !1012
  %119 = zext i32 %110 to i64, !dbg !1009
  %120 = getelementptr inbounds i64, i64* %1, i64 %119, !dbg !1009
  %121 = load i64, i64* %120, align 8, !dbg !1009
  %122 = xor i64 %121, %118, !dbg !1009
  %123 = zext i32 %110 to i64, !dbg !1009
  %124 = getelementptr inbounds i64, i64* %1, i64 %123, !dbg !1009
  store i64 %122, i64* %124, align 8, !dbg !1009
  %125 = zext i32 %110 to i64, !dbg !1009
  %126 = getelementptr inbounds i64, i64* %2, i64 %125, !dbg !1009
  %127 = load i64, i64* %126, align 8, !dbg !1009
  %128 = xor i64 %127, %118, !dbg !1009
  %129 = zext i32 %110 to i64, !dbg !1009
  %130 = getelementptr inbounds i64, i64* %2, i64 %129, !dbg !1009
  store i64 %128, i64* %130, align 8, !dbg !1009
  %131 = add i32 %110, 1, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %131, metadata !986, metadata !DIExpression()), !dbg !988
  %132 = zext i32 %131 to i64, !dbg !1013
  %133 = getelementptr inbounds i64, i64* %1, i64 %132, !dbg !1013
  %134 = load i64, i64* %133, align 8, !dbg !1013
  %135 = zext i32 %131 to i64, !dbg !1013
  %136 = getelementptr inbounds i64, i64* %2, i64 %135, !dbg !1013
  %137 = load i64, i64* %136, align 8, !dbg !1013
  %138 = xor i64 %134, %137, !dbg !1013
  %139 = and i64 %4, %138, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %139, metadata !1015, metadata !DIExpression()), !dbg !1016
  %140 = zext i32 %131 to i64, !dbg !1013
  %141 = getelementptr inbounds i64, i64* %1, i64 %140, !dbg !1013
  %142 = load i64, i64* %141, align 8, !dbg !1013
  %143 = xor i64 %142, %139, !dbg !1013
  %144 = zext i32 %131 to i64, !dbg !1013
  %145 = getelementptr inbounds i64, i64* %1, i64 %144, !dbg !1013
  store i64 %143, i64* %145, align 8, !dbg !1013
  %146 = zext i32 %131 to i64, !dbg !1013
  %147 = getelementptr inbounds i64, i64* %2, i64 %146, !dbg !1013
  %148 = load i64, i64* %147, align 8, !dbg !1013
  %149 = xor i64 %148, %139, !dbg !1013
  %150 = zext i32 %131 to i64, !dbg !1013
  %151 = getelementptr inbounds i64, i64* %2, i64 %150, !dbg !1013
  store i64 %149, i64* %151, align 8, !dbg !1013
  %152 = add i32 %131, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %152, metadata !986, metadata !DIExpression()), !dbg !988
  %153 = zext i32 %152 to i64, !dbg !1017
  %154 = getelementptr inbounds i64, i64* %1, i64 %153, !dbg !1017
  %155 = load i64, i64* %154, align 8, !dbg !1017
  %156 = zext i32 %152 to i64, !dbg !1017
  %157 = getelementptr inbounds i64, i64* %2, i64 %156, !dbg !1017
  %158 = load i64, i64* %157, align 8, !dbg !1017
  %159 = xor i64 %155, %158, !dbg !1017
  %160 = and i64 %4, %159, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %160, metadata !1019, metadata !DIExpression()), !dbg !1020
  %161 = zext i32 %152 to i64, !dbg !1017
  %162 = getelementptr inbounds i64, i64* %1, i64 %161, !dbg !1017
  %163 = load i64, i64* %162, align 8, !dbg !1017
  %164 = xor i64 %163, %160, !dbg !1017
  %165 = zext i32 %152 to i64, !dbg !1017
  %166 = getelementptr inbounds i64, i64* %1, i64 %165, !dbg !1017
  store i64 %164, i64* %166, align 8, !dbg !1017
  %167 = zext i32 %152 to i64, !dbg !1017
  %168 = getelementptr inbounds i64, i64* %2, i64 %167, !dbg !1017
  %169 = load i64, i64* %168, align 8, !dbg !1017
  %170 = xor i64 %169, %160, !dbg !1017
  %171 = zext i32 %152 to i64, !dbg !1017
  %172 = getelementptr inbounds i64, i64* %2, i64 %171, !dbg !1017
  store i64 %170, i64* %172, align 8, !dbg !1017
  %173 = add i32 %152, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %173, metadata !986, metadata !DIExpression()), !dbg !988
  %174 = zext i32 %173 to i64, !dbg !1021
  %175 = getelementptr inbounds i64, i64* %1, i64 %174, !dbg !1021
  %176 = load i64, i64* %175, align 8, !dbg !1021
  %177 = zext i32 %173 to i64, !dbg !1021
  %178 = getelementptr inbounds i64, i64* %2, i64 %177, !dbg !1021
  %179 = load i64, i64* %178, align 8, !dbg !1021
  %180 = xor i64 %176, %179, !dbg !1021
  %181 = and i64 %4, %180, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %181, metadata !1023, metadata !DIExpression()), !dbg !1024
  %182 = zext i32 %173 to i64, !dbg !1021
  %183 = getelementptr inbounds i64, i64* %1, i64 %182, !dbg !1021
  %184 = load i64, i64* %183, align 8, !dbg !1021
  %185 = xor i64 %184, %181, !dbg !1021
  %186 = zext i32 %173 to i64, !dbg !1021
  %187 = getelementptr inbounds i64, i64* %1, i64 %186, !dbg !1021
  store i64 %185, i64* %187, align 8, !dbg !1021
  %188 = zext i32 %173 to i64, !dbg !1021
  %189 = getelementptr inbounds i64, i64* %2, i64 %188, !dbg !1021
  %190 = load i64, i64* %189, align 8, !dbg !1021
  %191 = xor i64 %190, %181, !dbg !1021
  %192 = zext i32 %173 to i64, !dbg !1021
  %193 = getelementptr inbounds i64, i64* %2, i64 %192, !dbg !1021
  store i64 %191, i64* %193, align 8, !dbg !1021
  %194 = add i32 %173, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i32 %194, metadata !986, metadata !DIExpression()), !dbg !988
  %195 = zext i32 %194 to i64, !dbg !1025
  %196 = getelementptr inbounds i64, i64* %1, i64 %195, !dbg !1025
  %197 = load i64, i64* %196, align 8, !dbg !1025
  %198 = zext i32 %194 to i64, !dbg !1025
  %199 = getelementptr inbounds i64, i64* %2, i64 %198, !dbg !1025
  %200 = load i64, i64* %199, align 8, !dbg !1025
  %201 = xor i64 %197, %200, !dbg !1025
  %202 = and i64 %4, %201, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %202, metadata !1027, metadata !DIExpression()), !dbg !1028
  %203 = zext i32 %194 to i64, !dbg !1025
  %204 = getelementptr inbounds i64, i64* %1, i64 %203, !dbg !1025
  %205 = load i64, i64* %204, align 8, !dbg !1025
  %206 = xor i64 %205, %202, !dbg !1025
  %207 = zext i32 %194 to i64, !dbg !1025
  %208 = getelementptr inbounds i64, i64* %1, i64 %207, !dbg !1025
  store i64 %206, i64* %208, align 8, !dbg !1025
  %209 = zext i32 %194 to i64, !dbg !1025
  %210 = getelementptr inbounds i64, i64* %2, i64 %209, !dbg !1025
  %211 = load i64, i64* %210, align 8, !dbg !1025
  %212 = xor i64 %211, %202, !dbg !1025
  %213 = zext i32 %194 to i64, !dbg !1025
  %214 = getelementptr inbounds i64, i64* %2, i64 %213, !dbg !1025
  store i64 %212, i64* %214, align 8, !dbg !1025
  %215 = add i32 %194, 1, !dbg !1025
  call void @llvm.dbg.value(metadata i32 %215, metadata !986, metadata !DIExpression()), !dbg !988
  br label %216, !dbg !1029

216:                                              ; preds = %5
  ret void, !dbg !1030
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_add_and_double(i64* %0, i64* %1, i128* %2) #0 !dbg !1031 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %1, metadata !1034, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i128* %2, metadata !1035, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %1, metadata !1036, metadata !DIExpression()), !dbg !1033
  %4 = getelementptr inbounds i64, i64* %1, i64 10, !dbg !1037
  call void @llvm.dbg.value(metadata i64* %4, metadata !1038, metadata !DIExpression()), !dbg !1033
  %5 = getelementptr inbounds i64, i64* %1, i64 20, !dbg !1039
  call void @llvm.dbg.value(metadata i64* %5, metadata !1040, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %0, metadata !1041, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %1, metadata !1042, metadata !DIExpression()), !dbg !1033
  %6 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !1043
  call void @llvm.dbg.value(metadata i64* %6, metadata !1044, metadata !DIExpression()), !dbg !1033
  %7 = getelementptr inbounds i64, i64* %4, i64 5, !dbg !1045
  call void @llvm.dbg.value(metadata i64* %7, metadata !1046, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %5, metadata !1047, metadata !DIExpression()), !dbg !1033
  %8 = getelementptr inbounds i64, i64* %5, i64 5, !dbg !1048
  call void @llvm.dbg.value(metadata i64* %8, metadata !1049, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %5, metadata !1050, metadata !DIExpression()), !dbg !1033
  %9 = getelementptr inbounds i64, i64* %5, i64 10, !dbg !1051
  call void @llvm.dbg.value(metadata i64* %9, metadata !1052, metadata !DIExpression()), !dbg !1033
  call void @Hacl_Impl_Curve25519_Field51_fadd(i64* %5, i64* %1, i64* %6), !dbg !1053
  call void @Hacl_Impl_Curve25519_Field51_fsub(i64* %8, i64* %1, i64* %6), !dbg !1054
  call void @llvm.dbg.value(metadata i64* %4, metadata !1055, metadata !DIExpression()), !dbg !1033
  %10 = getelementptr inbounds i64, i64* %4, i64 5, !dbg !1056
  call void @llvm.dbg.value(metadata i64* %10, metadata !1057, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %9, metadata !1058, metadata !DIExpression()), !dbg !1033
  %11 = getelementptr inbounds i64, i64* %9, i64 5, !dbg !1059
  call void @llvm.dbg.value(metadata i64* %11, metadata !1060, metadata !DIExpression()), !dbg !1033
  call void @Hacl_Impl_Curve25519_Field51_fadd(i64* %11, i64* %4, i64* %10), !dbg !1061
  call void @Hacl_Impl_Curve25519_Field51_fsub(i64* %9, i64* %4, i64* %10), !dbg !1062
  call void @Hacl_Impl_Curve25519_Field51_fmul2(i64* %9, i64* %9, i64* %5, i128* %2), !dbg !1063
  call void @Hacl_Impl_Curve25519_Field51_fadd(i64* %4, i64* %9, i64* %11), !dbg !1064
  call void @Hacl_Impl_Curve25519_Field51_fsub(i64* %10, i64* %9, i64* %11), !dbg !1065
  call void @llvm.dbg.value(metadata i64* %5, metadata !1066, metadata !DIExpression()), !dbg !1033
  %12 = getelementptr inbounds i64, i64* %5, i64 5, !dbg !1067
  call void @llvm.dbg.value(metadata i64* %12, metadata !1068, metadata !DIExpression()), !dbg !1033
  %13 = getelementptr inbounds i64, i64* %5, i64 10, !dbg !1069
  call void @llvm.dbg.value(metadata i64* %13, metadata !1070, metadata !DIExpression()), !dbg !1033
  %14 = getelementptr inbounds i64, i64* %5, i64 15, !dbg !1071
  call void @llvm.dbg.value(metadata i64* %14, metadata !1072, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64* %5, metadata !1073, metadata !DIExpression()), !dbg !1033
  %15 = getelementptr inbounds i64, i64* %5, i64 10, !dbg !1074
  call void @llvm.dbg.value(metadata i64* %15, metadata !1075, metadata !DIExpression()), !dbg !1033
  call void @Hacl_Impl_Curve25519_Field51_fsqr2(i64* %15, i64* %5, i128* %2), !dbg !1076
  call void @Hacl_Impl_Curve25519_Field51_fsqr2(i64* %4, i64* %4, i128* %2), !dbg !1077
  %16 = getelementptr inbounds i64, i64* %14, i64 0, !dbg !1078
  %17 = load i64, i64* %16, align 8, !dbg !1078
  %18 = getelementptr inbounds i64, i64* %5, i64 0, !dbg !1079
  store i64 %17, i64* %18, align 8, !dbg !1080
  %19 = getelementptr inbounds i64, i64* %14, i64 1, !dbg !1081
  %20 = load i64, i64* %19, align 8, !dbg !1081
  %21 = getelementptr inbounds i64, i64* %5, i64 1, !dbg !1082
  store i64 %20, i64* %21, align 8, !dbg !1083
  %22 = getelementptr inbounds i64, i64* %14, i64 2, !dbg !1084
  %23 = load i64, i64* %22, align 8, !dbg !1084
  %24 = getelementptr inbounds i64, i64* %5, i64 2, !dbg !1085
  store i64 %23, i64* %24, align 8, !dbg !1086
  %25 = getelementptr inbounds i64, i64* %14, i64 3, !dbg !1087
  %26 = load i64, i64* %25, align 8, !dbg !1087
  %27 = getelementptr inbounds i64, i64* %5, i64 3, !dbg !1088
  store i64 %26, i64* %27, align 8, !dbg !1089
  %28 = getelementptr inbounds i64, i64* %14, i64 4, !dbg !1090
  %29 = load i64, i64* %28, align 8, !dbg !1090
  %30 = getelementptr inbounds i64, i64* %5, i64 4, !dbg !1091
  store i64 %29, i64* %30, align 8, !dbg !1092
  call void @Hacl_Impl_Curve25519_Field51_fsub(i64* %14, i64* %13, i64* %14), !dbg !1093
  call void @Hacl_Impl_Curve25519_Field51_fmul1(i64* %12, i64* %14, i64 121665), !dbg !1094
  call void @Hacl_Impl_Curve25519_Field51_fadd(i64* %12, i64* %12, i64* %13), !dbg !1095
  call void @Hacl_Impl_Curve25519_Field51_fmul2(i64* %1, i64* %15, i64* %5, i128* %2), !dbg !1096
  call void @Hacl_Impl_Curve25519_Field51_fmul(i64* %7, i64* %7, i64* %0, i128* %2), !dbg !1097
  ret void, !dbg !1098
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_double(i64* %0, i64* %1, i128* %2) #0 !dbg !1099 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1100, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64* %1, metadata !1102, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i128* %2, metadata !1103, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64* %0, metadata !1104, metadata !DIExpression()), !dbg !1101
  %4 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !1105
  call void @llvm.dbg.value(metadata i64* %4, metadata !1106, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64* %1, metadata !1107, metadata !DIExpression()), !dbg !1101
  %5 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !1108
  call void @llvm.dbg.value(metadata i64* %5, metadata !1109, metadata !DIExpression()), !dbg !1101
  %6 = getelementptr inbounds i64, i64* %1, i64 10, !dbg !1110
  call void @llvm.dbg.value(metadata i64* %6, metadata !1111, metadata !DIExpression()), !dbg !1101
  %7 = getelementptr inbounds i64, i64* %1, i64 15, !dbg !1112
  call void @llvm.dbg.value(metadata i64* %7, metadata !1113, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64* %1, metadata !1114, metadata !DIExpression()), !dbg !1101
  %8 = getelementptr inbounds i64, i64* %1, i64 10, !dbg !1115
  call void @llvm.dbg.value(metadata i64* %8, metadata !1116, metadata !DIExpression()), !dbg !1101
  call void @Hacl_Impl_Curve25519_Field51_fadd(i64* %1, i64* %0, i64* %4), !dbg !1117
  call void @Hacl_Impl_Curve25519_Field51_fsub(i64* %5, i64* %0, i64* %4), !dbg !1118
  call void @Hacl_Impl_Curve25519_Field51_fsqr2(i64* %8, i64* %1, i128* %2), !dbg !1119
  %9 = getelementptr inbounds i64, i64* %7, i64 0, !dbg !1120
  %10 = load i64, i64* %9, align 8, !dbg !1120
  %11 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1121
  store i64 %10, i64* %11, align 8, !dbg !1122
  %12 = getelementptr inbounds i64, i64* %7, i64 1, !dbg !1123
  %13 = load i64, i64* %12, align 8, !dbg !1123
  %14 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1124
  store i64 %13, i64* %14, align 8, !dbg !1125
  %15 = getelementptr inbounds i64, i64* %7, i64 2, !dbg !1126
  %16 = load i64, i64* %15, align 8, !dbg !1126
  %17 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1127
  store i64 %16, i64* %17, align 8, !dbg !1128
  %18 = getelementptr inbounds i64, i64* %7, i64 3, !dbg !1129
  %19 = load i64, i64* %18, align 8, !dbg !1129
  %20 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1130
  store i64 %19, i64* %20, align 8, !dbg !1131
  %21 = getelementptr inbounds i64, i64* %7, i64 4, !dbg !1132
  %22 = load i64, i64* %21, align 8, !dbg !1132
  %23 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1133
  store i64 %22, i64* %23, align 8, !dbg !1134
  call void @Hacl_Impl_Curve25519_Field51_fsub(i64* %7, i64* %6, i64* %7), !dbg !1135
  call void @Hacl_Impl_Curve25519_Field51_fmul1(i64* %5, i64* %7, i64 121665), !dbg !1136
  call void @Hacl_Impl_Curve25519_Field51_fadd(i64* %5, i64* %5, i64* %6), !dbg !1137
  call void @Hacl_Impl_Curve25519_Field51_fmul2(i64* %0, i64* %8, i64* %1, i128* %2), !dbg !1138
  ret void, !dbg !1139
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fadd(i64* %0, i64* %1, i64* %2) #0 !dbg !1140 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1143, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64* %1, metadata !1145, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64* %2, metadata !1146, metadata !DIExpression()), !dbg !1144
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1147
  %5 = load i64, i64* %4, align 8, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %5, metadata !1148, metadata !DIExpression()), !dbg !1144
  %6 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1149
  %7 = load i64, i64* %6, align 8, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %7, metadata !1150, metadata !DIExpression()), !dbg !1144
  %8 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1151
  %9 = load i64, i64* %8, align 8, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %9, metadata !1152, metadata !DIExpression()), !dbg !1144
  %10 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1153
  %11 = load i64, i64* %10, align 8, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %11, metadata !1154, metadata !DIExpression()), !dbg !1144
  %12 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1155
  %13 = load i64, i64* %12, align 8, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %13, metadata !1156, metadata !DIExpression()), !dbg !1144
  %14 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1157
  %15 = load i64, i64* %14, align 8, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %15, metadata !1158, metadata !DIExpression()), !dbg !1144
  %16 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1159
  %17 = load i64, i64* %16, align 8, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %17, metadata !1160, metadata !DIExpression()), !dbg !1144
  %18 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1161
  %19 = load i64, i64* %18, align 8, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %19, metadata !1162, metadata !DIExpression()), !dbg !1144
  %20 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1163
  %21 = load i64, i64* %20, align 8, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %21, metadata !1164, metadata !DIExpression()), !dbg !1144
  %22 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1165
  %23 = load i64, i64* %22, align 8, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %23, metadata !1166, metadata !DIExpression()), !dbg !1144
  %24 = add i64 %5, %7, !dbg !1167
  %25 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1168
  store i64 %24, i64* %25, align 8, !dbg !1169
  %26 = add i64 %9, %11, !dbg !1170
  %27 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1171
  store i64 %26, i64* %27, align 8, !dbg !1172
  %28 = add i64 %13, %15, !dbg !1173
  %29 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1174
  store i64 %28, i64* %29, align 8, !dbg !1175
  %30 = add i64 %17, %19, !dbg !1176
  %31 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1177
  store i64 %30, i64* %31, align 8, !dbg !1178
  %32 = add i64 %21, %23, !dbg !1179
  %33 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1180
  store i64 %32, i64* %33, align 8, !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fsub(i64* %0, i64* %1, i64* %2) #0 !dbg !1183 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i64* %1, metadata !1186, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i64* %2, metadata !1187, metadata !DIExpression()), !dbg !1185
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1188
  %5 = load i64, i64* %4, align 8, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %5, metadata !1189, metadata !DIExpression()), !dbg !1185
  %6 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1190
  %7 = load i64, i64* %6, align 8, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %7, metadata !1191, metadata !DIExpression()), !dbg !1185
  %8 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1192
  %9 = load i64, i64* %8, align 8, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %9, metadata !1193, metadata !DIExpression()), !dbg !1185
  %10 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1194
  %11 = load i64, i64* %10, align 8, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %11, metadata !1195, metadata !DIExpression()), !dbg !1185
  %12 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1196
  %13 = load i64, i64* %12, align 8, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %13, metadata !1197, metadata !DIExpression()), !dbg !1185
  %14 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1198
  %15 = load i64, i64* %14, align 8, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %15, metadata !1199, metadata !DIExpression()), !dbg !1185
  %16 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1200
  %17 = load i64, i64* %16, align 8, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %17, metadata !1201, metadata !DIExpression()), !dbg !1185
  %18 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1202
  %19 = load i64, i64* %18, align 8, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %19, metadata !1203, metadata !DIExpression()), !dbg !1185
  %20 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1204
  %21 = load i64, i64* %20, align 8, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %21, metadata !1205, metadata !DIExpression()), !dbg !1185
  %22 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1206
  %23 = load i64, i64* %22, align 8, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %23, metadata !1207, metadata !DIExpression()), !dbg !1185
  %24 = add i64 %5, 18014398509481832, !dbg !1208
  %25 = sub i64 %24, %7, !dbg !1209
  %26 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1210
  store i64 %25, i64* %26, align 8, !dbg !1211
  %27 = add i64 %9, 18014398509481976, !dbg !1212
  %28 = sub i64 %27, %11, !dbg !1213
  %29 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1214
  store i64 %28, i64* %29, align 8, !dbg !1215
  %30 = add i64 %13, 18014398509481976, !dbg !1216
  %31 = sub i64 %30, %15, !dbg !1217
  %32 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1218
  store i64 %31, i64* %32, align 8, !dbg !1219
  %33 = add i64 %17, 18014398509481976, !dbg !1220
  %34 = sub i64 %33, %19, !dbg !1221
  %35 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1222
  store i64 %34, i64* %35, align 8, !dbg !1223
  %36 = add i64 %21, 18014398509481976, !dbg !1224
  %37 = sub i64 %36, %23, !dbg !1225
  %38 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1226
  store i64 %37, i64* %38, align 8, !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fsqr2(i64* %0, i64* %1, i128* %2) #0 !dbg !1229 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = alloca i128, align 16
  %21 = alloca i128, align 16
  %22 = alloca i128, align 16
  %23 = alloca i128, align 16
  %24 = alloca i128, align 16
  %25 = alloca i128, align 16
  %26 = alloca i128, align 16
  %27 = alloca i128, align 16
  %28 = alloca i128, align 16
  %29 = alloca i128, align 16
  %30 = alloca i128, align 16
  %31 = alloca i128, align 16
  %32 = alloca i128, align 16
  %33 = alloca i128, align 16
  %34 = alloca i128, align 16
  %35 = alloca i128, align 16
  %36 = alloca i128, align 16
  %37 = alloca i128, align 16
  %38 = alloca i128, align 16
  %39 = alloca i128, align 16
  %40 = alloca i128, align 16
  %41 = alloca i128, align 16
  %42 = alloca i128, align 16
  %43 = alloca i128, align 16
  %44 = alloca i128, align 16
  %45 = alloca i128, align 16
  %46 = alloca i128, align 16
  %47 = alloca i128, align 16
  %48 = alloca i128, align 16
  %49 = alloca i128, align 16
  %50 = alloca i128, align 16
  %51 = alloca i128, align 16
  %52 = alloca i128, align 16
  %53 = alloca i128, align 16
  %54 = alloca i128, align 16
  %55 = alloca i128, align 16
  %56 = alloca i128, align 16
  %57 = alloca i128, align 16
  %58 = alloca i128, align 16
  %59 = alloca i128, align 16
  %60 = alloca i128, align 16
  %61 = alloca i128, align 16
  %62 = alloca i128, align 16
  %63 = alloca i128, align 16
  %64 = alloca i128, align 16
  %65 = alloca i128, align 16
  %66 = alloca i128, align 16
  %67 = alloca i128, align 16
  %68 = alloca i128, align 16
  %69 = alloca i128, align 16
  %70 = alloca i128, align 16
  %71 = alloca i128, align 16
  %72 = alloca i128, align 16
  %73 = alloca i128, align 16
  %74 = alloca i128, align 16
  %75 = alloca i128, align 16
  %76 = alloca i128, align 16
  %77 = alloca i128, align 16
  %78 = alloca i128, align 16
  %79 = alloca i128, align 16
  %80 = alloca i128, align 16
  %81 = alloca i128, align 16
  %82 = alloca i128, align 16
  %83 = alloca i128, align 16
  %84 = alloca i128, align 16
  %85 = alloca i128, align 16
  %86 = alloca i128, align 16
  %87 = alloca i128, align 16
  %88 = alloca i128, align 16
  %89 = alloca i128, align 16
  %90 = alloca i128, align 16
  %91 = alloca i128, align 16
  %92 = alloca i128, align 16
  %93 = alloca i128, align 16
  %94 = alloca i128, align 16
  %95 = alloca i128, align 16
  %96 = alloca i128, align 16
  %97 = alloca i128, align 16
  %98 = alloca i128, align 16
  %99 = alloca i128, align 16
  %100 = alloca i128, align 16
  %101 = alloca i128, align 16
  %102 = alloca i128, align 16
  %103 = alloca i128, align 16
  %104 = alloca i128, align 16
  %105 = alloca i128, align 16
  %106 = alloca i128, align 16
  %107 = alloca i128, align 16
  %108 = alloca i128, align 16
  %109 = alloca i128, align 16
  %110 = alloca i128, align 16
  %111 = alloca i128, align 16
  %112 = alloca i128, align 16
  %113 = alloca i128, align 16
  %114 = alloca i128, align 16
  %115 = alloca i128, align 16
  %116 = alloca i128, align 16
  %117 = alloca i128, align 16
  %118 = alloca i128, align 16
  %119 = alloca i128, align 16
  %120 = alloca i128, align 16
  %121 = alloca i128, align 16
  %122 = alloca i128, align 16
  %123 = alloca i128, align 16
  %124 = alloca i128, align 16
  %125 = alloca i128, align 16
  %126 = alloca i128, align 16
  %127 = alloca i128, align 16
  %128 = alloca i128, align 16
  %129 = alloca i128, align 16
  %130 = alloca i128, align 16
  %131 = alloca i128, align 16
  %132 = alloca i128, align 16
  %133 = alloca i128, align 16
  %134 = alloca i128, align 16
  %135 = alloca i128, align 16
  %136 = alloca i128, align 16
  %137 = alloca i128, align 16
  %138 = alloca i128, align 16
  %139 = alloca i128, align 16
  %140 = alloca i128, align 16
  %141 = alloca i128, align 16
  %142 = alloca i128, align 16
  %143 = alloca i128, align 16
  %144 = alloca i128, align 16
  %145 = alloca i128, align 16
  %146 = alloca i128, align 16
  %147 = alloca i128, align 16
  %148 = alloca i128, align 16
  %149 = alloca i128, align 16
  %150 = alloca i128, align 16
  %151 = alloca i128, align 16
  %152 = alloca i128, align 16
  %153 = alloca i128, align 16
  %154 = alloca i128, align 16
  %155 = alloca i128, align 16
  %156 = alloca i128, align 16
  %157 = alloca i128, align 16
  %158 = alloca i128, align 16
  %159 = alloca i128, align 16
  %160 = alloca i128, align 16
  %161 = alloca i128, align 16
  %162 = alloca i128, align 16
  %163 = alloca i128, align 16
  %164 = alloca i128, align 16
  %165 = alloca i128, align 16
  %166 = alloca i128, align 16
  %167 = alloca i128, align 16
  %168 = alloca i128, align 16
  %169 = alloca i128, align 16
  %170 = alloca i128, align 16
  %171 = alloca i128, align 16
  %172 = alloca i128, align 16
  %173 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !1230, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64* %1, metadata !1232, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128* %2, metadata !1233, metadata !DIExpression()), !dbg !1231
  %174 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1234
  %175 = load i64, i64* %174, align 8, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %175, metadata !1235, metadata !DIExpression()), !dbg !1231
  %176 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1236
  %177 = load i64, i64* %176, align 8, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %177, metadata !1237, metadata !DIExpression()), !dbg !1231
  %178 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1238
  %179 = load i64, i64* %178, align 8, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %179, metadata !1239, metadata !DIExpression()), !dbg !1231
  %180 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1240
  %181 = load i64, i64* %180, align 8, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %181, metadata !1241, metadata !DIExpression()), !dbg !1231
  %182 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1242
  %183 = load i64, i64* %182, align 8, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %183, metadata !1243, metadata !DIExpression()), !dbg !1231
  %184 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !1244
  %185 = load i64, i64* %184, align 8, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %185, metadata !1245, metadata !DIExpression()), !dbg !1231
  %186 = getelementptr inbounds i64, i64* %1, i64 6, !dbg !1246
  %187 = load i64, i64* %186, align 8, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %187, metadata !1247, metadata !DIExpression()), !dbg !1231
  %188 = getelementptr inbounds i64, i64* %1, i64 7, !dbg !1248
  %189 = load i64, i64* %188, align 8, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %189, metadata !1249, metadata !DIExpression()), !dbg !1231
  %190 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !1250
  %191 = load i64, i64* %190, align 8, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %191, metadata !1251, metadata !DIExpression()), !dbg !1231
  %192 = getelementptr inbounds i64, i64* %1, i64 9, !dbg !1252
  %193 = load i64, i64* %192, align 8, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %193, metadata !1253, metadata !DIExpression()), !dbg !1231
  %194 = mul i64 2, %175, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %194, metadata !1255, metadata !DIExpression()), !dbg !1231
  %195 = mul i64 2, %177, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %195, metadata !1257, metadata !DIExpression()), !dbg !1231
  %196 = mul i64 38, %179, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %196, metadata !1259, metadata !DIExpression()), !dbg !1231
  %197 = mul i64 19, %181, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %197, metadata !1261, metadata !DIExpression()), !dbg !1231
  %198 = mul i64 19, %183, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %198, metadata !1263, metadata !DIExpression()), !dbg !1231
  %199 = mul i64 2, %198, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %199, metadata !1265, metadata !DIExpression()), !dbg !1231
  %200 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %175, i64 %175), !dbg !1266
  %201 = bitcast i128* %4 to { i64, i64 }*, !dbg !1266
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %201, i32 0, i32 0, !dbg !1266
  %203 = extractvalue { i64, i64 } %200, 0, !dbg !1266
  store i64 %203, i64* %202, align 16, !dbg !1266
  %204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %201, i32 0, i32 1, !dbg !1266
  %205 = extractvalue { i64, i64 } %200, 1, !dbg !1266
  store i64 %205, i64* %204, align 8, !dbg !1266
  %206 = load i128, i128* %4, align 16, !dbg !1266
  %207 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %199, i64 %177), !dbg !1267
  %208 = bitcast i128* %5 to { i64, i64 }*, !dbg !1267
  %209 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 0, !dbg !1267
  %210 = extractvalue { i64, i64 } %207, 0, !dbg !1267
  store i64 %210, i64* %209, align 16, !dbg !1267
  %211 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 1, !dbg !1267
  %212 = extractvalue { i64, i64 } %207, 1, !dbg !1267
  store i64 %212, i64* %211, align 8, !dbg !1267
  %213 = load i128, i128* %5, align 16, !dbg !1267
  store i128 %206, i128* %6, align 16, !dbg !1268
  %214 = bitcast i128* %6 to { i64, i64 }*, !dbg !1268
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %214, i32 0, i32 0, !dbg !1268
  %216 = load i64, i64* %215, align 16, !dbg !1268
  %217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %214, i32 0, i32 1, !dbg !1268
  %218 = load i64, i64* %217, align 8, !dbg !1268
  store i128 %213, i128* %7, align 16, !dbg !1268
  %219 = bitcast i128* %7 to { i64, i64 }*, !dbg !1268
  %220 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %219, i32 0, i32 0, !dbg !1268
  %221 = load i64, i64* %220, align 16, !dbg !1268
  %222 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %219, i32 0, i32 1, !dbg !1268
  %223 = load i64, i64* %222, align 8, !dbg !1268
  %224 = call { i64, i64 } @FStar_UInt128_add(i64 %216, i64 %218, i64 %221, i64 %223), !dbg !1268
  %225 = bitcast i128* %8 to { i64, i64 }*, !dbg !1268
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 0, !dbg !1268
  %227 = extractvalue { i64, i64 } %224, 0, !dbg !1268
  store i64 %227, i64* %226, align 16, !dbg !1268
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %225, i32 0, i32 1, !dbg !1268
  %229 = extractvalue { i64, i64 } %224, 1, !dbg !1268
  store i64 %229, i64* %228, align 8, !dbg !1268
  %230 = load i128, i128* %8, align 16, !dbg !1268
  %231 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %196, i64 %181), !dbg !1269
  %232 = bitcast i128* %9 to { i64, i64 }*, !dbg !1269
  %233 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 0, !dbg !1269
  %234 = extractvalue { i64, i64 } %231, 0, !dbg !1269
  store i64 %234, i64* %233, align 16, !dbg !1269
  %235 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 1, !dbg !1269
  %236 = extractvalue { i64, i64 } %231, 1, !dbg !1269
  store i64 %236, i64* %235, align 8, !dbg !1269
  %237 = load i128, i128* %9, align 16, !dbg !1269
  store i128 %230, i128* %10, align 16, !dbg !1270
  %238 = bitcast i128* %10 to { i64, i64 }*, !dbg !1270
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 0, !dbg !1270
  %240 = load i64, i64* %239, align 16, !dbg !1270
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 1, !dbg !1270
  %242 = load i64, i64* %241, align 8, !dbg !1270
  store i128 %237, i128* %11, align 16, !dbg !1270
  %243 = bitcast i128* %11 to { i64, i64 }*, !dbg !1270
  %244 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %243, i32 0, i32 0, !dbg !1270
  %245 = load i64, i64* %244, align 16, !dbg !1270
  %246 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %243, i32 0, i32 1, !dbg !1270
  %247 = load i64, i64* %246, align 8, !dbg !1270
  %248 = call { i64, i64 } @FStar_UInt128_add(i64 %240, i64 %242, i64 %245, i64 %247), !dbg !1270
  %249 = bitcast i128* %12 to { i64, i64 }*, !dbg !1270
  %250 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %249, i32 0, i32 0, !dbg !1270
  %251 = extractvalue { i64, i64 } %248, 0, !dbg !1270
  store i64 %251, i64* %250, align 16, !dbg !1270
  %252 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %249, i32 0, i32 1, !dbg !1270
  %253 = extractvalue { i64, i64 } %248, 1, !dbg !1270
  store i64 %253, i64* %252, align 8, !dbg !1270
  %254 = load i128, i128* %12, align 16, !dbg !1270
  call void @llvm.dbg.value(metadata i128 %254, metadata !1271, metadata !DIExpression()), !dbg !1231
  %255 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %194, i64 %177), !dbg !1272
  %256 = bitcast i128* %13 to { i64, i64 }*, !dbg !1272
  %257 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %256, i32 0, i32 0, !dbg !1272
  %258 = extractvalue { i64, i64 } %255, 0, !dbg !1272
  store i64 %258, i64* %257, align 16, !dbg !1272
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %256, i32 0, i32 1, !dbg !1272
  %260 = extractvalue { i64, i64 } %255, 1, !dbg !1272
  store i64 %260, i64* %259, align 8, !dbg !1272
  %261 = load i128, i128* %13, align 16, !dbg !1272
  %262 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %199, i64 %179), !dbg !1273
  %263 = bitcast i128* %14 to { i64, i64 }*, !dbg !1273
  %264 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 0, !dbg !1273
  %265 = extractvalue { i64, i64 } %262, 0, !dbg !1273
  store i64 %265, i64* %264, align 16, !dbg !1273
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 1, !dbg !1273
  %267 = extractvalue { i64, i64 } %262, 1, !dbg !1273
  store i64 %267, i64* %266, align 8, !dbg !1273
  %268 = load i128, i128* %14, align 16, !dbg !1273
  store i128 %261, i128* %15, align 16, !dbg !1274
  %269 = bitcast i128* %15 to { i64, i64 }*, !dbg !1274
  %270 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %269, i32 0, i32 0, !dbg !1274
  %271 = load i64, i64* %270, align 16, !dbg !1274
  %272 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %269, i32 0, i32 1, !dbg !1274
  %273 = load i64, i64* %272, align 8, !dbg !1274
  store i128 %268, i128* %16, align 16, !dbg !1274
  %274 = bitcast i128* %16 to { i64, i64 }*, !dbg !1274
  %275 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %274, i32 0, i32 0, !dbg !1274
  %276 = load i64, i64* %275, align 16, !dbg !1274
  %277 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %274, i32 0, i32 1, !dbg !1274
  %278 = load i64, i64* %277, align 8, !dbg !1274
  %279 = call { i64, i64 } @FStar_UInt128_add(i64 %271, i64 %273, i64 %276, i64 %278), !dbg !1274
  %280 = bitcast i128* %17 to { i64, i64 }*, !dbg !1274
  %281 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %280, i32 0, i32 0, !dbg !1274
  %282 = extractvalue { i64, i64 } %279, 0, !dbg !1274
  store i64 %282, i64* %281, align 16, !dbg !1274
  %283 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %280, i32 0, i32 1, !dbg !1274
  %284 = extractvalue { i64, i64 } %279, 1, !dbg !1274
  store i64 %284, i64* %283, align 8, !dbg !1274
  %285 = load i128, i128* %17, align 16, !dbg !1274
  %286 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %197, i64 %181), !dbg !1275
  %287 = bitcast i128* %18 to { i64, i64 }*, !dbg !1275
  %288 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %287, i32 0, i32 0, !dbg !1275
  %289 = extractvalue { i64, i64 } %286, 0, !dbg !1275
  store i64 %289, i64* %288, align 16, !dbg !1275
  %290 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %287, i32 0, i32 1, !dbg !1275
  %291 = extractvalue { i64, i64 } %286, 1, !dbg !1275
  store i64 %291, i64* %290, align 8, !dbg !1275
  %292 = load i128, i128* %18, align 16, !dbg !1275
  store i128 %285, i128* %19, align 16, !dbg !1276
  %293 = bitcast i128* %19 to { i64, i64 }*, !dbg !1276
  %294 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %293, i32 0, i32 0, !dbg !1276
  %295 = load i64, i64* %294, align 16, !dbg !1276
  %296 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %293, i32 0, i32 1, !dbg !1276
  %297 = load i64, i64* %296, align 8, !dbg !1276
  store i128 %292, i128* %20, align 16, !dbg !1276
  %298 = bitcast i128* %20 to { i64, i64 }*, !dbg !1276
  %299 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %298, i32 0, i32 0, !dbg !1276
  %300 = load i64, i64* %299, align 16, !dbg !1276
  %301 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %298, i32 0, i32 1, !dbg !1276
  %302 = load i64, i64* %301, align 8, !dbg !1276
  %303 = call { i64, i64 } @FStar_UInt128_add(i64 %295, i64 %297, i64 %300, i64 %302), !dbg !1276
  %304 = bitcast i128* %21 to { i64, i64 }*, !dbg !1276
  %305 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %304, i32 0, i32 0, !dbg !1276
  %306 = extractvalue { i64, i64 } %303, 0, !dbg !1276
  store i64 %306, i64* %305, align 16, !dbg !1276
  %307 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %304, i32 0, i32 1, !dbg !1276
  %308 = extractvalue { i64, i64 } %303, 1, !dbg !1276
  store i64 %308, i64* %307, align 8, !dbg !1276
  %309 = load i128, i128* %21, align 16, !dbg !1276
  call void @llvm.dbg.value(metadata i128 %309, metadata !1277, metadata !DIExpression()), !dbg !1231
  %310 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %194, i64 %179), !dbg !1278
  %311 = bitcast i128* %22 to { i64, i64 }*, !dbg !1278
  %312 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 0, !dbg !1278
  %313 = extractvalue { i64, i64 } %310, 0, !dbg !1278
  store i64 %313, i64* %312, align 16, !dbg !1278
  %314 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 1, !dbg !1278
  %315 = extractvalue { i64, i64 } %310, 1, !dbg !1278
  store i64 %315, i64* %314, align 8, !dbg !1278
  %316 = load i128, i128* %22, align 16, !dbg !1278
  %317 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %177, i64 %177), !dbg !1279
  %318 = bitcast i128* %23 to { i64, i64 }*, !dbg !1279
  %319 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %318, i32 0, i32 0, !dbg !1279
  %320 = extractvalue { i64, i64 } %317, 0, !dbg !1279
  store i64 %320, i64* %319, align 16, !dbg !1279
  %321 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %318, i32 0, i32 1, !dbg !1279
  %322 = extractvalue { i64, i64 } %317, 1, !dbg !1279
  store i64 %322, i64* %321, align 8, !dbg !1279
  %323 = load i128, i128* %23, align 16, !dbg !1279
  store i128 %316, i128* %24, align 16, !dbg !1280
  %324 = bitcast i128* %24 to { i64, i64 }*, !dbg !1280
  %325 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %324, i32 0, i32 0, !dbg !1280
  %326 = load i64, i64* %325, align 16, !dbg !1280
  %327 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %324, i32 0, i32 1, !dbg !1280
  %328 = load i64, i64* %327, align 8, !dbg !1280
  store i128 %323, i128* %25, align 16, !dbg !1280
  %329 = bitcast i128* %25 to { i64, i64 }*, !dbg !1280
  %330 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %329, i32 0, i32 0, !dbg !1280
  %331 = load i64, i64* %330, align 16, !dbg !1280
  %332 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %329, i32 0, i32 1, !dbg !1280
  %333 = load i64, i64* %332, align 8, !dbg !1280
  %334 = call { i64, i64 } @FStar_UInt128_add(i64 %326, i64 %328, i64 %331, i64 %333), !dbg !1280
  %335 = bitcast i128* %26 to { i64, i64 }*, !dbg !1280
  %336 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %335, i32 0, i32 0, !dbg !1280
  %337 = extractvalue { i64, i64 } %334, 0, !dbg !1280
  store i64 %337, i64* %336, align 16, !dbg !1280
  %338 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %335, i32 0, i32 1, !dbg !1280
  %339 = extractvalue { i64, i64 } %334, 1, !dbg !1280
  store i64 %339, i64* %338, align 8, !dbg !1280
  %340 = load i128, i128* %26, align 16, !dbg !1280
  %341 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %199, i64 %181), !dbg !1281
  %342 = bitcast i128* %27 to { i64, i64 }*, !dbg !1281
  %343 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %342, i32 0, i32 0, !dbg !1281
  %344 = extractvalue { i64, i64 } %341, 0, !dbg !1281
  store i64 %344, i64* %343, align 16, !dbg !1281
  %345 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %342, i32 0, i32 1, !dbg !1281
  %346 = extractvalue { i64, i64 } %341, 1, !dbg !1281
  store i64 %346, i64* %345, align 8, !dbg !1281
  %347 = load i128, i128* %27, align 16, !dbg !1281
  store i128 %340, i128* %28, align 16, !dbg !1282
  %348 = bitcast i128* %28 to { i64, i64 }*, !dbg !1282
  %349 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %348, i32 0, i32 0, !dbg !1282
  %350 = load i64, i64* %349, align 16, !dbg !1282
  %351 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %348, i32 0, i32 1, !dbg !1282
  %352 = load i64, i64* %351, align 8, !dbg !1282
  store i128 %347, i128* %29, align 16, !dbg !1282
  %353 = bitcast i128* %29 to { i64, i64 }*, !dbg !1282
  %354 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %353, i32 0, i32 0, !dbg !1282
  %355 = load i64, i64* %354, align 16, !dbg !1282
  %356 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %353, i32 0, i32 1, !dbg !1282
  %357 = load i64, i64* %356, align 8, !dbg !1282
  %358 = call { i64, i64 } @FStar_UInt128_add(i64 %350, i64 %352, i64 %355, i64 %357), !dbg !1282
  %359 = bitcast i128* %30 to { i64, i64 }*, !dbg !1282
  %360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %359, i32 0, i32 0, !dbg !1282
  %361 = extractvalue { i64, i64 } %358, 0, !dbg !1282
  store i64 %361, i64* %360, align 16, !dbg !1282
  %362 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %359, i32 0, i32 1, !dbg !1282
  %363 = extractvalue { i64, i64 } %358, 1, !dbg !1282
  store i64 %363, i64* %362, align 8, !dbg !1282
  %364 = load i128, i128* %30, align 16, !dbg !1282
  call void @llvm.dbg.value(metadata i128 %364, metadata !1283, metadata !DIExpression()), !dbg !1231
  %365 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %194, i64 %181), !dbg !1284
  %366 = bitcast i128* %31 to { i64, i64 }*, !dbg !1284
  %367 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %366, i32 0, i32 0, !dbg !1284
  %368 = extractvalue { i64, i64 } %365, 0, !dbg !1284
  store i64 %368, i64* %367, align 16, !dbg !1284
  %369 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %366, i32 0, i32 1, !dbg !1284
  %370 = extractvalue { i64, i64 } %365, 1, !dbg !1284
  store i64 %370, i64* %369, align 8, !dbg !1284
  %371 = load i128, i128* %31, align 16, !dbg !1284
  %372 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %195, i64 %179), !dbg !1285
  %373 = bitcast i128* %32 to { i64, i64 }*, !dbg !1285
  %374 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %373, i32 0, i32 0, !dbg !1285
  %375 = extractvalue { i64, i64 } %372, 0, !dbg !1285
  store i64 %375, i64* %374, align 16, !dbg !1285
  %376 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %373, i32 0, i32 1, !dbg !1285
  %377 = extractvalue { i64, i64 } %372, 1, !dbg !1285
  store i64 %377, i64* %376, align 8, !dbg !1285
  %378 = load i128, i128* %32, align 16, !dbg !1285
  store i128 %371, i128* %33, align 16, !dbg !1286
  %379 = bitcast i128* %33 to { i64, i64 }*, !dbg !1286
  %380 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %379, i32 0, i32 0, !dbg !1286
  %381 = load i64, i64* %380, align 16, !dbg !1286
  %382 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %379, i32 0, i32 1, !dbg !1286
  %383 = load i64, i64* %382, align 8, !dbg !1286
  store i128 %378, i128* %34, align 16, !dbg !1286
  %384 = bitcast i128* %34 to { i64, i64 }*, !dbg !1286
  %385 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %384, i32 0, i32 0, !dbg !1286
  %386 = load i64, i64* %385, align 16, !dbg !1286
  %387 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %384, i32 0, i32 1, !dbg !1286
  %388 = load i64, i64* %387, align 8, !dbg !1286
  %389 = call { i64, i64 } @FStar_UInt128_add(i64 %381, i64 %383, i64 %386, i64 %388), !dbg !1286
  %390 = bitcast i128* %35 to { i64, i64 }*, !dbg !1286
  %391 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %390, i32 0, i32 0, !dbg !1286
  %392 = extractvalue { i64, i64 } %389, 0, !dbg !1286
  store i64 %392, i64* %391, align 16, !dbg !1286
  %393 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %390, i32 0, i32 1, !dbg !1286
  %394 = extractvalue { i64, i64 } %389, 1, !dbg !1286
  store i64 %394, i64* %393, align 8, !dbg !1286
  %395 = load i128, i128* %35, align 16, !dbg !1286
  %396 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %183, i64 %198), !dbg !1287
  %397 = bitcast i128* %36 to { i64, i64 }*, !dbg !1287
  %398 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %397, i32 0, i32 0, !dbg !1287
  %399 = extractvalue { i64, i64 } %396, 0, !dbg !1287
  store i64 %399, i64* %398, align 16, !dbg !1287
  %400 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %397, i32 0, i32 1, !dbg !1287
  %401 = extractvalue { i64, i64 } %396, 1, !dbg !1287
  store i64 %401, i64* %400, align 8, !dbg !1287
  %402 = load i128, i128* %36, align 16, !dbg !1287
  store i128 %395, i128* %37, align 16, !dbg !1288
  %403 = bitcast i128* %37 to { i64, i64 }*, !dbg !1288
  %404 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %403, i32 0, i32 0, !dbg !1288
  %405 = load i64, i64* %404, align 16, !dbg !1288
  %406 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %403, i32 0, i32 1, !dbg !1288
  %407 = load i64, i64* %406, align 8, !dbg !1288
  store i128 %402, i128* %38, align 16, !dbg !1288
  %408 = bitcast i128* %38 to { i64, i64 }*, !dbg !1288
  %409 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %408, i32 0, i32 0, !dbg !1288
  %410 = load i64, i64* %409, align 16, !dbg !1288
  %411 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %408, i32 0, i32 1, !dbg !1288
  %412 = load i64, i64* %411, align 8, !dbg !1288
  %413 = call { i64, i64 } @FStar_UInt128_add(i64 %405, i64 %407, i64 %410, i64 %412), !dbg !1288
  %414 = bitcast i128* %39 to { i64, i64 }*, !dbg !1288
  %415 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %414, i32 0, i32 0, !dbg !1288
  %416 = extractvalue { i64, i64 } %413, 0, !dbg !1288
  store i64 %416, i64* %415, align 16, !dbg !1288
  %417 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %414, i32 0, i32 1, !dbg !1288
  %418 = extractvalue { i64, i64 } %413, 1, !dbg !1288
  store i64 %418, i64* %417, align 8, !dbg !1288
  %419 = load i128, i128* %39, align 16, !dbg !1288
  call void @llvm.dbg.value(metadata i128 %419, metadata !1289, metadata !DIExpression()), !dbg !1231
  %420 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %194, i64 %183), !dbg !1290
  %421 = bitcast i128* %40 to { i64, i64 }*, !dbg !1290
  %422 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %421, i32 0, i32 0, !dbg !1290
  %423 = extractvalue { i64, i64 } %420, 0, !dbg !1290
  store i64 %423, i64* %422, align 16, !dbg !1290
  %424 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %421, i32 0, i32 1, !dbg !1290
  %425 = extractvalue { i64, i64 } %420, 1, !dbg !1290
  store i64 %425, i64* %424, align 8, !dbg !1290
  %426 = load i128, i128* %40, align 16, !dbg !1290
  %427 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %195, i64 %181), !dbg !1291
  %428 = bitcast i128* %41 to { i64, i64 }*, !dbg !1291
  %429 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %428, i32 0, i32 0, !dbg !1291
  %430 = extractvalue { i64, i64 } %427, 0, !dbg !1291
  store i64 %430, i64* %429, align 16, !dbg !1291
  %431 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %428, i32 0, i32 1, !dbg !1291
  %432 = extractvalue { i64, i64 } %427, 1, !dbg !1291
  store i64 %432, i64* %431, align 8, !dbg !1291
  %433 = load i128, i128* %41, align 16, !dbg !1291
  store i128 %426, i128* %42, align 16, !dbg !1292
  %434 = bitcast i128* %42 to { i64, i64 }*, !dbg !1292
  %435 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %434, i32 0, i32 0, !dbg !1292
  %436 = load i64, i64* %435, align 16, !dbg !1292
  %437 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %434, i32 0, i32 1, !dbg !1292
  %438 = load i64, i64* %437, align 8, !dbg !1292
  store i128 %433, i128* %43, align 16, !dbg !1292
  %439 = bitcast i128* %43 to { i64, i64 }*, !dbg !1292
  %440 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 0, !dbg !1292
  %441 = load i64, i64* %440, align 16, !dbg !1292
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 1, !dbg !1292
  %443 = load i64, i64* %442, align 8, !dbg !1292
  %444 = call { i64, i64 } @FStar_UInt128_add(i64 %436, i64 %438, i64 %441, i64 %443), !dbg !1292
  %445 = bitcast i128* %44 to { i64, i64 }*, !dbg !1292
  %446 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %445, i32 0, i32 0, !dbg !1292
  %447 = extractvalue { i64, i64 } %444, 0, !dbg !1292
  store i64 %447, i64* %446, align 16, !dbg !1292
  %448 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %445, i32 0, i32 1, !dbg !1292
  %449 = extractvalue { i64, i64 } %444, 1, !dbg !1292
  store i64 %449, i64* %448, align 8, !dbg !1292
  %450 = load i128, i128* %44, align 16, !dbg !1292
  %451 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %179, i64 %179), !dbg !1293
  %452 = bitcast i128* %45 to { i64, i64 }*, !dbg !1293
  %453 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 0, !dbg !1293
  %454 = extractvalue { i64, i64 } %451, 0, !dbg !1293
  store i64 %454, i64* %453, align 16, !dbg !1293
  %455 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 1, !dbg !1293
  %456 = extractvalue { i64, i64 } %451, 1, !dbg !1293
  store i64 %456, i64* %455, align 8, !dbg !1293
  %457 = load i128, i128* %45, align 16, !dbg !1293
  store i128 %450, i128* %46, align 16, !dbg !1294
  %458 = bitcast i128* %46 to { i64, i64 }*, !dbg !1294
  %459 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %458, i32 0, i32 0, !dbg !1294
  %460 = load i64, i64* %459, align 16, !dbg !1294
  %461 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %458, i32 0, i32 1, !dbg !1294
  %462 = load i64, i64* %461, align 8, !dbg !1294
  store i128 %457, i128* %47, align 16, !dbg !1294
  %463 = bitcast i128* %47 to { i64, i64 }*, !dbg !1294
  %464 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %463, i32 0, i32 0, !dbg !1294
  %465 = load i64, i64* %464, align 16, !dbg !1294
  %466 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %463, i32 0, i32 1, !dbg !1294
  %467 = load i64, i64* %466, align 8, !dbg !1294
  %468 = call { i64, i64 } @FStar_UInt128_add(i64 %460, i64 %462, i64 %465, i64 %467), !dbg !1294
  %469 = bitcast i128* %48 to { i64, i64 }*, !dbg !1294
  %470 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %469, i32 0, i32 0, !dbg !1294
  %471 = extractvalue { i64, i64 } %468, 0, !dbg !1294
  store i64 %471, i64* %470, align 16, !dbg !1294
  %472 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %469, i32 0, i32 1, !dbg !1294
  %473 = extractvalue { i64, i64 } %468, 1, !dbg !1294
  store i64 %473, i64* %472, align 8, !dbg !1294
  %474 = load i128, i128* %48, align 16, !dbg !1294
  call void @llvm.dbg.value(metadata i128 %474, metadata !1295, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %254, metadata !1296, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %309, metadata !1297, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %364, metadata !1298, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %419, metadata !1299, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %474, metadata !1300, metadata !DIExpression()), !dbg !1231
  %475 = mul i64 2, %185, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %475, metadata !1302, metadata !DIExpression()), !dbg !1231
  %476 = mul i64 2, %187, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %476, metadata !1304, metadata !DIExpression()), !dbg !1231
  %477 = mul i64 38, %189, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %477, metadata !1306, metadata !DIExpression()), !dbg !1231
  %478 = mul i64 19, %191, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %478, metadata !1308, metadata !DIExpression()), !dbg !1231
  %479 = mul i64 19, %193, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %479, metadata !1310, metadata !DIExpression()), !dbg !1231
  %480 = mul i64 2, %479, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %480, metadata !1312, metadata !DIExpression()), !dbg !1231
  %481 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %185, i64 %185), !dbg !1313
  %482 = bitcast i128* %49 to { i64, i64 }*, !dbg !1313
  %483 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %482, i32 0, i32 0, !dbg !1313
  %484 = extractvalue { i64, i64 } %481, 0, !dbg !1313
  store i64 %484, i64* %483, align 16, !dbg !1313
  %485 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %482, i32 0, i32 1, !dbg !1313
  %486 = extractvalue { i64, i64 } %481, 1, !dbg !1313
  store i64 %486, i64* %485, align 8, !dbg !1313
  %487 = load i128, i128* %49, align 16, !dbg !1313
  %488 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %480, i64 %187), !dbg !1314
  %489 = bitcast i128* %50 to { i64, i64 }*, !dbg !1314
  %490 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 0, !dbg !1314
  %491 = extractvalue { i64, i64 } %488, 0, !dbg !1314
  store i64 %491, i64* %490, align 16, !dbg !1314
  %492 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 1, !dbg !1314
  %493 = extractvalue { i64, i64 } %488, 1, !dbg !1314
  store i64 %493, i64* %492, align 8, !dbg !1314
  %494 = load i128, i128* %50, align 16, !dbg !1314
  store i128 %487, i128* %51, align 16, !dbg !1315
  %495 = bitcast i128* %51 to { i64, i64 }*, !dbg !1315
  %496 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %495, i32 0, i32 0, !dbg !1315
  %497 = load i64, i64* %496, align 16, !dbg !1315
  %498 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %495, i32 0, i32 1, !dbg !1315
  %499 = load i64, i64* %498, align 8, !dbg !1315
  store i128 %494, i128* %52, align 16, !dbg !1315
  %500 = bitcast i128* %52 to { i64, i64 }*, !dbg !1315
  %501 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %500, i32 0, i32 0, !dbg !1315
  %502 = load i64, i64* %501, align 16, !dbg !1315
  %503 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %500, i32 0, i32 1, !dbg !1315
  %504 = load i64, i64* %503, align 8, !dbg !1315
  %505 = call { i64, i64 } @FStar_UInt128_add(i64 %497, i64 %499, i64 %502, i64 %504), !dbg !1315
  %506 = bitcast i128* %53 to { i64, i64 }*, !dbg !1315
  %507 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %506, i32 0, i32 0, !dbg !1315
  %508 = extractvalue { i64, i64 } %505, 0, !dbg !1315
  store i64 %508, i64* %507, align 16, !dbg !1315
  %509 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %506, i32 0, i32 1, !dbg !1315
  %510 = extractvalue { i64, i64 } %505, 1, !dbg !1315
  store i64 %510, i64* %509, align 8, !dbg !1315
  %511 = load i128, i128* %53, align 16, !dbg !1315
  %512 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %477, i64 %191), !dbg !1316
  %513 = bitcast i128* %54 to { i64, i64 }*, !dbg !1316
  %514 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %513, i32 0, i32 0, !dbg !1316
  %515 = extractvalue { i64, i64 } %512, 0, !dbg !1316
  store i64 %515, i64* %514, align 16, !dbg !1316
  %516 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %513, i32 0, i32 1, !dbg !1316
  %517 = extractvalue { i64, i64 } %512, 1, !dbg !1316
  store i64 %517, i64* %516, align 8, !dbg !1316
  %518 = load i128, i128* %54, align 16, !dbg !1316
  store i128 %511, i128* %55, align 16, !dbg !1317
  %519 = bitcast i128* %55 to { i64, i64 }*, !dbg !1317
  %520 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %519, i32 0, i32 0, !dbg !1317
  %521 = load i64, i64* %520, align 16, !dbg !1317
  %522 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %519, i32 0, i32 1, !dbg !1317
  %523 = load i64, i64* %522, align 8, !dbg !1317
  store i128 %518, i128* %56, align 16, !dbg !1317
  %524 = bitcast i128* %56 to { i64, i64 }*, !dbg !1317
  %525 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %524, i32 0, i32 0, !dbg !1317
  %526 = load i64, i64* %525, align 16, !dbg !1317
  %527 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %524, i32 0, i32 1, !dbg !1317
  %528 = load i64, i64* %527, align 8, !dbg !1317
  %529 = call { i64, i64 } @FStar_UInt128_add(i64 %521, i64 %523, i64 %526, i64 %528), !dbg !1317
  %530 = bitcast i128* %57 to { i64, i64 }*, !dbg !1317
  %531 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %530, i32 0, i32 0, !dbg !1317
  %532 = extractvalue { i64, i64 } %529, 0, !dbg !1317
  store i64 %532, i64* %531, align 16, !dbg !1317
  %533 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %530, i32 0, i32 1, !dbg !1317
  %534 = extractvalue { i64, i64 } %529, 1, !dbg !1317
  store i64 %534, i64* %533, align 8, !dbg !1317
  %535 = load i128, i128* %57, align 16, !dbg !1317
  call void @llvm.dbg.value(metadata i128 %535, metadata !1318, metadata !DIExpression()), !dbg !1231
  %536 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %475, i64 %187), !dbg !1319
  %537 = bitcast i128* %58 to { i64, i64 }*, !dbg !1319
  %538 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %537, i32 0, i32 0, !dbg !1319
  %539 = extractvalue { i64, i64 } %536, 0, !dbg !1319
  store i64 %539, i64* %538, align 16, !dbg !1319
  %540 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %537, i32 0, i32 1, !dbg !1319
  %541 = extractvalue { i64, i64 } %536, 1, !dbg !1319
  store i64 %541, i64* %540, align 8, !dbg !1319
  %542 = load i128, i128* %58, align 16, !dbg !1319
  %543 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %480, i64 %189), !dbg !1320
  %544 = bitcast i128* %59 to { i64, i64 }*, !dbg !1320
  %545 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %544, i32 0, i32 0, !dbg !1320
  %546 = extractvalue { i64, i64 } %543, 0, !dbg !1320
  store i64 %546, i64* %545, align 16, !dbg !1320
  %547 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %544, i32 0, i32 1, !dbg !1320
  %548 = extractvalue { i64, i64 } %543, 1, !dbg !1320
  store i64 %548, i64* %547, align 8, !dbg !1320
  %549 = load i128, i128* %59, align 16, !dbg !1320
  store i128 %542, i128* %60, align 16, !dbg !1321
  %550 = bitcast i128* %60 to { i64, i64 }*, !dbg !1321
  %551 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %550, i32 0, i32 0, !dbg !1321
  %552 = load i64, i64* %551, align 16, !dbg !1321
  %553 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %550, i32 0, i32 1, !dbg !1321
  %554 = load i64, i64* %553, align 8, !dbg !1321
  store i128 %549, i128* %61, align 16, !dbg !1321
  %555 = bitcast i128* %61 to { i64, i64 }*, !dbg !1321
  %556 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %555, i32 0, i32 0, !dbg !1321
  %557 = load i64, i64* %556, align 16, !dbg !1321
  %558 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %555, i32 0, i32 1, !dbg !1321
  %559 = load i64, i64* %558, align 8, !dbg !1321
  %560 = call { i64, i64 } @FStar_UInt128_add(i64 %552, i64 %554, i64 %557, i64 %559), !dbg !1321
  %561 = bitcast i128* %62 to { i64, i64 }*, !dbg !1321
  %562 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %561, i32 0, i32 0, !dbg !1321
  %563 = extractvalue { i64, i64 } %560, 0, !dbg !1321
  store i64 %563, i64* %562, align 16, !dbg !1321
  %564 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %561, i32 0, i32 1, !dbg !1321
  %565 = extractvalue { i64, i64 } %560, 1, !dbg !1321
  store i64 %565, i64* %564, align 8, !dbg !1321
  %566 = load i128, i128* %62, align 16, !dbg !1321
  %567 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %478, i64 %191), !dbg !1322
  %568 = bitcast i128* %63 to { i64, i64 }*, !dbg !1322
  %569 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %568, i32 0, i32 0, !dbg !1322
  %570 = extractvalue { i64, i64 } %567, 0, !dbg !1322
  store i64 %570, i64* %569, align 16, !dbg !1322
  %571 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %568, i32 0, i32 1, !dbg !1322
  %572 = extractvalue { i64, i64 } %567, 1, !dbg !1322
  store i64 %572, i64* %571, align 8, !dbg !1322
  %573 = load i128, i128* %63, align 16, !dbg !1322
  store i128 %566, i128* %64, align 16, !dbg !1323
  %574 = bitcast i128* %64 to { i64, i64 }*, !dbg !1323
  %575 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %574, i32 0, i32 0, !dbg !1323
  %576 = load i64, i64* %575, align 16, !dbg !1323
  %577 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %574, i32 0, i32 1, !dbg !1323
  %578 = load i64, i64* %577, align 8, !dbg !1323
  store i128 %573, i128* %65, align 16, !dbg !1323
  %579 = bitcast i128* %65 to { i64, i64 }*, !dbg !1323
  %580 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %579, i32 0, i32 0, !dbg !1323
  %581 = load i64, i64* %580, align 16, !dbg !1323
  %582 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %579, i32 0, i32 1, !dbg !1323
  %583 = load i64, i64* %582, align 8, !dbg !1323
  %584 = call { i64, i64 } @FStar_UInt128_add(i64 %576, i64 %578, i64 %581, i64 %583), !dbg !1323
  %585 = bitcast i128* %66 to { i64, i64 }*, !dbg !1323
  %586 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 0, !dbg !1323
  %587 = extractvalue { i64, i64 } %584, 0, !dbg !1323
  store i64 %587, i64* %586, align 16, !dbg !1323
  %588 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 1, !dbg !1323
  %589 = extractvalue { i64, i64 } %584, 1, !dbg !1323
  store i64 %589, i64* %588, align 8, !dbg !1323
  %590 = load i128, i128* %66, align 16, !dbg !1323
  call void @llvm.dbg.value(metadata i128 %590, metadata !1324, metadata !DIExpression()), !dbg !1231
  %591 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %475, i64 %189), !dbg !1325
  %592 = bitcast i128* %67 to { i64, i64 }*, !dbg !1325
  %593 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %592, i32 0, i32 0, !dbg !1325
  %594 = extractvalue { i64, i64 } %591, 0, !dbg !1325
  store i64 %594, i64* %593, align 16, !dbg !1325
  %595 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %592, i32 0, i32 1, !dbg !1325
  %596 = extractvalue { i64, i64 } %591, 1, !dbg !1325
  store i64 %596, i64* %595, align 8, !dbg !1325
  %597 = load i128, i128* %67, align 16, !dbg !1325
  %598 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %187, i64 %187), !dbg !1326
  %599 = bitcast i128* %68 to { i64, i64 }*, !dbg !1326
  %600 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %599, i32 0, i32 0, !dbg !1326
  %601 = extractvalue { i64, i64 } %598, 0, !dbg !1326
  store i64 %601, i64* %600, align 16, !dbg !1326
  %602 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %599, i32 0, i32 1, !dbg !1326
  %603 = extractvalue { i64, i64 } %598, 1, !dbg !1326
  store i64 %603, i64* %602, align 8, !dbg !1326
  %604 = load i128, i128* %68, align 16, !dbg !1326
  store i128 %597, i128* %69, align 16, !dbg !1327
  %605 = bitcast i128* %69 to { i64, i64 }*, !dbg !1327
  %606 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %605, i32 0, i32 0, !dbg !1327
  %607 = load i64, i64* %606, align 16, !dbg !1327
  %608 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %605, i32 0, i32 1, !dbg !1327
  %609 = load i64, i64* %608, align 8, !dbg !1327
  store i128 %604, i128* %70, align 16, !dbg !1327
  %610 = bitcast i128* %70 to { i64, i64 }*, !dbg !1327
  %611 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %610, i32 0, i32 0, !dbg !1327
  %612 = load i64, i64* %611, align 16, !dbg !1327
  %613 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %610, i32 0, i32 1, !dbg !1327
  %614 = load i64, i64* %613, align 8, !dbg !1327
  %615 = call { i64, i64 } @FStar_UInt128_add(i64 %607, i64 %609, i64 %612, i64 %614), !dbg !1327
  %616 = bitcast i128* %71 to { i64, i64 }*, !dbg !1327
  %617 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %616, i32 0, i32 0, !dbg !1327
  %618 = extractvalue { i64, i64 } %615, 0, !dbg !1327
  store i64 %618, i64* %617, align 16, !dbg !1327
  %619 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %616, i32 0, i32 1, !dbg !1327
  %620 = extractvalue { i64, i64 } %615, 1, !dbg !1327
  store i64 %620, i64* %619, align 8, !dbg !1327
  %621 = load i128, i128* %71, align 16, !dbg !1327
  %622 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %480, i64 %191), !dbg !1328
  %623 = bitcast i128* %72 to { i64, i64 }*, !dbg !1328
  %624 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %623, i32 0, i32 0, !dbg !1328
  %625 = extractvalue { i64, i64 } %622, 0, !dbg !1328
  store i64 %625, i64* %624, align 16, !dbg !1328
  %626 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %623, i32 0, i32 1, !dbg !1328
  %627 = extractvalue { i64, i64 } %622, 1, !dbg !1328
  store i64 %627, i64* %626, align 8, !dbg !1328
  %628 = load i128, i128* %72, align 16, !dbg !1328
  store i128 %621, i128* %73, align 16, !dbg !1329
  %629 = bitcast i128* %73 to { i64, i64 }*, !dbg !1329
  %630 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %629, i32 0, i32 0, !dbg !1329
  %631 = load i64, i64* %630, align 16, !dbg !1329
  %632 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %629, i32 0, i32 1, !dbg !1329
  %633 = load i64, i64* %632, align 8, !dbg !1329
  store i128 %628, i128* %74, align 16, !dbg !1329
  %634 = bitcast i128* %74 to { i64, i64 }*, !dbg !1329
  %635 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %634, i32 0, i32 0, !dbg !1329
  %636 = load i64, i64* %635, align 16, !dbg !1329
  %637 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %634, i32 0, i32 1, !dbg !1329
  %638 = load i64, i64* %637, align 8, !dbg !1329
  %639 = call { i64, i64 } @FStar_UInt128_add(i64 %631, i64 %633, i64 %636, i64 %638), !dbg !1329
  %640 = bitcast i128* %75 to { i64, i64 }*, !dbg !1329
  %641 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %640, i32 0, i32 0, !dbg !1329
  %642 = extractvalue { i64, i64 } %639, 0, !dbg !1329
  store i64 %642, i64* %641, align 16, !dbg !1329
  %643 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %640, i32 0, i32 1, !dbg !1329
  %644 = extractvalue { i64, i64 } %639, 1, !dbg !1329
  store i64 %644, i64* %643, align 8, !dbg !1329
  %645 = load i128, i128* %75, align 16, !dbg !1329
  call void @llvm.dbg.value(metadata i128 %645, metadata !1330, metadata !DIExpression()), !dbg !1231
  %646 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %475, i64 %191), !dbg !1331
  %647 = bitcast i128* %76 to { i64, i64 }*, !dbg !1331
  %648 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %647, i32 0, i32 0, !dbg !1331
  %649 = extractvalue { i64, i64 } %646, 0, !dbg !1331
  store i64 %649, i64* %648, align 16, !dbg !1331
  %650 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %647, i32 0, i32 1, !dbg !1331
  %651 = extractvalue { i64, i64 } %646, 1, !dbg !1331
  store i64 %651, i64* %650, align 8, !dbg !1331
  %652 = load i128, i128* %76, align 16, !dbg !1331
  %653 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %476, i64 %189), !dbg !1332
  %654 = bitcast i128* %77 to { i64, i64 }*, !dbg !1332
  %655 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %654, i32 0, i32 0, !dbg !1332
  %656 = extractvalue { i64, i64 } %653, 0, !dbg !1332
  store i64 %656, i64* %655, align 16, !dbg !1332
  %657 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %654, i32 0, i32 1, !dbg !1332
  %658 = extractvalue { i64, i64 } %653, 1, !dbg !1332
  store i64 %658, i64* %657, align 8, !dbg !1332
  %659 = load i128, i128* %77, align 16, !dbg !1332
  store i128 %652, i128* %78, align 16, !dbg !1333
  %660 = bitcast i128* %78 to { i64, i64 }*, !dbg !1333
  %661 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %660, i32 0, i32 0, !dbg !1333
  %662 = load i64, i64* %661, align 16, !dbg !1333
  %663 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %660, i32 0, i32 1, !dbg !1333
  %664 = load i64, i64* %663, align 8, !dbg !1333
  store i128 %659, i128* %79, align 16, !dbg !1333
  %665 = bitcast i128* %79 to { i64, i64 }*, !dbg !1333
  %666 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %665, i32 0, i32 0, !dbg !1333
  %667 = load i64, i64* %666, align 16, !dbg !1333
  %668 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %665, i32 0, i32 1, !dbg !1333
  %669 = load i64, i64* %668, align 8, !dbg !1333
  %670 = call { i64, i64 } @FStar_UInt128_add(i64 %662, i64 %664, i64 %667, i64 %669), !dbg !1333
  %671 = bitcast i128* %80 to { i64, i64 }*, !dbg !1333
  %672 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %671, i32 0, i32 0, !dbg !1333
  %673 = extractvalue { i64, i64 } %670, 0, !dbg !1333
  store i64 %673, i64* %672, align 16, !dbg !1333
  %674 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %671, i32 0, i32 1, !dbg !1333
  %675 = extractvalue { i64, i64 } %670, 1, !dbg !1333
  store i64 %675, i64* %674, align 8, !dbg !1333
  %676 = load i128, i128* %80, align 16, !dbg !1333
  %677 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %193, i64 %479), !dbg !1334
  %678 = bitcast i128* %81 to { i64, i64 }*, !dbg !1334
  %679 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %678, i32 0, i32 0, !dbg !1334
  %680 = extractvalue { i64, i64 } %677, 0, !dbg !1334
  store i64 %680, i64* %679, align 16, !dbg !1334
  %681 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %678, i32 0, i32 1, !dbg !1334
  %682 = extractvalue { i64, i64 } %677, 1, !dbg !1334
  store i64 %682, i64* %681, align 8, !dbg !1334
  %683 = load i128, i128* %81, align 16, !dbg !1334
  store i128 %676, i128* %82, align 16, !dbg !1335
  %684 = bitcast i128* %82 to { i64, i64 }*, !dbg !1335
  %685 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %684, i32 0, i32 0, !dbg !1335
  %686 = load i64, i64* %685, align 16, !dbg !1335
  %687 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %684, i32 0, i32 1, !dbg !1335
  %688 = load i64, i64* %687, align 8, !dbg !1335
  store i128 %683, i128* %83, align 16, !dbg !1335
  %689 = bitcast i128* %83 to { i64, i64 }*, !dbg !1335
  %690 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %689, i32 0, i32 0, !dbg !1335
  %691 = load i64, i64* %690, align 16, !dbg !1335
  %692 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %689, i32 0, i32 1, !dbg !1335
  %693 = load i64, i64* %692, align 8, !dbg !1335
  %694 = call { i64, i64 } @FStar_UInt128_add(i64 %686, i64 %688, i64 %691, i64 %693), !dbg !1335
  %695 = bitcast i128* %84 to { i64, i64 }*, !dbg !1335
  %696 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %695, i32 0, i32 0, !dbg !1335
  %697 = extractvalue { i64, i64 } %694, 0, !dbg !1335
  store i64 %697, i64* %696, align 16, !dbg !1335
  %698 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %695, i32 0, i32 1, !dbg !1335
  %699 = extractvalue { i64, i64 } %694, 1, !dbg !1335
  store i64 %699, i64* %698, align 8, !dbg !1335
  %700 = load i128, i128* %84, align 16, !dbg !1335
  call void @llvm.dbg.value(metadata i128 %700, metadata !1336, metadata !DIExpression()), !dbg !1231
  %701 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %475, i64 %193), !dbg !1337
  %702 = bitcast i128* %85 to { i64, i64 }*, !dbg !1337
  %703 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %702, i32 0, i32 0, !dbg !1337
  %704 = extractvalue { i64, i64 } %701, 0, !dbg !1337
  store i64 %704, i64* %703, align 16, !dbg !1337
  %705 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %702, i32 0, i32 1, !dbg !1337
  %706 = extractvalue { i64, i64 } %701, 1, !dbg !1337
  store i64 %706, i64* %705, align 8, !dbg !1337
  %707 = load i128, i128* %85, align 16, !dbg !1337
  %708 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %476, i64 %191), !dbg !1338
  %709 = bitcast i128* %86 to { i64, i64 }*, !dbg !1338
  %710 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %709, i32 0, i32 0, !dbg !1338
  %711 = extractvalue { i64, i64 } %708, 0, !dbg !1338
  store i64 %711, i64* %710, align 16, !dbg !1338
  %712 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %709, i32 0, i32 1, !dbg !1338
  %713 = extractvalue { i64, i64 } %708, 1, !dbg !1338
  store i64 %713, i64* %712, align 8, !dbg !1338
  %714 = load i128, i128* %86, align 16, !dbg !1338
  store i128 %707, i128* %87, align 16, !dbg !1339
  %715 = bitcast i128* %87 to { i64, i64 }*, !dbg !1339
  %716 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %715, i32 0, i32 0, !dbg !1339
  %717 = load i64, i64* %716, align 16, !dbg !1339
  %718 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %715, i32 0, i32 1, !dbg !1339
  %719 = load i64, i64* %718, align 8, !dbg !1339
  store i128 %714, i128* %88, align 16, !dbg !1339
  %720 = bitcast i128* %88 to { i64, i64 }*, !dbg !1339
  %721 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %720, i32 0, i32 0, !dbg !1339
  %722 = load i64, i64* %721, align 16, !dbg !1339
  %723 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %720, i32 0, i32 1, !dbg !1339
  %724 = load i64, i64* %723, align 8, !dbg !1339
  %725 = call { i64, i64 } @FStar_UInt128_add(i64 %717, i64 %719, i64 %722, i64 %724), !dbg !1339
  %726 = bitcast i128* %89 to { i64, i64 }*, !dbg !1339
  %727 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %726, i32 0, i32 0, !dbg !1339
  %728 = extractvalue { i64, i64 } %725, 0, !dbg !1339
  store i64 %728, i64* %727, align 16, !dbg !1339
  %729 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %726, i32 0, i32 1, !dbg !1339
  %730 = extractvalue { i64, i64 } %725, 1, !dbg !1339
  store i64 %730, i64* %729, align 8, !dbg !1339
  %731 = load i128, i128* %89, align 16, !dbg !1339
  %732 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %189, i64 %189), !dbg !1340
  %733 = bitcast i128* %90 to { i64, i64 }*, !dbg !1340
  %734 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %733, i32 0, i32 0, !dbg !1340
  %735 = extractvalue { i64, i64 } %732, 0, !dbg !1340
  store i64 %735, i64* %734, align 16, !dbg !1340
  %736 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %733, i32 0, i32 1, !dbg !1340
  %737 = extractvalue { i64, i64 } %732, 1, !dbg !1340
  store i64 %737, i64* %736, align 8, !dbg !1340
  %738 = load i128, i128* %90, align 16, !dbg !1340
  store i128 %731, i128* %91, align 16, !dbg !1341
  %739 = bitcast i128* %91 to { i64, i64 }*, !dbg !1341
  %740 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %739, i32 0, i32 0, !dbg !1341
  %741 = load i64, i64* %740, align 16, !dbg !1341
  %742 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %739, i32 0, i32 1, !dbg !1341
  %743 = load i64, i64* %742, align 8, !dbg !1341
  store i128 %738, i128* %92, align 16, !dbg !1341
  %744 = bitcast i128* %92 to { i64, i64 }*, !dbg !1341
  %745 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %744, i32 0, i32 0, !dbg !1341
  %746 = load i64, i64* %745, align 16, !dbg !1341
  %747 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %744, i32 0, i32 1, !dbg !1341
  %748 = load i64, i64* %747, align 8, !dbg !1341
  %749 = call { i64, i64 } @FStar_UInt128_add(i64 %741, i64 %743, i64 %746, i64 %748), !dbg !1341
  %750 = bitcast i128* %93 to { i64, i64 }*, !dbg !1341
  %751 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %750, i32 0, i32 0, !dbg !1341
  %752 = extractvalue { i64, i64 } %749, 0, !dbg !1341
  store i64 %752, i64* %751, align 16, !dbg !1341
  %753 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %750, i32 0, i32 1, !dbg !1341
  %754 = extractvalue { i64, i64 } %749, 1, !dbg !1341
  store i64 %754, i64* %753, align 8, !dbg !1341
  %755 = load i128, i128* %93, align 16, !dbg !1341
  call void @llvm.dbg.value(metadata i128 %755, metadata !1342, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %535, metadata !1343, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %590, metadata !1344, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %645, metadata !1345, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %700, metadata !1346, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i128 %755, metadata !1347, metadata !DIExpression()), !dbg !1231
  %756 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !1348
  %757 = bitcast i128* %94 to { i64, i64 }*, !dbg !1348
  %758 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %757, i32 0, i32 0, !dbg !1348
  %759 = extractvalue { i64, i64 } %756, 0, !dbg !1348
  store i64 %759, i64* %758, align 16, !dbg !1348
  %760 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %757, i32 0, i32 1, !dbg !1348
  %761 = extractvalue { i64, i64 } %756, 1, !dbg !1348
  store i64 %761, i64* %760, align 8, !dbg !1348
  %762 = load i128, i128* %94, align 16, !dbg !1348
  store i128 %254, i128* %95, align 16, !dbg !1349
  %763 = bitcast i128* %95 to { i64, i64 }*, !dbg !1349
  %764 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %763, i32 0, i32 0, !dbg !1349
  %765 = load i64, i64* %764, align 16, !dbg !1349
  %766 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %763, i32 0, i32 1, !dbg !1349
  %767 = load i64, i64* %766, align 8, !dbg !1349
  store i128 %762, i128* %96, align 16, !dbg !1349
  %768 = bitcast i128* %96 to { i64, i64 }*, !dbg !1349
  %769 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %768, i32 0, i32 0, !dbg !1349
  %770 = load i64, i64* %769, align 16, !dbg !1349
  %771 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %768, i32 0, i32 1, !dbg !1349
  %772 = load i64, i64* %771, align 8, !dbg !1349
  %773 = call { i64, i64 } @FStar_UInt128_add(i64 %765, i64 %767, i64 %770, i64 %772), !dbg !1349
  %774 = bitcast i128* %97 to { i64, i64 }*, !dbg !1349
  %775 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %774, i32 0, i32 0, !dbg !1349
  %776 = extractvalue { i64, i64 } %773, 0, !dbg !1349
  store i64 %776, i64* %775, align 16, !dbg !1349
  %777 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %774, i32 0, i32 1, !dbg !1349
  %778 = extractvalue { i64, i64 } %773, 1, !dbg !1349
  store i64 %778, i64* %777, align 8, !dbg !1349
  %779 = load i128, i128* %97, align 16, !dbg !1349
  call void @llvm.dbg.value(metadata i128 %779, metadata !1350, metadata !DIExpression()), !dbg !1231
  store i128 %779, i128* %98, align 16, !dbg !1351
  %780 = bitcast i128* %98 to { i64, i64 }*, !dbg !1351
  %781 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %780, i32 0, i32 0, !dbg !1351
  %782 = load i64, i64* %781, align 16, !dbg !1351
  %783 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %780, i32 0, i32 1, !dbg !1351
  %784 = load i64, i64* %783, align 8, !dbg !1351
  %785 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %782, i64 %784), !dbg !1351
  %786 = and i64 %785, 2251799813685247, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %786, metadata !1353, metadata !DIExpression()), !dbg !1231
  store i128 %779, i128* %99, align 16, !dbg !1354
  %787 = bitcast i128* %99 to { i64, i64 }*, !dbg !1354
  %788 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %787, i32 0, i32 0, !dbg !1354
  %789 = load i64, i64* %788, align 16, !dbg !1354
  %790 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %787, i32 0, i32 1, !dbg !1354
  %791 = load i64, i64* %790, align 8, !dbg !1354
  %792 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %789, i64 %791, i32 51), !dbg !1354
  %793 = bitcast i128* %100 to { i64, i64 }*, !dbg !1354
  %794 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %793, i32 0, i32 0, !dbg !1354
  %795 = extractvalue { i64, i64 } %792, 0, !dbg !1354
  store i64 %795, i64* %794, align 16, !dbg !1354
  %796 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %793, i32 0, i32 1, !dbg !1354
  %797 = extractvalue { i64, i64 } %792, 1, !dbg !1354
  store i64 %797, i64* %796, align 8, !dbg !1354
  %798 = load i128, i128* %100, align 16, !dbg !1354
  store i128 %798, i128* %101, align 16, !dbg !1355
  %799 = bitcast i128* %101 to { i64, i64 }*, !dbg !1355
  %800 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %799, i32 0, i32 0, !dbg !1355
  %801 = load i64, i64* %800, align 16, !dbg !1355
  %802 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %799, i32 0, i32 1, !dbg !1355
  %803 = load i64, i64* %802, align 8, !dbg !1355
  %804 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %801, i64 %803), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %804, metadata !1356, metadata !DIExpression()), !dbg !1231
  %805 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %804), !dbg !1357
  %806 = bitcast i128* %102 to { i64, i64 }*, !dbg !1357
  %807 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %806, i32 0, i32 0, !dbg !1357
  %808 = extractvalue { i64, i64 } %805, 0, !dbg !1357
  store i64 %808, i64* %807, align 16, !dbg !1357
  %809 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %806, i32 0, i32 1, !dbg !1357
  %810 = extractvalue { i64, i64 } %805, 1, !dbg !1357
  store i64 %810, i64* %809, align 8, !dbg !1357
  %811 = load i128, i128* %102, align 16, !dbg !1357
  store i128 %309, i128* %103, align 16, !dbg !1358
  %812 = bitcast i128* %103 to { i64, i64 }*, !dbg !1358
  %813 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %812, i32 0, i32 0, !dbg !1358
  %814 = load i64, i64* %813, align 16, !dbg !1358
  %815 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %812, i32 0, i32 1, !dbg !1358
  %816 = load i64, i64* %815, align 8, !dbg !1358
  store i128 %811, i128* %104, align 16, !dbg !1358
  %817 = bitcast i128* %104 to { i64, i64 }*, !dbg !1358
  %818 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %817, i32 0, i32 0, !dbg !1358
  %819 = load i64, i64* %818, align 16, !dbg !1358
  %820 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %817, i32 0, i32 1, !dbg !1358
  %821 = load i64, i64* %820, align 8, !dbg !1358
  %822 = call { i64, i64 } @FStar_UInt128_add(i64 %814, i64 %816, i64 %819, i64 %821), !dbg !1358
  %823 = bitcast i128* %105 to { i64, i64 }*, !dbg !1358
  %824 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %823, i32 0, i32 0, !dbg !1358
  %825 = extractvalue { i64, i64 } %822, 0, !dbg !1358
  store i64 %825, i64* %824, align 16, !dbg !1358
  %826 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %823, i32 0, i32 1, !dbg !1358
  %827 = extractvalue { i64, i64 } %822, 1, !dbg !1358
  store i64 %827, i64* %826, align 8, !dbg !1358
  %828 = load i128, i128* %105, align 16, !dbg !1358
  call void @llvm.dbg.value(metadata i128 %828, metadata !1359, metadata !DIExpression()), !dbg !1231
  store i128 %828, i128* %106, align 16, !dbg !1360
  %829 = bitcast i128* %106 to { i64, i64 }*, !dbg !1360
  %830 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %829, i32 0, i32 0, !dbg !1360
  %831 = load i64, i64* %830, align 16, !dbg !1360
  %832 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %829, i32 0, i32 1, !dbg !1360
  %833 = load i64, i64* %832, align 8, !dbg !1360
  %834 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %831, i64 %833), !dbg !1360
  %835 = and i64 %834, 2251799813685247, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %835, metadata !1362, metadata !DIExpression()), !dbg !1231
  store i128 %828, i128* %107, align 16, !dbg !1363
  %836 = bitcast i128* %107 to { i64, i64 }*, !dbg !1363
  %837 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %836, i32 0, i32 0, !dbg !1363
  %838 = load i64, i64* %837, align 16, !dbg !1363
  %839 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %836, i32 0, i32 1, !dbg !1363
  %840 = load i64, i64* %839, align 8, !dbg !1363
  %841 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %838, i64 %840, i32 51), !dbg !1363
  %842 = bitcast i128* %108 to { i64, i64 }*, !dbg !1363
  %843 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %842, i32 0, i32 0, !dbg !1363
  %844 = extractvalue { i64, i64 } %841, 0, !dbg !1363
  store i64 %844, i64* %843, align 16, !dbg !1363
  %845 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %842, i32 0, i32 1, !dbg !1363
  %846 = extractvalue { i64, i64 } %841, 1, !dbg !1363
  store i64 %846, i64* %845, align 8, !dbg !1363
  %847 = load i128, i128* %108, align 16, !dbg !1363
  store i128 %847, i128* %109, align 16, !dbg !1364
  %848 = bitcast i128* %109 to { i64, i64 }*, !dbg !1364
  %849 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %848, i32 0, i32 0, !dbg !1364
  %850 = load i64, i64* %849, align 16, !dbg !1364
  %851 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %848, i32 0, i32 1, !dbg !1364
  %852 = load i64, i64* %851, align 8, !dbg !1364
  %853 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %850, i64 %852), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %853, metadata !1365, metadata !DIExpression()), !dbg !1231
  %854 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %853), !dbg !1366
  %855 = bitcast i128* %110 to { i64, i64 }*, !dbg !1366
  %856 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %855, i32 0, i32 0, !dbg !1366
  %857 = extractvalue { i64, i64 } %854, 0, !dbg !1366
  store i64 %857, i64* %856, align 16, !dbg !1366
  %858 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %855, i32 0, i32 1, !dbg !1366
  %859 = extractvalue { i64, i64 } %854, 1, !dbg !1366
  store i64 %859, i64* %858, align 8, !dbg !1366
  %860 = load i128, i128* %110, align 16, !dbg !1366
  store i128 %364, i128* %111, align 16, !dbg !1367
  %861 = bitcast i128* %111 to { i64, i64 }*, !dbg !1367
  %862 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %861, i32 0, i32 0, !dbg !1367
  %863 = load i64, i64* %862, align 16, !dbg !1367
  %864 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %861, i32 0, i32 1, !dbg !1367
  %865 = load i64, i64* %864, align 8, !dbg !1367
  store i128 %860, i128* %112, align 16, !dbg !1367
  %866 = bitcast i128* %112 to { i64, i64 }*, !dbg !1367
  %867 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %866, i32 0, i32 0, !dbg !1367
  %868 = load i64, i64* %867, align 16, !dbg !1367
  %869 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %866, i32 0, i32 1, !dbg !1367
  %870 = load i64, i64* %869, align 8, !dbg !1367
  %871 = call { i64, i64 } @FStar_UInt128_add(i64 %863, i64 %865, i64 %868, i64 %870), !dbg !1367
  %872 = bitcast i128* %113 to { i64, i64 }*, !dbg !1367
  %873 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %872, i32 0, i32 0, !dbg !1367
  %874 = extractvalue { i64, i64 } %871, 0, !dbg !1367
  store i64 %874, i64* %873, align 16, !dbg !1367
  %875 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %872, i32 0, i32 1, !dbg !1367
  %876 = extractvalue { i64, i64 } %871, 1, !dbg !1367
  store i64 %876, i64* %875, align 8, !dbg !1367
  %877 = load i128, i128* %113, align 16, !dbg !1367
  call void @llvm.dbg.value(metadata i128 %877, metadata !1368, metadata !DIExpression()), !dbg !1231
  store i128 %877, i128* %114, align 16, !dbg !1369
  %878 = bitcast i128* %114 to { i64, i64 }*, !dbg !1369
  %879 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %878, i32 0, i32 0, !dbg !1369
  %880 = load i64, i64* %879, align 16, !dbg !1369
  %881 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %878, i32 0, i32 1, !dbg !1369
  %882 = load i64, i64* %881, align 8, !dbg !1369
  %883 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %880, i64 %882), !dbg !1369
  %884 = and i64 %883, 2251799813685247, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %884, metadata !1371, metadata !DIExpression()), !dbg !1231
  store i128 %877, i128* %115, align 16, !dbg !1372
  %885 = bitcast i128* %115 to { i64, i64 }*, !dbg !1372
  %886 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %885, i32 0, i32 0, !dbg !1372
  %887 = load i64, i64* %886, align 16, !dbg !1372
  %888 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %885, i32 0, i32 1, !dbg !1372
  %889 = load i64, i64* %888, align 8, !dbg !1372
  %890 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %887, i64 %889, i32 51), !dbg !1372
  %891 = bitcast i128* %116 to { i64, i64 }*, !dbg !1372
  %892 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %891, i32 0, i32 0, !dbg !1372
  %893 = extractvalue { i64, i64 } %890, 0, !dbg !1372
  store i64 %893, i64* %892, align 16, !dbg !1372
  %894 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %891, i32 0, i32 1, !dbg !1372
  %895 = extractvalue { i64, i64 } %890, 1, !dbg !1372
  store i64 %895, i64* %894, align 8, !dbg !1372
  %896 = load i128, i128* %116, align 16, !dbg !1372
  store i128 %896, i128* %117, align 16, !dbg !1373
  %897 = bitcast i128* %117 to { i64, i64 }*, !dbg !1373
  %898 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %897, i32 0, i32 0, !dbg !1373
  %899 = load i64, i64* %898, align 16, !dbg !1373
  %900 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %897, i32 0, i32 1, !dbg !1373
  %901 = load i64, i64* %900, align 8, !dbg !1373
  %902 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %899, i64 %901), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %902, metadata !1374, metadata !DIExpression()), !dbg !1231
  %903 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %902), !dbg !1375
  %904 = bitcast i128* %118 to { i64, i64 }*, !dbg !1375
  %905 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %904, i32 0, i32 0, !dbg !1375
  %906 = extractvalue { i64, i64 } %903, 0, !dbg !1375
  store i64 %906, i64* %905, align 16, !dbg !1375
  %907 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %904, i32 0, i32 1, !dbg !1375
  %908 = extractvalue { i64, i64 } %903, 1, !dbg !1375
  store i64 %908, i64* %907, align 8, !dbg !1375
  %909 = load i128, i128* %118, align 16, !dbg !1375
  store i128 %419, i128* %119, align 16, !dbg !1376
  %910 = bitcast i128* %119 to { i64, i64 }*, !dbg !1376
  %911 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %910, i32 0, i32 0, !dbg !1376
  %912 = load i64, i64* %911, align 16, !dbg !1376
  %913 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %910, i32 0, i32 1, !dbg !1376
  %914 = load i64, i64* %913, align 8, !dbg !1376
  store i128 %909, i128* %120, align 16, !dbg !1376
  %915 = bitcast i128* %120 to { i64, i64 }*, !dbg !1376
  %916 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %915, i32 0, i32 0, !dbg !1376
  %917 = load i64, i64* %916, align 16, !dbg !1376
  %918 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %915, i32 0, i32 1, !dbg !1376
  %919 = load i64, i64* %918, align 8, !dbg !1376
  %920 = call { i64, i64 } @FStar_UInt128_add(i64 %912, i64 %914, i64 %917, i64 %919), !dbg !1376
  %921 = bitcast i128* %121 to { i64, i64 }*, !dbg !1376
  %922 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %921, i32 0, i32 0, !dbg !1376
  %923 = extractvalue { i64, i64 } %920, 0, !dbg !1376
  store i64 %923, i64* %922, align 16, !dbg !1376
  %924 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %921, i32 0, i32 1, !dbg !1376
  %925 = extractvalue { i64, i64 } %920, 1, !dbg !1376
  store i64 %925, i64* %924, align 8, !dbg !1376
  %926 = load i128, i128* %121, align 16, !dbg !1376
  call void @llvm.dbg.value(metadata i128 %926, metadata !1377, metadata !DIExpression()), !dbg !1231
  store i128 %926, i128* %122, align 16, !dbg !1378
  %927 = bitcast i128* %122 to { i64, i64 }*, !dbg !1378
  %928 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %927, i32 0, i32 0, !dbg !1378
  %929 = load i64, i64* %928, align 16, !dbg !1378
  %930 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %927, i32 0, i32 1, !dbg !1378
  %931 = load i64, i64* %930, align 8, !dbg !1378
  %932 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %929, i64 %931), !dbg !1378
  %933 = and i64 %932, 2251799813685247, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %933, metadata !1380, metadata !DIExpression()), !dbg !1231
  store i128 %926, i128* %123, align 16, !dbg !1381
  %934 = bitcast i128* %123 to { i64, i64 }*, !dbg !1381
  %935 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %934, i32 0, i32 0, !dbg !1381
  %936 = load i64, i64* %935, align 16, !dbg !1381
  %937 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %934, i32 0, i32 1, !dbg !1381
  %938 = load i64, i64* %937, align 8, !dbg !1381
  %939 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %936, i64 %938, i32 51), !dbg !1381
  %940 = bitcast i128* %124 to { i64, i64 }*, !dbg !1381
  %941 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %940, i32 0, i32 0, !dbg !1381
  %942 = extractvalue { i64, i64 } %939, 0, !dbg !1381
  store i64 %942, i64* %941, align 16, !dbg !1381
  %943 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %940, i32 0, i32 1, !dbg !1381
  %944 = extractvalue { i64, i64 } %939, 1, !dbg !1381
  store i64 %944, i64* %943, align 8, !dbg !1381
  %945 = load i128, i128* %124, align 16, !dbg !1381
  store i128 %945, i128* %125, align 16, !dbg !1382
  %946 = bitcast i128* %125 to { i64, i64 }*, !dbg !1382
  %947 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %946, i32 0, i32 0, !dbg !1382
  %948 = load i64, i64* %947, align 16, !dbg !1382
  %949 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %946, i32 0, i32 1, !dbg !1382
  %950 = load i64, i64* %949, align 8, !dbg !1382
  %951 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %948, i64 %950), !dbg !1382
  call void @llvm.dbg.value(metadata i64 %951, metadata !1383, metadata !DIExpression()), !dbg !1231
  %952 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %951), !dbg !1384
  %953 = bitcast i128* %126 to { i64, i64 }*, !dbg !1384
  %954 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %953, i32 0, i32 0, !dbg !1384
  %955 = extractvalue { i64, i64 } %952, 0, !dbg !1384
  store i64 %955, i64* %954, align 16, !dbg !1384
  %956 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %953, i32 0, i32 1, !dbg !1384
  %957 = extractvalue { i64, i64 } %952, 1, !dbg !1384
  store i64 %957, i64* %956, align 8, !dbg !1384
  %958 = load i128, i128* %126, align 16, !dbg !1384
  store i128 %474, i128* %127, align 16, !dbg !1385
  %959 = bitcast i128* %127 to { i64, i64 }*, !dbg !1385
  %960 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %959, i32 0, i32 0, !dbg !1385
  %961 = load i64, i64* %960, align 16, !dbg !1385
  %962 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %959, i32 0, i32 1, !dbg !1385
  %963 = load i64, i64* %962, align 8, !dbg !1385
  store i128 %958, i128* %128, align 16, !dbg !1385
  %964 = bitcast i128* %128 to { i64, i64 }*, !dbg !1385
  %965 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %964, i32 0, i32 0, !dbg !1385
  %966 = load i64, i64* %965, align 16, !dbg !1385
  %967 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %964, i32 0, i32 1, !dbg !1385
  %968 = load i64, i64* %967, align 8, !dbg !1385
  %969 = call { i64, i64 } @FStar_UInt128_add(i64 %961, i64 %963, i64 %966, i64 %968), !dbg !1385
  %970 = bitcast i128* %129 to { i64, i64 }*, !dbg !1385
  %971 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %970, i32 0, i32 0, !dbg !1385
  %972 = extractvalue { i64, i64 } %969, 0, !dbg !1385
  store i64 %972, i64* %971, align 16, !dbg !1385
  %973 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %970, i32 0, i32 1, !dbg !1385
  %974 = extractvalue { i64, i64 } %969, 1, !dbg !1385
  store i64 %974, i64* %973, align 8, !dbg !1385
  %975 = load i128, i128* %129, align 16, !dbg !1385
  call void @llvm.dbg.value(metadata i128 %975, metadata !1386, metadata !DIExpression()), !dbg !1231
  store i128 %975, i128* %130, align 16, !dbg !1387
  %976 = bitcast i128* %130 to { i64, i64 }*, !dbg !1387
  %977 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %976, i32 0, i32 0, !dbg !1387
  %978 = load i64, i64* %977, align 16, !dbg !1387
  %979 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %976, i32 0, i32 1, !dbg !1387
  %980 = load i64, i64* %979, align 8, !dbg !1387
  %981 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %978, i64 %980), !dbg !1387
  %982 = and i64 %981, 2251799813685247, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %982, metadata !1389, metadata !DIExpression()), !dbg !1231
  store i128 %975, i128* %131, align 16, !dbg !1390
  %983 = bitcast i128* %131 to { i64, i64 }*, !dbg !1390
  %984 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %983, i32 0, i32 0, !dbg !1390
  %985 = load i64, i64* %984, align 16, !dbg !1390
  %986 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %983, i32 0, i32 1, !dbg !1390
  %987 = load i64, i64* %986, align 8, !dbg !1390
  %988 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %985, i64 %987, i32 51), !dbg !1390
  %989 = bitcast i128* %132 to { i64, i64 }*, !dbg !1390
  %990 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %989, i32 0, i32 0, !dbg !1390
  %991 = extractvalue { i64, i64 } %988, 0, !dbg !1390
  store i64 %991, i64* %990, align 16, !dbg !1390
  %992 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %989, i32 0, i32 1, !dbg !1390
  %993 = extractvalue { i64, i64 } %988, 1, !dbg !1390
  store i64 %993, i64* %992, align 8, !dbg !1390
  %994 = load i128, i128* %132, align 16, !dbg !1390
  store i128 %994, i128* %133, align 16, !dbg !1391
  %995 = bitcast i128* %133 to { i64, i64 }*, !dbg !1391
  %996 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %995, i32 0, i32 0, !dbg !1391
  %997 = load i64, i64* %996, align 16, !dbg !1391
  %998 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %995, i32 0, i32 1, !dbg !1391
  %999 = load i64, i64* %998, align 8, !dbg !1391
  %1000 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %997, i64 %999), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %1000, metadata !1392, metadata !DIExpression()), !dbg !1231
  %1001 = mul i64 %1000, 19, !dbg !1393
  %1002 = add i64 %786, %1001, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %1002, metadata !1395, metadata !DIExpression()), !dbg !1231
  %1003 = and i64 %1002, 2251799813685247, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %1003, metadata !1397, metadata !DIExpression()), !dbg !1231
  %1004 = lshr i64 %1002, 51, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %1004, metadata !1399, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1003, metadata !1400, metadata !DIExpression()), !dbg !1231
  %1005 = add i64 %835, %1004, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %1005, metadata !1402, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %884, metadata !1403, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %933, metadata !1404, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %982, metadata !1405, metadata !DIExpression()), !dbg !1231
  %1006 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !1406
  %1007 = bitcast i128* %134 to { i64, i64 }*, !dbg !1406
  %1008 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1007, i32 0, i32 0, !dbg !1406
  %1009 = extractvalue { i64, i64 } %1006, 0, !dbg !1406
  store i64 %1009, i64* %1008, align 16, !dbg !1406
  %1010 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1007, i32 0, i32 1, !dbg !1406
  %1011 = extractvalue { i64, i64 } %1006, 1, !dbg !1406
  store i64 %1011, i64* %1010, align 8, !dbg !1406
  %1012 = load i128, i128* %134, align 16, !dbg !1406
  store i128 %535, i128* %135, align 16, !dbg !1407
  %1013 = bitcast i128* %135 to { i64, i64 }*, !dbg !1407
  %1014 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1013, i32 0, i32 0, !dbg !1407
  %1015 = load i64, i64* %1014, align 16, !dbg !1407
  %1016 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1013, i32 0, i32 1, !dbg !1407
  %1017 = load i64, i64* %1016, align 8, !dbg !1407
  store i128 %1012, i128* %136, align 16, !dbg !1407
  %1018 = bitcast i128* %136 to { i64, i64 }*, !dbg !1407
  %1019 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1018, i32 0, i32 0, !dbg !1407
  %1020 = load i64, i64* %1019, align 16, !dbg !1407
  %1021 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1018, i32 0, i32 1, !dbg !1407
  %1022 = load i64, i64* %1021, align 8, !dbg !1407
  %1023 = call { i64, i64 } @FStar_UInt128_add(i64 %1015, i64 %1017, i64 %1020, i64 %1022), !dbg !1407
  %1024 = bitcast i128* %137 to { i64, i64 }*, !dbg !1407
  %1025 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1024, i32 0, i32 0, !dbg !1407
  %1026 = extractvalue { i64, i64 } %1023, 0, !dbg !1407
  store i64 %1026, i64* %1025, align 16, !dbg !1407
  %1027 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1024, i32 0, i32 1, !dbg !1407
  %1028 = extractvalue { i64, i64 } %1023, 1, !dbg !1407
  store i64 %1028, i64* %1027, align 8, !dbg !1407
  %1029 = load i128, i128* %137, align 16, !dbg !1407
  call void @llvm.dbg.value(metadata i128 %1029, metadata !1408, metadata !DIExpression()), !dbg !1231
  store i128 %1029, i128* %138, align 16, !dbg !1409
  %1030 = bitcast i128* %138 to { i64, i64 }*, !dbg !1409
  %1031 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1030, i32 0, i32 0, !dbg !1409
  %1032 = load i64, i64* %1031, align 16, !dbg !1409
  %1033 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1030, i32 0, i32 1, !dbg !1409
  %1034 = load i64, i64* %1033, align 8, !dbg !1409
  %1035 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1032, i64 %1034), !dbg !1409
  %1036 = and i64 %1035, 2251799813685247, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %1036, metadata !1411, metadata !DIExpression()), !dbg !1231
  store i128 %1029, i128* %139, align 16, !dbg !1412
  %1037 = bitcast i128* %139 to { i64, i64 }*, !dbg !1412
  %1038 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1037, i32 0, i32 0, !dbg !1412
  %1039 = load i64, i64* %1038, align 16, !dbg !1412
  %1040 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1037, i32 0, i32 1, !dbg !1412
  %1041 = load i64, i64* %1040, align 8, !dbg !1412
  %1042 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1039, i64 %1041, i32 51), !dbg !1412
  %1043 = bitcast i128* %140 to { i64, i64 }*, !dbg !1412
  %1044 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1043, i32 0, i32 0, !dbg !1412
  %1045 = extractvalue { i64, i64 } %1042, 0, !dbg !1412
  store i64 %1045, i64* %1044, align 16, !dbg !1412
  %1046 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1043, i32 0, i32 1, !dbg !1412
  %1047 = extractvalue { i64, i64 } %1042, 1, !dbg !1412
  store i64 %1047, i64* %1046, align 8, !dbg !1412
  %1048 = load i128, i128* %140, align 16, !dbg !1412
  store i128 %1048, i128* %141, align 16, !dbg !1413
  %1049 = bitcast i128* %141 to { i64, i64 }*, !dbg !1413
  %1050 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1049, i32 0, i32 0, !dbg !1413
  %1051 = load i64, i64* %1050, align 16, !dbg !1413
  %1052 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1049, i32 0, i32 1, !dbg !1413
  %1053 = load i64, i64* %1052, align 8, !dbg !1413
  %1054 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1051, i64 %1053), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %1054, metadata !1414, metadata !DIExpression()), !dbg !1231
  %1055 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1054), !dbg !1415
  %1056 = bitcast i128* %142 to { i64, i64 }*, !dbg !1415
  %1057 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1056, i32 0, i32 0, !dbg !1415
  %1058 = extractvalue { i64, i64 } %1055, 0, !dbg !1415
  store i64 %1058, i64* %1057, align 16, !dbg !1415
  %1059 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1056, i32 0, i32 1, !dbg !1415
  %1060 = extractvalue { i64, i64 } %1055, 1, !dbg !1415
  store i64 %1060, i64* %1059, align 8, !dbg !1415
  %1061 = load i128, i128* %142, align 16, !dbg !1415
  store i128 %590, i128* %143, align 16, !dbg !1416
  %1062 = bitcast i128* %143 to { i64, i64 }*, !dbg !1416
  %1063 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1062, i32 0, i32 0, !dbg !1416
  %1064 = load i64, i64* %1063, align 16, !dbg !1416
  %1065 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1062, i32 0, i32 1, !dbg !1416
  %1066 = load i64, i64* %1065, align 8, !dbg !1416
  store i128 %1061, i128* %144, align 16, !dbg !1416
  %1067 = bitcast i128* %144 to { i64, i64 }*, !dbg !1416
  %1068 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1067, i32 0, i32 0, !dbg !1416
  %1069 = load i64, i64* %1068, align 16, !dbg !1416
  %1070 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1067, i32 0, i32 1, !dbg !1416
  %1071 = load i64, i64* %1070, align 8, !dbg !1416
  %1072 = call { i64, i64 } @FStar_UInt128_add(i64 %1064, i64 %1066, i64 %1069, i64 %1071), !dbg !1416
  %1073 = bitcast i128* %145 to { i64, i64 }*, !dbg !1416
  %1074 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1073, i32 0, i32 0, !dbg !1416
  %1075 = extractvalue { i64, i64 } %1072, 0, !dbg !1416
  store i64 %1075, i64* %1074, align 16, !dbg !1416
  %1076 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1073, i32 0, i32 1, !dbg !1416
  %1077 = extractvalue { i64, i64 } %1072, 1, !dbg !1416
  store i64 %1077, i64* %1076, align 8, !dbg !1416
  %1078 = load i128, i128* %145, align 16, !dbg !1416
  call void @llvm.dbg.value(metadata i128 %1078, metadata !1417, metadata !DIExpression()), !dbg !1231
  store i128 %1078, i128* %146, align 16, !dbg !1418
  %1079 = bitcast i128* %146 to { i64, i64 }*, !dbg !1418
  %1080 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1079, i32 0, i32 0, !dbg !1418
  %1081 = load i64, i64* %1080, align 16, !dbg !1418
  %1082 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1079, i32 0, i32 1, !dbg !1418
  %1083 = load i64, i64* %1082, align 8, !dbg !1418
  %1084 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1081, i64 %1083), !dbg !1418
  %1085 = and i64 %1084, 2251799813685247, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %1085, metadata !1420, metadata !DIExpression()), !dbg !1231
  store i128 %1078, i128* %147, align 16, !dbg !1421
  %1086 = bitcast i128* %147 to { i64, i64 }*, !dbg !1421
  %1087 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1086, i32 0, i32 0, !dbg !1421
  %1088 = load i64, i64* %1087, align 16, !dbg !1421
  %1089 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1086, i32 0, i32 1, !dbg !1421
  %1090 = load i64, i64* %1089, align 8, !dbg !1421
  %1091 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1088, i64 %1090, i32 51), !dbg !1421
  %1092 = bitcast i128* %148 to { i64, i64 }*, !dbg !1421
  %1093 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1092, i32 0, i32 0, !dbg !1421
  %1094 = extractvalue { i64, i64 } %1091, 0, !dbg !1421
  store i64 %1094, i64* %1093, align 16, !dbg !1421
  %1095 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1092, i32 0, i32 1, !dbg !1421
  %1096 = extractvalue { i64, i64 } %1091, 1, !dbg !1421
  store i64 %1096, i64* %1095, align 8, !dbg !1421
  %1097 = load i128, i128* %148, align 16, !dbg !1421
  store i128 %1097, i128* %149, align 16, !dbg !1422
  %1098 = bitcast i128* %149 to { i64, i64 }*, !dbg !1422
  %1099 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1098, i32 0, i32 0, !dbg !1422
  %1100 = load i64, i64* %1099, align 16, !dbg !1422
  %1101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1098, i32 0, i32 1, !dbg !1422
  %1102 = load i64, i64* %1101, align 8, !dbg !1422
  %1103 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1100, i64 %1102), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %1103, metadata !1423, metadata !DIExpression()), !dbg !1231
  %1104 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1103), !dbg !1424
  %1105 = bitcast i128* %150 to { i64, i64 }*, !dbg !1424
  %1106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1105, i32 0, i32 0, !dbg !1424
  %1107 = extractvalue { i64, i64 } %1104, 0, !dbg !1424
  store i64 %1107, i64* %1106, align 16, !dbg !1424
  %1108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1105, i32 0, i32 1, !dbg !1424
  %1109 = extractvalue { i64, i64 } %1104, 1, !dbg !1424
  store i64 %1109, i64* %1108, align 8, !dbg !1424
  %1110 = load i128, i128* %150, align 16, !dbg !1424
  store i128 %645, i128* %151, align 16, !dbg !1425
  %1111 = bitcast i128* %151 to { i64, i64 }*, !dbg !1425
  %1112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1111, i32 0, i32 0, !dbg !1425
  %1113 = load i64, i64* %1112, align 16, !dbg !1425
  %1114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1111, i32 0, i32 1, !dbg !1425
  %1115 = load i64, i64* %1114, align 8, !dbg !1425
  store i128 %1110, i128* %152, align 16, !dbg !1425
  %1116 = bitcast i128* %152 to { i64, i64 }*, !dbg !1425
  %1117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1116, i32 0, i32 0, !dbg !1425
  %1118 = load i64, i64* %1117, align 16, !dbg !1425
  %1119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1116, i32 0, i32 1, !dbg !1425
  %1120 = load i64, i64* %1119, align 8, !dbg !1425
  %1121 = call { i64, i64 } @FStar_UInt128_add(i64 %1113, i64 %1115, i64 %1118, i64 %1120), !dbg !1425
  %1122 = bitcast i128* %153 to { i64, i64 }*, !dbg !1425
  %1123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1122, i32 0, i32 0, !dbg !1425
  %1124 = extractvalue { i64, i64 } %1121, 0, !dbg !1425
  store i64 %1124, i64* %1123, align 16, !dbg !1425
  %1125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1122, i32 0, i32 1, !dbg !1425
  %1126 = extractvalue { i64, i64 } %1121, 1, !dbg !1425
  store i64 %1126, i64* %1125, align 8, !dbg !1425
  %1127 = load i128, i128* %153, align 16, !dbg !1425
  call void @llvm.dbg.value(metadata i128 %1127, metadata !1426, metadata !DIExpression()), !dbg !1231
  store i128 %1127, i128* %154, align 16, !dbg !1427
  %1128 = bitcast i128* %154 to { i64, i64 }*, !dbg !1427
  %1129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1128, i32 0, i32 0, !dbg !1427
  %1130 = load i64, i64* %1129, align 16, !dbg !1427
  %1131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1128, i32 0, i32 1, !dbg !1427
  %1132 = load i64, i64* %1131, align 8, !dbg !1427
  %1133 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1130, i64 %1132), !dbg !1427
  %1134 = and i64 %1133, 2251799813685247, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %1134, metadata !1429, metadata !DIExpression()), !dbg !1231
  store i128 %1127, i128* %155, align 16, !dbg !1430
  %1135 = bitcast i128* %155 to { i64, i64 }*, !dbg !1430
  %1136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1135, i32 0, i32 0, !dbg !1430
  %1137 = load i64, i64* %1136, align 16, !dbg !1430
  %1138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1135, i32 0, i32 1, !dbg !1430
  %1139 = load i64, i64* %1138, align 8, !dbg !1430
  %1140 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1137, i64 %1139, i32 51), !dbg !1430
  %1141 = bitcast i128* %156 to { i64, i64 }*, !dbg !1430
  %1142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1141, i32 0, i32 0, !dbg !1430
  %1143 = extractvalue { i64, i64 } %1140, 0, !dbg !1430
  store i64 %1143, i64* %1142, align 16, !dbg !1430
  %1144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1141, i32 0, i32 1, !dbg !1430
  %1145 = extractvalue { i64, i64 } %1140, 1, !dbg !1430
  store i64 %1145, i64* %1144, align 8, !dbg !1430
  %1146 = load i128, i128* %156, align 16, !dbg !1430
  store i128 %1146, i128* %157, align 16, !dbg !1431
  %1147 = bitcast i128* %157 to { i64, i64 }*, !dbg !1431
  %1148 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1147, i32 0, i32 0, !dbg !1431
  %1149 = load i64, i64* %1148, align 16, !dbg !1431
  %1150 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1147, i32 0, i32 1, !dbg !1431
  %1151 = load i64, i64* %1150, align 8, !dbg !1431
  %1152 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1149, i64 %1151), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %1152, metadata !1432, metadata !DIExpression()), !dbg !1231
  %1153 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1152), !dbg !1433
  %1154 = bitcast i128* %158 to { i64, i64 }*, !dbg !1433
  %1155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1154, i32 0, i32 0, !dbg !1433
  %1156 = extractvalue { i64, i64 } %1153, 0, !dbg !1433
  store i64 %1156, i64* %1155, align 16, !dbg !1433
  %1157 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1154, i32 0, i32 1, !dbg !1433
  %1158 = extractvalue { i64, i64 } %1153, 1, !dbg !1433
  store i64 %1158, i64* %1157, align 8, !dbg !1433
  %1159 = load i128, i128* %158, align 16, !dbg !1433
  store i128 %700, i128* %159, align 16, !dbg !1434
  %1160 = bitcast i128* %159 to { i64, i64 }*, !dbg !1434
  %1161 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1160, i32 0, i32 0, !dbg !1434
  %1162 = load i64, i64* %1161, align 16, !dbg !1434
  %1163 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1160, i32 0, i32 1, !dbg !1434
  %1164 = load i64, i64* %1163, align 8, !dbg !1434
  store i128 %1159, i128* %160, align 16, !dbg !1434
  %1165 = bitcast i128* %160 to { i64, i64 }*, !dbg !1434
  %1166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1165, i32 0, i32 0, !dbg !1434
  %1167 = load i64, i64* %1166, align 16, !dbg !1434
  %1168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1165, i32 0, i32 1, !dbg !1434
  %1169 = load i64, i64* %1168, align 8, !dbg !1434
  %1170 = call { i64, i64 } @FStar_UInt128_add(i64 %1162, i64 %1164, i64 %1167, i64 %1169), !dbg !1434
  %1171 = bitcast i128* %161 to { i64, i64 }*, !dbg !1434
  %1172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1171, i32 0, i32 0, !dbg !1434
  %1173 = extractvalue { i64, i64 } %1170, 0, !dbg !1434
  store i64 %1173, i64* %1172, align 16, !dbg !1434
  %1174 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1171, i32 0, i32 1, !dbg !1434
  %1175 = extractvalue { i64, i64 } %1170, 1, !dbg !1434
  store i64 %1175, i64* %1174, align 8, !dbg !1434
  %1176 = load i128, i128* %161, align 16, !dbg !1434
  call void @llvm.dbg.value(metadata i128 %1176, metadata !1435, metadata !DIExpression()), !dbg !1231
  store i128 %1176, i128* %162, align 16, !dbg !1436
  %1177 = bitcast i128* %162 to { i64, i64 }*, !dbg !1436
  %1178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1177, i32 0, i32 0, !dbg !1436
  %1179 = load i64, i64* %1178, align 16, !dbg !1436
  %1180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1177, i32 0, i32 1, !dbg !1436
  %1181 = load i64, i64* %1180, align 8, !dbg !1436
  %1182 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1179, i64 %1181), !dbg !1436
  %1183 = and i64 %1182, 2251799813685247, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %1183, metadata !1438, metadata !DIExpression()), !dbg !1231
  store i128 %1176, i128* %163, align 16, !dbg !1439
  %1184 = bitcast i128* %163 to { i64, i64 }*, !dbg !1439
  %1185 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1184, i32 0, i32 0, !dbg !1439
  %1186 = load i64, i64* %1185, align 16, !dbg !1439
  %1187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1184, i32 0, i32 1, !dbg !1439
  %1188 = load i64, i64* %1187, align 8, !dbg !1439
  %1189 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1186, i64 %1188, i32 51), !dbg !1439
  %1190 = bitcast i128* %164 to { i64, i64 }*, !dbg !1439
  %1191 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1190, i32 0, i32 0, !dbg !1439
  %1192 = extractvalue { i64, i64 } %1189, 0, !dbg !1439
  store i64 %1192, i64* %1191, align 16, !dbg !1439
  %1193 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1190, i32 0, i32 1, !dbg !1439
  %1194 = extractvalue { i64, i64 } %1189, 1, !dbg !1439
  store i64 %1194, i64* %1193, align 8, !dbg !1439
  %1195 = load i128, i128* %164, align 16, !dbg !1439
  store i128 %1195, i128* %165, align 16, !dbg !1440
  %1196 = bitcast i128* %165 to { i64, i64 }*, !dbg !1440
  %1197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1196, i32 0, i32 0, !dbg !1440
  %1198 = load i64, i64* %1197, align 16, !dbg !1440
  %1199 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1196, i32 0, i32 1, !dbg !1440
  %1200 = load i64, i64* %1199, align 8, !dbg !1440
  %1201 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1198, i64 %1200), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %1201, metadata !1441, metadata !DIExpression()), !dbg !1231
  %1202 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1201), !dbg !1442
  %1203 = bitcast i128* %166 to { i64, i64 }*, !dbg !1442
  %1204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1203, i32 0, i32 0, !dbg !1442
  %1205 = extractvalue { i64, i64 } %1202, 0, !dbg !1442
  store i64 %1205, i64* %1204, align 16, !dbg !1442
  %1206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1203, i32 0, i32 1, !dbg !1442
  %1207 = extractvalue { i64, i64 } %1202, 1, !dbg !1442
  store i64 %1207, i64* %1206, align 8, !dbg !1442
  %1208 = load i128, i128* %166, align 16, !dbg !1442
  store i128 %755, i128* %167, align 16, !dbg !1443
  %1209 = bitcast i128* %167 to { i64, i64 }*, !dbg !1443
  %1210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1209, i32 0, i32 0, !dbg !1443
  %1211 = load i64, i64* %1210, align 16, !dbg !1443
  %1212 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1209, i32 0, i32 1, !dbg !1443
  %1213 = load i64, i64* %1212, align 8, !dbg !1443
  store i128 %1208, i128* %168, align 16, !dbg !1443
  %1214 = bitcast i128* %168 to { i64, i64 }*, !dbg !1443
  %1215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1214, i32 0, i32 0, !dbg !1443
  %1216 = load i64, i64* %1215, align 16, !dbg !1443
  %1217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1214, i32 0, i32 1, !dbg !1443
  %1218 = load i64, i64* %1217, align 8, !dbg !1443
  %1219 = call { i64, i64 } @FStar_UInt128_add(i64 %1211, i64 %1213, i64 %1216, i64 %1218), !dbg !1443
  %1220 = bitcast i128* %169 to { i64, i64 }*, !dbg !1443
  %1221 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1220, i32 0, i32 0, !dbg !1443
  %1222 = extractvalue { i64, i64 } %1219, 0, !dbg !1443
  store i64 %1222, i64* %1221, align 16, !dbg !1443
  %1223 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1220, i32 0, i32 1, !dbg !1443
  %1224 = extractvalue { i64, i64 } %1219, 1, !dbg !1443
  store i64 %1224, i64* %1223, align 8, !dbg !1443
  %1225 = load i128, i128* %169, align 16, !dbg !1443
  call void @llvm.dbg.value(metadata i128 %1225, metadata !1444, metadata !DIExpression()), !dbg !1231
  store i128 %1225, i128* %170, align 16, !dbg !1445
  %1226 = bitcast i128* %170 to { i64, i64 }*, !dbg !1445
  %1227 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1226, i32 0, i32 0, !dbg !1445
  %1228 = load i64, i64* %1227, align 16, !dbg !1445
  %1229 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1226, i32 0, i32 1, !dbg !1445
  %1230 = load i64, i64* %1229, align 8, !dbg !1445
  %1231 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1228, i64 %1230), !dbg !1445
  %1232 = and i64 %1231, 2251799813685247, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %1232, metadata !1447, metadata !DIExpression()), !dbg !1231
  store i128 %1225, i128* %171, align 16, !dbg !1448
  %1233 = bitcast i128* %171 to { i64, i64 }*, !dbg !1448
  %1234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1233, i32 0, i32 0, !dbg !1448
  %1235 = load i64, i64* %1234, align 16, !dbg !1448
  %1236 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1233, i32 0, i32 1, !dbg !1448
  %1237 = load i64, i64* %1236, align 8, !dbg !1448
  %1238 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1235, i64 %1237, i32 51), !dbg !1448
  %1239 = bitcast i128* %172 to { i64, i64 }*, !dbg !1448
  %1240 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1239, i32 0, i32 0, !dbg !1448
  %1241 = extractvalue { i64, i64 } %1238, 0, !dbg !1448
  store i64 %1241, i64* %1240, align 16, !dbg !1448
  %1242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1239, i32 0, i32 1, !dbg !1448
  %1243 = extractvalue { i64, i64 } %1238, 1, !dbg !1448
  store i64 %1243, i64* %1242, align 8, !dbg !1448
  %1244 = load i128, i128* %172, align 16, !dbg !1448
  store i128 %1244, i128* %173, align 16, !dbg !1449
  %1245 = bitcast i128* %173 to { i64, i64 }*, !dbg !1449
  %1246 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1245, i32 0, i32 0, !dbg !1449
  %1247 = load i64, i64* %1246, align 16, !dbg !1449
  %1248 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1245, i32 0, i32 1, !dbg !1449
  %1249 = load i64, i64* %1248, align 8, !dbg !1449
  %1250 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1247, i64 %1249), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %1250, metadata !1450, metadata !DIExpression()), !dbg !1231
  %1251 = mul i64 %1250, 19, !dbg !1451
  %1252 = add i64 %1036, %1251, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %1252, metadata !1453, metadata !DIExpression()), !dbg !1231
  %1253 = and i64 %1252, 2251799813685247, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %1253, metadata !1455, metadata !DIExpression()), !dbg !1231
  %1254 = lshr i64 %1252, 51, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %1254, metadata !1457, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1253, metadata !1458, metadata !DIExpression()), !dbg !1231
  %1255 = add i64 %1085, %1254, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %1255, metadata !1460, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1134, metadata !1461, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1183, metadata !1462, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1232, metadata !1463, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1003, metadata !1464, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1005, metadata !1465, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %884, metadata !1466, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %933, metadata !1467, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %982, metadata !1468, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1253, metadata !1469, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1255, metadata !1470, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1134, metadata !1471, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1183, metadata !1472, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %1232, metadata !1473, metadata !DIExpression()), !dbg !1231
  %1256 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1474
  store i64 %1003, i64* %1256, align 8, !dbg !1475
  %1257 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1476
  store i64 %1005, i64* %1257, align 8, !dbg !1477
  %1258 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1478
  store i64 %884, i64* %1258, align 8, !dbg !1479
  %1259 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1480
  store i64 %933, i64* %1259, align 8, !dbg !1481
  %1260 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1482
  store i64 %982, i64* %1260, align 8, !dbg !1483
  %1261 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !1484
  store i64 %1253, i64* %1261, align 8, !dbg !1485
  %1262 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !1486
  store i64 %1255, i64* %1262, align 8, !dbg !1487
  %1263 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !1488
  store i64 %1134, i64* %1263, align 8, !dbg !1489
  %1264 = getelementptr inbounds i64, i64* %0, i64 8, !dbg !1490
  store i64 %1183, i64* %1264, align 8, !dbg !1491
  %1265 = getelementptr inbounds i64, i64* %0, i64 9, !dbg !1492
  store i64 %1232, i64* %1265, align 8, !dbg !1493
  ret void, !dbg !1494
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fmul1(i64* %0, i64* %1, i64 %2) #0 !dbg !1495 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = alloca i128, align 16
  %21 = alloca i128, align 16
  %22 = alloca i128, align 16
  %23 = alloca i128, align 16
  %24 = alloca i128, align 16
  %25 = alloca i128, align 16
  %26 = alloca i128, align 16
  %27 = alloca i128, align 16
  %28 = alloca i128, align 16
  %29 = alloca i128, align 16
  %30 = alloca i128, align 16
  %31 = alloca i128, align 16
  %32 = alloca i128, align 16
  %33 = alloca i128, align 16
  %34 = alloca i128, align 16
  %35 = alloca i128, align 16
  %36 = alloca i128, align 16
  %37 = alloca i128, align 16
  %38 = alloca i128, align 16
  %39 = alloca i128, align 16
  %40 = alloca i128, align 16
  %41 = alloca i128, align 16
  %42 = alloca i128, align 16
  %43 = alloca i128, align 16
  %44 = alloca i128, align 16
  %45 = alloca i128, align 16
  %46 = alloca i128, align 16
  %47 = alloca i128, align 16
  %48 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64* %1, metadata !1500, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %2, metadata !1501, metadata !DIExpression()), !dbg !1499
  %49 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1502
  %50 = load i64, i64* %49, align 8, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %50, metadata !1503, metadata !DIExpression()), !dbg !1499
  %51 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1504
  %52 = load i64, i64* %51, align 8, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %52, metadata !1505, metadata !DIExpression()), !dbg !1499
  %53 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1506
  %54 = load i64, i64* %53, align 8, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %54, metadata !1507, metadata !DIExpression()), !dbg !1499
  %55 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1508
  %56 = load i64, i64* %55, align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %56, metadata !1509, metadata !DIExpression()), !dbg !1499
  %57 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1510
  %58 = load i64, i64* %57, align 8, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %58, metadata !1511, metadata !DIExpression()), !dbg !1499
  %59 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %2, i64 %50), !dbg !1512
  %60 = bitcast i128* %4 to { i64, i64 }*, !dbg !1512
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0, !dbg !1512
  %62 = extractvalue { i64, i64 } %59, 0, !dbg !1512
  store i64 %62, i64* %61, align 16, !dbg !1512
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1, !dbg !1512
  %64 = extractvalue { i64, i64 } %59, 1, !dbg !1512
  store i64 %64, i64* %63, align 8, !dbg !1512
  %65 = load i128, i128* %4, align 16, !dbg !1512
  call void @llvm.dbg.value(metadata i128 %65, metadata !1513, metadata !DIExpression()), !dbg !1499
  %66 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %2, i64 %52), !dbg !1514
  %67 = bitcast i128* %5 to { i64, i64 }*, !dbg !1514
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0, !dbg !1514
  %69 = extractvalue { i64, i64 } %66, 0, !dbg !1514
  store i64 %69, i64* %68, align 16, !dbg !1514
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1, !dbg !1514
  %71 = extractvalue { i64, i64 } %66, 1, !dbg !1514
  store i64 %71, i64* %70, align 8, !dbg !1514
  %72 = load i128, i128* %5, align 16, !dbg !1514
  call void @llvm.dbg.value(metadata i128 %72, metadata !1515, metadata !DIExpression()), !dbg !1499
  %73 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %2, i64 %54), !dbg !1516
  %74 = bitcast i128* %6 to { i64, i64 }*, !dbg !1516
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0, !dbg !1516
  %76 = extractvalue { i64, i64 } %73, 0, !dbg !1516
  store i64 %76, i64* %75, align 16, !dbg !1516
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1, !dbg !1516
  %78 = extractvalue { i64, i64 } %73, 1, !dbg !1516
  store i64 %78, i64* %77, align 8, !dbg !1516
  %79 = load i128, i128* %6, align 16, !dbg !1516
  call void @llvm.dbg.value(metadata i128 %79, metadata !1517, metadata !DIExpression()), !dbg !1499
  %80 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %2, i64 %56), !dbg !1518
  %81 = bitcast i128* %7 to { i64, i64 }*, !dbg !1518
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 0, !dbg !1518
  %83 = extractvalue { i64, i64 } %80, 0, !dbg !1518
  store i64 %83, i64* %82, align 16, !dbg !1518
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 1, !dbg !1518
  %85 = extractvalue { i64, i64 } %80, 1, !dbg !1518
  store i64 %85, i64* %84, align 8, !dbg !1518
  %86 = load i128, i128* %7, align 16, !dbg !1518
  call void @llvm.dbg.value(metadata i128 %86, metadata !1519, metadata !DIExpression()), !dbg !1499
  %87 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %2, i64 %58), !dbg !1520
  %88 = bitcast i128* %8 to { i64, i64 }*, !dbg !1520
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0, !dbg !1520
  %90 = extractvalue { i64, i64 } %87, 0, !dbg !1520
  store i64 %90, i64* %89, align 16, !dbg !1520
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1, !dbg !1520
  %92 = extractvalue { i64, i64 } %87, 1, !dbg !1520
  store i64 %92, i64* %91, align 8, !dbg !1520
  %93 = load i128, i128* %8, align 16, !dbg !1520
  call void @llvm.dbg.value(metadata i128 %93, metadata !1521, metadata !DIExpression()), !dbg !1499
  %94 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !1522
  %95 = bitcast i128* %9 to { i64, i64 }*, !dbg !1522
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 0, !dbg !1522
  %97 = extractvalue { i64, i64 } %94, 0, !dbg !1522
  store i64 %97, i64* %96, align 16, !dbg !1522
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 1, !dbg !1522
  %99 = extractvalue { i64, i64 } %94, 1, !dbg !1522
  store i64 %99, i64* %98, align 8, !dbg !1522
  %100 = load i128, i128* %9, align 16, !dbg !1522
  store i128 %65, i128* %10, align 16, !dbg !1523
  %101 = bitcast i128* %10 to { i64, i64 }*, !dbg !1523
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 0, !dbg !1523
  %103 = load i64, i64* %102, align 16, !dbg !1523
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 1, !dbg !1523
  %105 = load i64, i64* %104, align 8, !dbg !1523
  store i128 %100, i128* %11, align 16, !dbg !1523
  %106 = bitcast i128* %11 to { i64, i64 }*, !dbg !1523
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0, !dbg !1523
  %108 = load i64, i64* %107, align 16, !dbg !1523
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1, !dbg !1523
  %110 = load i64, i64* %109, align 8, !dbg !1523
  %111 = call { i64, i64 } @FStar_UInt128_add(i64 %103, i64 %105, i64 %108, i64 %110), !dbg !1523
  %112 = bitcast i128* %12 to { i64, i64 }*, !dbg !1523
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 0, !dbg !1523
  %114 = extractvalue { i64, i64 } %111, 0, !dbg !1523
  store i64 %114, i64* %113, align 16, !dbg !1523
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 1, !dbg !1523
  %116 = extractvalue { i64, i64 } %111, 1, !dbg !1523
  store i64 %116, i64* %115, align 8, !dbg !1523
  %117 = load i128, i128* %12, align 16, !dbg !1523
  call void @llvm.dbg.value(metadata i128 %117, metadata !1524, metadata !DIExpression()), !dbg !1499
  store i128 %117, i128* %13, align 16, !dbg !1525
  %118 = bitcast i128* %13 to { i64, i64 }*, !dbg !1525
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0, !dbg !1525
  %120 = load i64, i64* %119, align 16, !dbg !1525
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1, !dbg !1525
  %122 = load i64, i64* %121, align 8, !dbg !1525
  %123 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %120, i64 %122), !dbg !1525
  %124 = and i64 %123, 2251799813685247, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %124, metadata !1527, metadata !DIExpression()), !dbg !1499
  store i128 %117, i128* %14, align 16, !dbg !1528
  %125 = bitcast i128* %14 to { i64, i64 }*, !dbg !1528
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0, !dbg !1528
  %127 = load i64, i64* %126, align 16, !dbg !1528
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1, !dbg !1528
  %129 = load i64, i64* %128, align 8, !dbg !1528
  %130 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %127, i64 %129, i32 51), !dbg !1528
  %131 = bitcast i128* %15 to { i64, i64 }*, !dbg !1528
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 0, !dbg !1528
  %133 = extractvalue { i64, i64 } %130, 0, !dbg !1528
  store i64 %133, i64* %132, align 16, !dbg !1528
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 1, !dbg !1528
  %135 = extractvalue { i64, i64 } %130, 1, !dbg !1528
  store i64 %135, i64* %134, align 8, !dbg !1528
  %136 = load i128, i128* %15, align 16, !dbg !1528
  store i128 %136, i128* %16, align 16, !dbg !1529
  %137 = bitcast i128* %16 to { i64, i64 }*, !dbg !1529
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0, !dbg !1529
  %139 = load i64, i64* %138, align 16, !dbg !1529
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1, !dbg !1529
  %141 = load i64, i64* %140, align 8, !dbg !1529
  %142 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %139, i64 %141), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %142, metadata !1530, metadata !DIExpression()), !dbg !1499
  %143 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %142), !dbg !1531
  %144 = bitcast i128* %17 to { i64, i64 }*, !dbg !1531
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 0, !dbg !1531
  %146 = extractvalue { i64, i64 } %143, 0, !dbg !1531
  store i64 %146, i64* %145, align 16, !dbg !1531
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 1, !dbg !1531
  %148 = extractvalue { i64, i64 } %143, 1, !dbg !1531
  store i64 %148, i64* %147, align 8, !dbg !1531
  %149 = load i128, i128* %17, align 16, !dbg !1531
  store i128 %72, i128* %18, align 16, !dbg !1532
  %150 = bitcast i128* %18 to { i64, i64 }*, !dbg !1532
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 0, !dbg !1532
  %152 = load i64, i64* %151, align 16, !dbg !1532
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 1, !dbg !1532
  %154 = load i64, i64* %153, align 8, !dbg !1532
  store i128 %149, i128* %19, align 16, !dbg !1532
  %155 = bitcast i128* %19 to { i64, i64 }*, !dbg !1532
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 0, !dbg !1532
  %157 = load i64, i64* %156, align 16, !dbg !1532
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 1, !dbg !1532
  %159 = load i64, i64* %158, align 8, !dbg !1532
  %160 = call { i64, i64 } @FStar_UInt128_add(i64 %152, i64 %154, i64 %157, i64 %159), !dbg !1532
  %161 = bitcast i128* %20 to { i64, i64 }*, !dbg !1532
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 0, !dbg !1532
  %163 = extractvalue { i64, i64 } %160, 0, !dbg !1532
  store i64 %163, i64* %162, align 16, !dbg !1532
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %161, i32 0, i32 1, !dbg !1532
  %165 = extractvalue { i64, i64 } %160, 1, !dbg !1532
  store i64 %165, i64* %164, align 8, !dbg !1532
  %166 = load i128, i128* %20, align 16, !dbg !1532
  call void @llvm.dbg.value(metadata i128 %166, metadata !1533, metadata !DIExpression()), !dbg !1499
  store i128 %166, i128* %21, align 16, !dbg !1534
  %167 = bitcast i128* %21 to { i64, i64 }*, !dbg !1534
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 0, !dbg !1534
  %169 = load i64, i64* %168, align 16, !dbg !1534
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 1, !dbg !1534
  %171 = load i64, i64* %170, align 8, !dbg !1534
  %172 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %169, i64 %171), !dbg !1534
  %173 = and i64 %172, 2251799813685247, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %173, metadata !1536, metadata !DIExpression()), !dbg !1499
  store i128 %166, i128* %22, align 16, !dbg !1537
  %174 = bitcast i128* %22 to { i64, i64 }*, !dbg !1537
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 0, !dbg !1537
  %176 = load i64, i64* %175, align 16, !dbg !1537
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 1, !dbg !1537
  %178 = load i64, i64* %177, align 8, !dbg !1537
  %179 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %176, i64 %178, i32 51), !dbg !1537
  %180 = bitcast i128* %23 to { i64, i64 }*, !dbg !1537
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 0, !dbg !1537
  %182 = extractvalue { i64, i64 } %179, 0, !dbg !1537
  store i64 %182, i64* %181, align 16, !dbg !1537
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 1, !dbg !1537
  %184 = extractvalue { i64, i64 } %179, 1, !dbg !1537
  store i64 %184, i64* %183, align 8, !dbg !1537
  %185 = load i128, i128* %23, align 16, !dbg !1537
  store i128 %185, i128* %24, align 16, !dbg !1538
  %186 = bitcast i128* %24 to { i64, i64 }*, !dbg !1538
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 0, !dbg !1538
  %188 = load i64, i64* %187, align 16, !dbg !1538
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 1, !dbg !1538
  %190 = load i64, i64* %189, align 8, !dbg !1538
  %191 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %188, i64 %190), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %191, metadata !1539, metadata !DIExpression()), !dbg !1499
  %192 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %191), !dbg !1540
  %193 = bitcast i128* %25 to { i64, i64 }*, !dbg !1540
  %194 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %193, i32 0, i32 0, !dbg !1540
  %195 = extractvalue { i64, i64 } %192, 0, !dbg !1540
  store i64 %195, i64* %194, align 16, !dbg !1540
  %196 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %193, i32 0, i32 1, !dbg !1540
  %197 = extractvalue { i64, i64 } %192, 1, !dbg !1540
  store i64 %197, i64* %196, align 8, !dbg !1540
  %198 = load i128, i128* %25, align 16, !dbg !1540
  store i128 %79, i128* %26, align 16, !dbg !1541
  %199 = bitcast i128* %26 to { i64, i64 }*, !dbg !1541
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 0, !dbg !1541
  %201 = load i64, i64* %200, align 16, !dbg !1541
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 1, !dbg !1541
  %203 = load i64, i64* %202, align 8, !dbg !1541
  store i128 %198, i128* %27, align 16, !dbg !1541
  %204 = bitcast i128* %27 to { i64, i64 }*, !dbg !1541
  %205 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %204, i32 0, i32 0, !dbg !1541
  %206 = load i64, i64* %205, align 16, !dbg !1541
  %207 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %204, i32 0, i32 1, !dbg !1541
  %208 = load i64, i64* %207, align 8, !dbg !1541
  %209 = call { i64, i64 } @FStar_UInt128_add(i64 %201, i64 %203, i64 %206, i64 %208), !dbg !1541
  %210 = bitcast i128* %28 to { i64, i64 }*, !dbg !1541
  %211 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %210, i32 0, i32 0, !dbg !1541
  %212 = extractvalue { i64, i64 } %209, 0, !dbg !1541
  store i64 %212, i64* %211, align 16, !dbg !1541
  %213 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %210, i32 0, i32 1, !dbg !1541
  %214 = extractvalue { i64, i64 } %209, 1, !dbg !1541
  store i64 %214, i64* %213, align 8, !dbg !1541
  %215 = load i128, i128* %28, align 16, !dbg !1541
  call void @llvm.dbg.value(metadata i128 %215, metadata !1542, metadata !DIExpression()), !dbg !1499
  store i128 %215, i128* %29, align 16, !dbg !1543
  %216 = bitcast i128* %29 to { i64, i64 }*, !dbg !1543
  %217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %216, i32 0, i32 0, !dbg !1543
  %218 = load i64, i64* %217, align 16, !dbg !1543
  %219 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %216, i32 0, i32 1, !dbg !1543
  %220 = load i64, i64* %219, align 8, !dbg !1543
  %221 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %218, i64 %220), !dbg !1543
  %222 = and i64 %221, 2251799813685247, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %222, metadata !1545, metadata !DIExpression()), !dbg !1499
  store i128 %215, i128* %30, align 16, !dbg !1546
  %223 = bitcast i128* %30 to { i64, i64 }*, !dbg !1546
  %224 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %223, i32 0, i32 0, !dbg !1546
  %225 = load i64, i64* %224, align 16, !dbg !1546
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %223, i32 0, i32 1, !dbg !1546
  %227 = load i64, i64* %226, align 8, !dbg !1546
  %228 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %225, i64 %227, i32 51), !dbg !1546
  %229 = bitcast i128* %31 to { i64, i64 }*, !dbg !1546
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %229, i32 0, i32 0, !dbg !1546
  %231 = extractvalue { i64, i64 } %228, 0, !dbg !1546
  store i64 %231, i64* %230, align 16, !dbg !1546
  %232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %229, i32 0, i32 1, !dbg !1546
  %233 = extractvalue { i64, i64 } %228, 1, !dbg !1546
  store i64 %233, i64* %232, align 8, !dbg !1546
  %234 = load i128, i128* %31, align 16, !dbg !1546
  store i128 %234, i128* %32, align 16, !dbg !1547
  %235 = bitcast i128* %32 to { i64, i64 }*, !dbg !1547
  %236 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %235, i32 0, i32 0, !dbg !1547
  %237 = load i64, i64* %236, align 16, !dbg !1547
  %238 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %235, i32 0, i32 1, !dbg !1547
  %239 = load i64, i64* %238, align 8, !dbg !1547
  %240 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %237, i64 %239), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %240, metadata !1548, metadata !DIExpression()), !dbg !1499
  %241 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %240), !dbg !1549
  %242 = bitcast i128* %33 to { i64, i64 }*, !dbg !1549
  %243 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %242, i32 0, i32 0, !dbg !1549
  %244 = extractvalue { i64, i64 } %241, 0, !dbg !1549
  store i64 %244, i64* %243, align 16, !dbg !1549
  %245 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %242, i32 0, i32 1, !dbg !1549
  %246 = extractvalue { i64, i64 } %241, 1, !dbg !1549
  store i64 %246, i64* %245, align 8, !dbg !1549
  %247 = load i128, i128* %33, align 16, !dbg !1549
  store i128 %86, i128* %34, align 16, !dbg !1550
  %248 = bitcast i128* %34 to { i64, i64 }*, !dbg !1550
  %249 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %248, i32 0, i32 0, !dbg !1550
  %250 = load i64, i64* %249, align 16, !dbg !1550
  %251 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %248, i32 0, i32 1, !dbg !1550
  %252 = load i64, i64* %251, align 8, !dbg !1550
  store i128 %247, i128* %35, align 16, !dbg !1550
  %253 = bitcast i128* %35 to { i64, i64 }*, !dbg !1550
  %254 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 0, !dbg !1550
  %255 = load i64, i64* %254, align 16, !dbg !1550
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 1, !dbg !1550
  %257 = load i64, i64* %256, align 8, !dbg !1550
  %258 = call { i64, i64 } @FStar_UInt128_add(i64 %250, i64 %252, i64 %255, i64 %257), !dbg !1550
  %259 = bitcast i128* %36 to { i64, i64 }*, !dbg !1550
  %260 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %259, i32 0, i32 0, !dbg !1550
  %261 = extractvalue { i64, i64 } %258, 0, !dbg !1550
  store i64 %261, i64* %260, align 16, !dbg !1550
  %262 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %259, i32 0, i32 1, !dbg !1550
  %263 = extractvalue { i64, i64 } %258, 1, !dbg !1550
  store i64 %263, i64* %262, align 8, !dbg !1550
  %264 = load i128, i128* %36, align 16, !dbg !1550
  call void @llvm.dbg.value(metadata i128 %264, metadata !1551, metadata !DIExpression()), !dbg !1499
  store i128 %264, i128* %37, align 16, !dbg !1552
  %265 = bitcast i128* %37 to { i64, i64 }*, !dbg !1552
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 0, !dbg !1552
  %267 = load i64, i64* %266, align 16, !dbg !1552
  %268 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 1, !dbg !1552
  %269 = load i64, i64* %268, align 8, !dbg !1552
  %270 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %267, i64 %269), !dbg !1552
  %271 = and i64 %270, 2251799813685247, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %271, metadata !1554, metadata !DIExpression()), !dbg !1499
  store i128 %264, i128* %38, align 16, !dbg !1555
  %272 = bitcast i128* %38 to { i64, i64 }*, !dbg !1555
  %273 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %272, i32 0, i32 0, !dbg !1555
  %274 = load i64, i64* %273, align 16, !dbg !1555
  %275 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %272, i32 0, i32 1, !dbg !1555
  %276 = load i64, i64* %275, align 8, !dbg !1555
  %277 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %274, i64 %276, i32 51), !dbg !1555
  %278 = bitcast i128* %39 to { i64, i64 }*, !dbg !1555
  %279 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %278, i32 0, i32 0, !dbg !1555
  %280 = extractvalue { i64, i64 } %277, 0, !dbg !1555
  store i64 %280, i64* %279, align 16, !dbg !1555
  %281 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %278, i32 0, i32 1, !dbg !1555
  %282 = extractvalue { i64, i64 } %277, 1, !dbg !1555
  store i64 %282, i64* %281, align 8, !dbg !1555
  %283 = load i128, i128* %39, align 16, !dbg !1555
  store i128 %283, i128* %40, align 16, !dbg !1556
  %284 = bitcast i128* %40 to { i64, i64 }*, !dbg !1556
  %285 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %284, i32 0, i32 0, !dbg !1556
  %286 = load i64, i64* %285, align 16, !dbg !1556
  %287 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %284, i32 0, i32 1, !dbg !1556
  %288 = load i64, i64* %287, align 8, !dbg !1556
  %289 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %286, i64 %288), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %289, metadata !1557, metadata !DIExpression()), !dbg !1499
  %290 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %289), !dbg !1558
  %291 = bitcast i128* %41 to { i64, i64 }*, !dbg !1558
  %292 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %291, i32 0, i32 0, !dbg !1558
  %293 = extractvalue { i64, i64 } %290, 0, !dbg !1558
  store i64 %293, i64* %292, align 16, !dbg !1558
  %294 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %291, i32 0, i32 1, !dbg !1558
  %295 = extractvalue { i64, i64 } %290, 1, !dbg !1558
  store i64 %295, i64* %294, align 8, !dbg !1558
  %296 = load i128, i128* %41, align 16, !dbg !1558
  store i128 %93, i128* %42, align 16, !dbg !1559
  %297 = bitcast i128* %42 to { i64, i64 }*, !dbg !1559
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %297, i32 0, i32 0, !dbg !1559
  %299 = load i64, i64* %298, align 16, !dbg !1559
  %300 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %297, i32 0, i32 1, !dbg !1559
  %301 = load i64, i64* %300, align 8, !dbg !1559
  store i128 %296, i128* %43, align 16, !dbg !1559
  %302 = bitcast i128* %43 to { i64, i64 }*, !dbg !1559
  %303 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %302, i32 0, i32 0, !dbg !1559
  %304 = load i64, i64* %303, align 16, !dbg !1559
  %305 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %302, i32 0, i32 1, !dbg !1559
  %306 = load i64, i64* %305, align 8, !dbg !1559
  %307 = call { i64, i64 } @FStar_UInt128_add(i64 %299, i64 %301, i64 %304, i64 %306), !dbg !1559
  %308 = bitcast i128* %44 to { i64, i64 }*, !dbg !1559
  %309 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %308, i32 0, i32 0, !dbg !1559
  %310 = extractvalue { i64, i64 } %307, 0, !dbg !1559
  store i64 %310, i64* %309, align 16, !dbg !1559
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %308, i32 0, i32 1, !dbg !1559
  %312 = extractvalue { i64, i64 } %307, 1, !dbg !1559
  store i64 %312, i64* %311, align 8, !dbg !1559
  %313 = load i128, i128* %44, align 16, !dbg !1559
  call void @llvm.dbg.value(metadata i128 %313, metadata !1560, metadata !DIExpression()), !dbg !1499
  store i128 %313, i128* %45, align 16, !dbg !1561
  %314 = bitcast i128* %45 to { i64, i64 }*, !dbg !1561
  %315 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %314, i32 0, i32 0, !dbg !1561
  %316 = load i64, i64* %315, align 16, !dbg !1561
  %317 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %314, i32 0, i32 1, !dbg !1561
  %318 = load i64, i64* %317, align 8, !dbg !1561
  %319 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %316, i64 %318), !dbg !1561
  %320 = and i64 %319, 2251799813685247, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %320, metadata !1563, metadata !DIExpression()), !dbg !1499
  store i128 %313, i128* %46, align 16, !dbg !1564
  %321 = bitcast i128* %46 to { i64, i64 }*, !dbg !1564
  %322 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %321, i32 0, i32 0, !dbg !1564
  %323 = load i64, i64* %322, align 16, !dbg !1564
  %324 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %321, i32 0, i32 1, !dbg !1564
  %325 = load i64, i64* %324, align 8, !dbg !1564
  %326 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %323, i64 %325, i32 51), !dbg !1564
  %327 = bitcast i128* %47 to { i64, i64 }*, !dbg !1564
  %328 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %327, i32 0, i32 0, !dbg !1564
  %329 = extractvalue { i64, i64 } %326, 0, !dbg !1564
  store i64 %329, i64* %328, align 16, !dbg !1564
  %330 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %327, i32 0, i32 1, !dbg !1564
  %331 = extractvalue { i64, i64 } %326, 1, !dbg !1564
  store i64 %331, i64* %330, align 8, !dbg !1564
  %332 = load i128, i128* %47, align 16, !dbg !1564
  store i128 %332, i128* %48, align 16, !dbg !1565
  %333 = bitcast i128* %48 to { i64, i64 }*, !dbg !1565
  %334 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %333, i32 0, i32 0, !dbg !1565
  %335 = load i64, i64* %334, align 16, !dbg !1565
  %336 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %333, i32 0, i32 1, !dbg !1565
  %337 = load i64, i64* %336, align 8, !dbg !1565
  %338 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %335, i64 %337), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %338, metadata !1566, metadata !DIExpression()), !dbg !1499
  %339 = mul i64 %338, 19, !dbg !1567
  %340 = add i64 %124, %339, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %340, metadata !1569, metadata !DIExpression()), !dbg !1499
  %341 = and i64 %340, 2251799813685247, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %341, metadata !1571, metadata !DIExpression()), !dbg !1499
  %342 = lshr i64 %340, 51, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %342, metadata !1573, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %341, metadata !1574, metadata !DIExpression()), !dbg !1499
  %343 = add i64 %173, %342, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %343, metadata !1576, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %222, metadata !1577, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %271, metadata !1578, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %320, metadata !1579, metadata !DIExpression()), !dbg !1499
  %344 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1580
  store i64 %341, i64* %344, align 8, !dbg !1581
  %345 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1582
  store i64 %343, i64* %345, align 8, !dbg !1583
  %346 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1584
  store i64 %222, i64* %346, align 8, !dbg !1585
  %347 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1586
  store i64 %271, i64* %347, align 8, !dbg !1587
  %348 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1588
  store i64 %320, i64* %348, align 8, !dbg !1589
  ret void, !dbg !1590
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Curve25519_Field51_fmul2(i64* %0, i64* %1, i64* %2, i128* %3) #0 !dbg !1591 {
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = alloca i128, align 16
  %21 = alloca i128, align 16
  %22 = alloca i128, align 16
  %23 = alloca i128, align 16
  %24 = alloca i128, align 16
  %25 = alloca i128, align 16
  %26 = alloca i128, align 16
  %27 = alloca i128, align 16
  %28 = alloca i128, align 16
  %29 = alloca i128, align 16
  %30 = alloca i128, align 16
  %31 = alloca i128, align 16
  %32 = alloca i128, align 16
  %33 = alloca i128, align 16
  %34 = alloca i128, align 16
  %35 = alloca i128, align 16
  %36 = alloca i128, align 16
  %37 = alloca i128, align 16
  %38 = alloca i128, align 16
  %39 = alloca i128, align 16
  %40 = alloca i128, align 16
  %41 = alloca i128, align 16
  %42 = alloca i128, align 16
  %43 = alloca i128, align 16
  %44 = alloca i128, align 16
  %45 = alloca i128, align 16
  %46 = alloca i128, align 16
  %47 = alloca i128, align 16
  %48 = alloca i128, align 16
  %49 = alloca i128, align 16
  %50 = alloca i128, align 16
  %51 = alloca i128, align 16
  %52 = alloca i128, align 16
  %53 = alloca i128, align 16
  %54 = alloca i128, align 16
  %55 = alloca i128, align 16
  %56 = alloca i128, align 16
  %57 = alloca i128, align 16
  %58 = alloca i128, align 16
  %59 = alloca i128, align 16
  %60 = alloca i128, align 16
  %61 = alloca i128, align 16
  %62 = alloca i128, align 16
  %63 = alloca i128, align 16
  %64 = alloca i128, align 16
  %65 = alloca i128, align 16
  %66 = alloca i128, align 16
  %67 = alloca i128, align 16
  %68 = alloca i128, align 16
  %69 = alloca i128, align 16
  %70 = alloca i128, align 16
  %71 = alloca i128, align 16
  %72 = alloca i128, align 16
  %73 = alloca i128, align 16
  %74 = alloca i128, align 16
  %75 = alloca i128, align 16
  %76 = alloca i128, align 16
  %77 = alloca i128, align 16
  %78 = alloca i128, align 16
  %79 = alloca i128, align 16
  %80 = alloca i128, align 16
  %81 = alloca i128, align 16
  %82 = alloca i128, align 16
  %83 = alloca i128, align 16
  %84 = alloca i128, align 16
  %85 = alloca i128, align 16
  %86 = alloca i128, align 16
  %87 = alloca i128, align 16
  %88 = alloca i128, align 16
  %89 = alloca i128, align 16
  %90 = alloca i128, align 16
  %91 = alloca i128, align 16
  %92 = alloca i128, align 16
  %93 = alloca i128, align 16
  %94 = alloca i128, align 16
  %95 = alloca i128, align 16
  %96 = alloca i128, align 16
  %97 = alloca i128, align 16
  %98 = alloca i128, align 16
  %99 = alloca i128, align 16
  %100 = alloca i128, align 16
  %101 = alloca i128, align 16
  %102 = alloca i128, align 16
  %103 = alloca i128, align 16
  %104 = alloca i128, align 16
  %105 = alloca i128, align 16
  %106 = alloca i128, align 16
  %107 = alloca i128, align 16
  %108 = alloca i128, align 16
  %109 = alloca i128, align 16
  %110 = alloca i128, align 16
  %111 = alloca i128, align 16
  %112 = alloca i128, align 16
  %113 = alloca i128, align 16
  %114 = alloca i128, align 16
  %115 = alloca i128, align 16
  %116 = alloca i128, align 16
  %117 = alloca i128, align 16
  %118 = alloca i128, align 16
  %119 = alloca i128, align 16
  %120 = alloca i128, align 16
  %121 = alloca i128, align 16
  %122 = alloca i128, align 16
  %123 = alloca i128, align 16
  %124 = alloca i128, align 16
  %125 = alloca i128, align 16
  %126 = alloca i128, align 16
  %127 = alloca i128, align 16
  %128 = alloca i128, align 16
  %129 = alloca i128, align 16
  %130 = alloca i128, align 16
  %131 = alloca i128, align 16
  %132 = alloca i128, align 16
  %133 = alloca i128, align 16
  %134 = alloca i128, align 16
  %135 = alloca i128, align 16
  %136 = alloca i128, align 16
  %137 = alloca i128, align 16
  %138 = alloca i128, align 16
  %139 = alloca i128, align 16
  %140 = alloca i128, align 16
  %141 = alloca i128, align 16
  %142 = alloca i128, align 16
  %143 = alloca i128, align 16
  %144 = alloca i128, align 16
  %145 = alloca i128, align 16
  %146 = alloca i128, align 16
  %147 = alloca i128, align 16
  %148 = alloca i128, align 16
  %149 = alloca i128, align 16
  %150 = alloca i128, align 16
  %151 = alloca i128, align 16
  %152 = alloca i128, align 16
  %153 = alloca i128, align 16
  %154 = alloca i128, align 16
  %155 = alloca i128, align 16
  %156 = alloca i128, align 16
  %157 = alloca i128, align 16
  %158 = alloca i128, align 16
  %159 = alloca i128, align 16
  %160 = alloca i128, align 16
  %161 = alloca i128, align 16
  %162 = alloca i128, align 16
  %163 = alloca i128, align 16
  %164 = alloca i128, align 16
  %165 = alloca i128, align 16
  %166 = alloca i128, align 16
  %167 = alloca i128, align 16
  %168 = alloca i128, align 16
  %169 = alloca i128, align 16
  %170 = alloca i128, align 16
  %171 = alloca i128, align 16
  %172 = alloca i128, align 16
  %173 = alloca i128, align 16
  %174 = alloca i128, align 16
  %175 = alloca i128, align 16
  %176 = alloca i128, align 16
  %177 = alloca i128, align 16
  %178 = alloca i128, align 16
  %179 = alloca i128, align 16
  %180 = alloca i128, align 16
  %181 = alloca i128, align 16
  %182 = alloca i128, align 16
  %183 = alloca i128, align 16
  %184 = alloca i128, align 16
  %185 = alloca i128, align 16
  %186 = alloca i128, align 16
  %187 = alloca i128, align 16
  %188 = alloca i128, align 16
  %189 = alloca i128, align 16
  %190 = alloca i128, align 16
  %191 = alloca i128, align 16
  %192 = alloca i128, align 16
  %193 = alloca i128, align 16
  %194 = alloca i128, align 16
  %195 = alloca i128, align 16
  %196 = alloca i128, align 16
  %197 = alloca i128, align 16
  %198 = alloca i128, align 16
  %199 = alloca i128, align 16
  %200 = alloca i128, align 16
  %201 = alloca i128, align 16
  %202 = alloca i128, align 16
  %203 = alloca i128, align 16
  %204 = alloca i128, align 16
  %205 = alloca i128, align 16
  %206 = alloca i128, align 16
  %207 = alloca i128, align 16
  %208 = alloca i128, align 16
  %209 = alloca i128, align 16
  %210 = alloca i128, align 16
  %211 = alloca i128, align 16
  %212 = alloca i128, align 16
  %213 = alloca i128, align 16
  %214 = alloca i128, align 16
  %215 = alloca i128, align 16
  %216 = alloca i128, align 16
  %217 = alloca i128, align 16
  %218 = alloca i128, align 16
  %219 = alloca i128, align 16
  %220 = alloca i128, align 16
  %221 = alloca i128, align 16
  %222 = alloca i128, align 16
  %223 = alloca i128, align 16
  %224 = alloca i128, align 16
  %225 = alloca i128, align 16
  %226 = alloca i128, align 16
  %227 = alloca i128, align 16
  %228 = alloca i128, align 16
  %229 = alloca i128, align 16
  %230 = alloca i128, align 16
  %231 = alloca i128, align 16
  %232 = alloca i128, align 16
  %233 = alloca i128, align 16
  %234 = alloca i128, align 16
  %235 = alloca i128, align 16
  %236 = alloca i128, align 16
  %237 = alloca i128, align 16
  %238 = alloca i128, align 16
  %239 = alloca i128, align 16
  %240 = alloca i128, align 16
  %241 = alloca i128, align 16
  %242 = alloca i128, align 16
  %243 = alloca i128, align 16
  %244 = alloca i128, align 16
  %245 = alloca i128, align 16
  %246 = alloca i128, align 16
  %247 = alloca i128, align 16
  %248 = alloca i128, align 16
  %249 = alloca i128, align 16
  %250 = alloca i128, align 16
  %251 = alloca i128, align 16
  %252 = alloca i128, align 16
  %253 = alloca i128, align 16
  %254 = alloca i128, align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !1592, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64* %1, metadata !1594, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64* %2, metadata !1595, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128* %3, metadata !1596, metadata !DIExpression()), !dbg !1593
  %255 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1597
  %256 = load i64, i64* %255, align 8, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %256, metadata !1598, metadata !DIExpression()), !dbg !1593
  %257 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1599
  %258 = load i64, i64* %257, align 8, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %258, metadata !1600, metadata !DIExpression()), !dbg !1593
  %259 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1601
  %260 = load i64, i64* %259, align 8, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %260, metadata !1602, metadata !DIExpression()), !dbg !1593
  %261 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1603
  %262 = load i64, i64* %261, align 8, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %262, metadata !1604, metadata !DIExpression()), !dbg !1593
  %263 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1605
  %264 = load i64, i64* %263, align 8, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %264, metadata !1606, metadata !DIExpression()), !dbg !1593
  %265 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1607
  %266 = load i64, i64* %265, align 8, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %266, metadata !1608, metadata !DIExpression()), !dbg !1593
  %267 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1609
  %268 = load i64, i64* %267, align 8, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %268, metadata !1610, metadata !DIExpression()), !dbg !1593
  %269 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1611
  %270 = load i64, i64* %269, align 8, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %270, metadata !1612, metadata !DIExpression()), !dbg !1593
  %271 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1613
  %272 = load i64, i64* %271, align 8, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %272, metadata !1614, metadata !DIExpression()), !dbg !1593
  %273 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1615
  %274 = load i64, i64* %273, align 8, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %274, metadata !1616, metadata !DIExpression()), !dbg !1593
  %275 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !1617
  %276 = load i64, i64* %275, align 8, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %276, metadata !1618, metadata !DIExpression()), !dbg !1593
  %277 = getelementptr inbounds i64, i64* %1, i64 6, !dbg !1619
  %278 = load i64, i64* %277, align 8, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %278, metadata !1620, metadata !DIExpression()), !dbg !1593
  %279 = getelementptr inbounds i64, i64* %1, i64 7, !dbg !1621
  %280 = load i64, i64* %279, align 8, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %280, metadata !1622, metadata !DIExpression()), !dbg !1593
  %281 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !1623
  %282 = load i64, i64* %281, align 8, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %282, metadata !1624, metadata !DIExpression()), !dbg !1593
  %283 = getelementptr inbounds i64, i64* %1, i64 9, !dbg !1625
  %284 = load i64, i64* %283, align 8, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %284, metadata !1626, metadata !DIExpression()), !dbg !1593
  %285 = getelementptr inbounds i64, i64* %2, i64 5, !dbg !1627
  %286 = load i64, i64* %285, align 8, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %286, metadata !1628, metadata !DIExpression()), !dbg !1593
  %287 = getelementptr inbounds i64, i64* %2, i64 6, !dbg !1629
  %288 = load i64, i64* %287, align 8, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %288, metadata !1630, metadata !DIExpression()), !dbg !1593
  %289 = getelementptr inbounds i64, i64* %2, i64 7, !dbg !1631
  %290 = load i64, i64* %289, align 8, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %290, metadata !1632, metadata !DIExpression()), !dbg !1593
  %291 = getelementptr inbounds i64, i64* %2, i64 8, !dbg !1633
  %292 = load i64, i64* %291, align 8, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %292, metadata !1634, metadata !DIExpression()), !dbg !1593
  %293 = getelementptr inbounds i64, i64* %2, i64 9, !dbg !1635
  %294 = load i64, i64* %293, align 8, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %294, metadata !1636, metadata !DIExpression()), !dbg !1593
  %295 = mul i64 %268, 19, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %295, metadata !1638, metadata !DIExpression()), !dbg !1593
  %296 = mul i64 %270, 19, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %296, metadata !1640, metadata !DIExpression()), !dbg !1593
  %297 = mul i64 %272, 19, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %297, metadata !1642, metadata !DIExpression()), !dbg !1593
  %298 = mul i64 %274, 19, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %298, metadata !1644, metadata !DIExpression()), !dbg !1593
  %299 = mul i64 %288, 19, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %299, metadata !1646, metadata !DIExpression()), !dbg !1593
  %300 = mul i64 %290, 19, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %300, metadata !1648, metadata !DIExpression()), !dbg !1593
  %301 = mul i64 %292, 19, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %301, metadata !1650, metadata !DIExpression()), !dbg !1593
  %302 = mul i64 %294, 19, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %302, metadata !1652, metadata !DIExpression()), !dbg !1593
  %303 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %256, i64 %266), !dbg !1653
  %304 = bitcast i128* %5 to { i64, i64 }*, !dbg !1653
  %305 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %304, i32 0, i32 0, !dbg !1653
  %306 = extractvalue { i64, i64 } %303, 0, !dbg !1653
  store i64 %306, i64* %305, align 16, !dbg !1653
  %307 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %304, i32 0, i32 1, !dbg !1653
  %308 = extractvalue { i64, i64 } %303, 1, !dbg !1653
  store i64 %308, i64* %307, align 8, !dbg !1653
  %309 = load i128, i128* %5, align 16, !dbg !1653
  call void @llvm.dbg.value(metadata i128 %309, metadata !1654, metadata !DIExpression()), !dbg !1593
  %310 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %256, i64 %268), !dbg !1655
  %311 = bitcast i128* %6 to { i64, i64 }*, !dbg !1655
  %312 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 0, !dbg !1655
  %313 = extractvalue { i64, i64 } %310, 0, !dbg !1655
  store i64 %313, i64* %312, align 16, !dbg !1655
  %314 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 1, !dbg !1655
  %315 = extractvalue { i64, i64 } %310, 1, !dbg !1655
  store i64 %315, i64* %314, align 8, !dbg !1655
  %316 = load i128, i128* %6, align 16, !dbg !1655
  call void @llvm.dbg.value(metadata i128 %316, metadata !1656, metadata !DIExpression()), !dbg !1593
  %317 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %256, i64 %270), !dbg !1657
  %318 = bitcast i128* %7 to { i64, i64 }*, !dbg !1657
  %319 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %318, i32 0, i32 0, !dbg !1657
  %320 = extractvalue { i64, i64 } %317, 0, !dbg !1657
  store i64 %320, i64* %319, align 16, !dbg !1657
  %321 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %318, i32 0, i32 1, !dbg !1657
  %322 = extractvalue { i64, i64 } %317, 1, !dbg !1657
  store i64 %322, i64* %321, align 8, !dbg !1657
  %323 = load i128, i128* %7, align 16, !dbg !1657
  call void @llvm.dbg.value(metadata i128 %323, metadata !1658, metadata !DIExpression()), !dbg !1593
  %324 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %256, i64 %272), !dbg !1659
  %325 = bitcast i128* %8 to { i64, i64 }*, !dbg !1659
  %326 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %325, i32 0, i32 0, !dbg !1659
  %327 = extractvalue { i64, i64 } %324, 0, !dbg !1659
  store i64 %327, i64* %326, align 16, !dbg !1659
  %328 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %325, i32 0, i32 1, !dbg !1659
  %329 = extractvalue { i64, i64 } %324, 1, !dbg !1659
  store i64 %329, i64* %328, align 8, !dbg !1659
  %330 = load i128, i128* %8, align 16, !dbg !1659
  call void @llvm.dbg.value(metadata i128 %330, metadata !1660, metadata !DIExpression()), !dbg !1593
  %331 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %256, i64 %274), !dbg !1661
  %332 = bitcast i128* %9 to { i64, i64 }*, !dbg !1661
  %333 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %332, i32 0, i32 0, !dbg !1661
  %334 = extractvalue { i64, i64 } %331, 0, !dbg !1661
  store i64 %334, i64* %333, align 16, !dbg !1661
  %335 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %332, i32 0, i32 1, !dbg !1661
  %336 = extractvalue { i64, i64 } %331, 1, !dbg !1661
  store i64 %336, i64* %335, align 8, !dbg !1661
  %337 = load i128, i128* %9, align 16, !dbg !1661
  call void @llvm.dbg.value(metadata i128 %337, metadata !1662, metadata !DIExpression()), !dbg !1593
  %338 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %258, i64 %298), !dbg !1663
  %339 = bitcast i128* %10 to { i64, i64 }*, !dbg !1663
  %340 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %339, i32 0, i32 0, !dbg !1663
  %341 = extractvalue { i64, i64 } %338, 0, !dbg !1663
  store i64 %341, i64* %340, align 16, !dbg !1663
  %342 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %339, i32 0, i32 1, !dbg !1663
  %343 = extractvalue { i64, i64 } %338, 1, !dbg !1663
  store i64 %343, i64* %342, align 8, !dbg !1663
  %344 = load i128, i128* %10, align 16, !dbg !1663
  store i128 %309, i128* %11, align 16, !dbg !1664
  %345 = bitcast i128* %11 to { i64, i64 }*, !dbg !1664
  %346 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %345, i32 0, i32 0, !dbg !1664
  %347 = load i64, i64* %346, align 16, !dbg !1664
  %348 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %345, i32 0, i32 1, !dbg !1664
  %349 = load i64, i64* %348, align 8, !dbg !1664
  store i128 %344, i128* %12, align 16, !dbg !1664
  %350 = bitcast i128* %12 to { i64, i64 }*, !dbg !1664
  %351 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %350, i32 0, i32 0, !dbg !1664
  %352 = load i64, i64* %351, align 16, !dbg !1664
  %353 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %350, i32 0, i32 1, !dbg !1664
  %354 = load i64, i64* %353, align 8, !dbg !1664
  %355 = call { i64, i64 } @FStar_UInt128_add(i64 %347, i64 %349, i64 %352, i64 %354), !dbg !1664
  %356 = bitcast i128* %13 to { i64, i64 }*, !dbg !1664
  %357 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %356, i32 0, i32 0, !dbg !1664
  %358 = extractvalue { i64, i64 } %355, 0, !dbg !1664
  store i64 %358, i64* %357, align 16, !dbg !1664
  %359 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %356, i32 0, i32 1, !dbg !1664
  %360 = extractvalue { i64, i64 } %355, 1, !dbg !1664
  store i64 %360, i64* %359, align 8, !dbg !1664
  %361 = load i128, i128* %13, align 16, !dbg !1664
  call void @llvm.dbg.value(metadata i128 %361, metadata !1665, metadata !DIExpression()), !dbg !1593
  %362 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %258, i64 %266), !dbg !1666
  %363 = bitcast i128* %14 to { i64, i64 }*, !dbg !1666
  %364 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %363, i32 0, i32 0, !dbg !1666
  %365 = extractvalue { i64, i64 } %362, 0, !dbg !1666
  store i64 %365, i64* %364, align 16, !dbg !1666
  %366 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %363, i32 0, i32 1, !dbg !1666
  %367 = extractvalue { i64, i64 } %362, 1, !dbg !1666
  store i64 %367, i64* %366, align 8, !dbg !1666
  %368 = load i128, i128* %14, align 16, !dbg !1666
  store i128 %316, i128* %15, align 16, !dbg !1667
  %369 = bitcast i128* %15 to { i64, i64 }*, !dbg !1667
  %370 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 0, !dbg !1667
  %371 = load i64, i64* %370, align 16, !dbg !1667
  %372 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %369, i32 0, i32 1, !dbg !1667
  %373 = load i64, i64* %372, align 8, !dbg !1667
  store i128 %368, i128* %16, align 16, !dbg !1667
  %374 = bitcast i128* %16 to { i64, i64 }*, !dbg !1667
  %375 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %374, i32 0, i32 0, !dbg !1667
  %376 = load i64, i64* %375, align 16, !dbg !1667
  %377 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %374, i32 0, i32 1, !dbg !1667
  %378 = load i64, i64* %377, align 8, !dbg !1667
  %379 = call { i64, i64 } @FStar_UInt128_add(i64 %371, i64 %373, i64 %376, i64 %378), !dbg !1667
  %380 = bitcast i128* %17 to { i64, i64 }*, !dbg !1667
  %381 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %380, i32 0, i32 0, !dbg !1667
  %382 = extractvalue { i64, i64 } %379, 0, !dbg !1667
  store i64 %382, i64* %381, align 16, !dbg !1667
  %383 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %380, i32 0, i32 1, !dbg !1667
  %384 = extractvalue { i64, i64 } %379, 1, !dbg !1667
  store i64 %384, i64* %383, align 8, !dbg !1667
  %385 = load i128, i128* %17, align 16, !dbg !1667
  call void @llvm.dbg.value(metadata i128 %385, metadata !1668, metadata !DIExpression()), !dbg !1593
  %386 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %258, i64 %268), !dbg !1669
  %387 = bitcast i128* %18 to { i64, i64 }*, !dbg !1669
  %388 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 0, !dbg !1669
  %389 = extractvalue { i64, i64 } %386, 0, !dbg !1669
  store i64 %389, i64* %388, align 16, !dbg !1669
  %390 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %387, i32 0, i32 1, !dbg !1669
  %391 = extractvalue { i64, i64 } %386, 1, !dbg !1669
  store i64 %391, i64* %390, align 8, !dbg !1669
  %392 = load i128, i128* %18, align 16, !dbg !1669
  store i128 %323, i128* %19, align 16, !dbg !1670
  %393 = bitcast i128* %19 to { i64, i64 }*, !dbg !1670
  %394 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %393, i32 0, i32 0, !dbg !1670
  %395 = load i64, i64* %394, align 16, !dbg !1670
  %396 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %393, i32 0, i32 1, !dbg !1670
  %397 = load i64, i64* %396, align 8, !dbg !1670
  store i128 %392, i128* %20, align 16, !dbg !1670
  %398 = bitcast i128* %20 to { i64, i64 }*, !dbg !1670
  %399 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %398, i32 0, i32 0, !dbg !1670
  %400 = load i64, i64* %399, align 16, !dbg !1670
  %401 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %398, i32 0, i32 1, !dbg !1670
  %402 = load i64, i64* %401, align 8, !dbg !1670
  %403 = call { i64, i64 } @FStar_UInt128_add(i64 %395, i64 %397, i64 %400, i64 %402), !dbg !1670
  %404 = bitcast i128* %21 to { i64, i64 }*, !dbg !1670
  %405 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %404, i32 0, i32 0, !dbg !1670
  %406 = extractvalue { i64, i64 } %403, 0, !dbg !1670
  store i64 %406, i64* %405, align 16, !dbg !1670
  %407 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %404, i32 0, i32 1, !dbg !1670
  %408 = extractvalue { i64, i64 } %403, 1, !dbg !1670
  store i64 %408, i64* %407, align 8, !dbg !1670
  %409 = load i128, i128* %21, align 16, !dbg !1670
  call void @llvm.dbg.value(metadata i128 %409, metadata !1671, metadata !DIExpression()), !dbg !1593
  %410 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %258, i64 %270), !dbg !1672
  %411 = bitcast i128* %22 to { i64, i64 }*, !dbg !1672
  %412 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 0, !dbg !1672
  %413 = extractvalue { i64, i64 } %410, 0, !dbg !1672
  store i64 %413, i64* %412, align 16, !dbg !1672
  %414 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %411, i32 0, i32 1, !dbg !1672
  %415 = extractvalue { i64, i64 } %410, 1, !dbg !1672
  store i64 %415, i64* %414, align 8, !dbg !1672
  %416 = load i128, i128* %22, align 16, !dbg !1672
  store i128 %330, i128* %23, align 16, !dbg !1673
  %417 = bitcast i128* %23 to { i64, i64 }*, !dbg !1673
  %418 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %417, i32 0, i32 0, !dbg !1673
  %419 = load i64, i64* %418, align 16, !dbg !1673
  %420 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %417, i32 0, i32 1, !dbg !1673
  %421 = load i64, i64* %420, align 8, !dbg !1673
  store i128 %416, i128* %24, align 16, !dbg !1673
  %422 = bitcast i128* %24 to { i64, i64 }*, !dbg !1673
  %423 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %422, i32 0, i32 0, !dbg !1673
  %424 = load i64, i64* %423, align 16, !dbg !1673
  %425 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %422, i32 0, i32 1, !dbg !1673
  %426 = load i64, i64* %425, align 8, !dbg !1673
  %427 = call { i64, i64 } @FStar_UInt128_add(i64 %419, i64 %421, i64 %424, i64 %426), !dbg !1673
  %428 = bitcast i128* %25 to { i64, i64 }*, !dbg !1673
  %429 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %428, i32 0, i32 0, !dbg !1673
  %430 = extractvalue { i64, i64 } %427, 0, !dbg !1673
  store i64 %430, i64* %429, align 16, !dbg !1673
  %431 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %428, i32 0, i32 1, !dbg !1673
  %432 = extractvalue { i64, i64 } %427, 1, !dbg !1673
  store i64 %432, i64* %431, align 8, !dbg !1673
  %433 = load i128, i128* %25, align 16, !dbg !1673
  call void @llvm.dbg.value(metadata i128 %433, metadata !1674, metadata !DIExpression()), !dbg !1593
  %434 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %258, i64 %272), !dbg !1675
  %435 = bitcast i128* %26 to { i64, i64 }*, !dbg !1675
  %436 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %435, i32 0, i32 0, !dbg !1675
  %437 = extractvalue { i64, i64 } %434, 0, !dbg !1675
  store i64 %437, i64* %436, align 16, !dbg !1675
  %438 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %435, i32 0, i32 1, !dbg !1675
  %439 = extractvalue { i64, i64 } %434, 1, !dbg !1675
  store i64 %439, i64* %438, align 8, !dbg !1675
  %440 = load i128, i128* %26, align 16, !dbg !1675
  store i128 %337, i128* %27, align 16, !dbg !1676
  %441 = bitcast i128* %27 to { i64, i64 }*, !dbg !1676
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 0, !dbg !1676
  %443 = load i64, i64* %442, align 16, !dbg !1676
  %444 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 1, !dbg !1676
  %445 = load i64, i64* %444, align 8, !dbg !1676
  store i128 %440, i128* %28, align 16, !dbg !1676
  %446 = bitcast i128* %28 to { i64, i64 }*, !dbg !1676
  %447 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %446, i32 0, i32 0, !dbg !1676
  %448 = load i64, i64* %447, align 16, !dbg !1676
  %449 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %446, i32 0, i32 1, !dbg !1676
  %450 = load i64, i64* %449, align 8, !dbg !1676
  %451 = call { i64, i64 } @FStar_UInt128_add(i64 %443, i64 %445, i64 %448, i64 %450), !dbg !1676
  %452 = bitcast i128* %29 to { i64, i64 }*, !dbg !1676
  %453 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 0, !dbg !1676
  %454 = extractvalue { i64, i64 } %451, 0, !dbg !1676
  store i64 %454, i64* %453, align 16, !dbg !1676
  %455 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 1, !dbg !1676
  %456 = extractvalue { i64, i64 } %451, 1, !dbg !1676
  store i64 %456, i64* %455, align 8, !dbg !1676
  %457 = load i128, i128* %29, align 16, !dbg !1676
  call void @llvm.dbg.value(metadata i128 %457, metadata !1677, metadata !DIExpression()), !dbg !1593
  %458 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %260, i64 %297), !dbg !1678
  %459 = bitcast i128* %30 to { i64, i64 }*, !dbg !1678
  %460 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %459, i32 0, i32 0, !dbg !1678
  %461 = extractvalue { i64, i64 } %458, 0, !dbg !1678
  store i64 %461, i64* %460, align 16, !dbg !1678
  %462 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %459, i32 0, i32 1, !dbg !1678
  %463 = extractvalue { i64, i64 } %458, 1, !dbg !1678
  store i64 %463, i64* %462, align 8, !dbg !1678
  %464 = load i128, i128* %30, align 16, !dbg !1678
  store i128 %361, i128* %31, align 16, !dbg !1679
  %465 = bitcast i128* %31 to { i64, i64 }*, !dbg !1679
  %466 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 0, !dbg !1679
  %467 = load i64, i64* %466, align 16, !dbg !1679
  %468 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 1, !dbg !1679
  %469 = load i64, i64* %468, align 8, !dbg !1679
  store i128 %464, i128* %32, align 16, !dbg !1679
  %470 = bitcast i128* %32 to { i64, i64 }*, !dbg !1679
  %471 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %470, i32 0, i32 0, !dbg !1679
  %472 = load i64, i64* %471, align 16, !dbg !1679
  %473 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %470, i32 0, i32 1, !dbg !1679
  %474 = load i64, i64* %473, align 8, !dbg !1679
  %475 = call { i64, i64 } @FStar_UInt128_add(i64 %467, i64 %469, i64 %472, i64 %474), !dbg !1679
  %476 = bitcast i128* %33 to { i64, i64 }*, !dbg !1679
  %477 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %476, i32 0, i32 0, !dbg !1679
  %478 = extractvalue { i64, i64 } %475, 0, !dbg !1679
  store i64 %478, i64* %477, align 16, !dbg !1679
  %479 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %476, i32 0, i32 1, !dbg !1679
  %480 = extractvalue { i64, i64 } %475, 1, !dbg !1679
  store i64 %480, i64* %479, align 8, !dbg !1679
  %481 = load i128, i128* %33, align 16, !dbg !1679
  call void @llvm.dbg.value(metadata i128 %481, metadata !1680, metadata !DIExpression()), !dbg !1593
  %482 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %260, i64 %298), !dbg !1681
  %483 = bitcast i128* %34 to { i64, i64 }*, !dbg !1681
  %484 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %483, i32 0, i32 0, !dbg !1681
  %485 = extractvalue { i64, i64 } %482, 0, !dbg !1681
  store i64 %485, i64* %484, align 16, !dbg !1681
  %486 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %483, i32 0, i32 1, !dbg !1681
  %487 = extractvalue { i64, i64 } %482, 1, !dbg !1681
  store i64 %487, i64* %486, align 8, !dbg !1681
  %488 = load i128, i128* %34, align 16, !dbg !1681
  store i128 %385, i128* %35, align 16, !dbg !1682
  %489 = bitcast i128* %35 to { i64, i64 }*, !dbg !1682
  %490 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 0, !dbg !1682
  %491 = load i64, i64* %490, align 16, !dbg !1682
  %492 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %489, i32 0, i32 1, !dbg !1682
  %493 = load i64, i64* %492, align 8, !dbg !1682
  store i128 %488, i128* %36, align 16, !dbg !1682
  %494 = bitcast i128* %36 to { i64, i64 }*, !dbg !1682
  %495 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %494, i32 0, i32 0, !dbg !1682
  %496 = load i64, i64* %495, align 16, !dbg !1682
  %497 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %494, i32 0, i32 1, !dbg !1682
  %498 = load i64, i64* %497, align 8, !dbg !1682
  %499 = call { i64, i64 } @FStar_UInt128_add(i64 %491, i64 %493, i64 %496, i64 %498), !dbg !1682
  %500 = bitcast i128* %37 to { i64, i64 }*, !dbg !1682
  %501 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %500, i32 0, i32 0, !dbg !1682
  %502 = extractvalue { i64, i64 } %499, 0, !dbg !1682
  store i64 %502, i64* %501, align 16, !dbg !1682
  %503 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %500, i32 0, i32 1, !dbg !1682
  %504 = extractvalue { i64, i64 } %499, 1, !dbg !1682
  store i64 %504, i64* %503, align 8, !dbg !1682
  %505 = load i128, i128* %37, align 16, !dbg !1682
  call void @llvm.dbg.value(metadata i128 %505, metadata !1683, metadata !DIExpression()), !dbg !1593
  %506 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %260, i64 %266), !dbg !1684
  %507 = bitcast i128* %38 to { i64, i64 }*, !dbg !1684
  %508 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %507, i32 0, i32 0, !dbg !1684
  %509 = extractvalue { i64, i64 } %506, 0, !dbg !1684
  store i64 %509, i64* %508, align 16, !dbg !1684
  %510 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %507, i32 0, i32 1, !dbg !1684
  %511 = extractvalue { i64, i64 } %506, 1, !dbg !1684
  store i64 %511, i64* %510, align 8, !dbg !1684
  %512 = load i128, i128* %38, align 16, !dbg !1684
  store i128 %409, i128* %39, align 16, !dbg !1685
  %513 = bitcast i128* %39 to { i64, i64 }*, !dbg !1685
  %514 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %513, i32 0, i32 0, !dbg !1685
  %515 = load i64, i64* %514, align 16, !dbg !1685
  %516 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %513, i32 0, i32 1, !dbg !1685
  %517 = load i64, i64* %516, align 8, !dbg !1685
  store i128 %512, i128* %40, align 16, !dbg !1685
  %518 = bitcast i128* %40 to { i64, i64 }*, !dbg !1685
  %519 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %518, i32 0, i32 0, !dbg !1685
  %520 = load i64, i64* %519, align 16, !dbg !1685
  %521 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %518, i32 0, i32 1, !dbg !1685
  %522 = load i64, i64* %521, align 8, !dbg !1685
  %523 = call { i64, i64 } @FStar_UInt128_add(i64 %515, i64 %517, i64 %520, i64 %522), !dbg !1685
  %524 = bitcast i128* %41 to { i64, i64 }*, !dbg !1685
  %525 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %524, i32 0, i32 0, !dbg !1685
  %526 = extractvalue { i64, i64 } %523, 0, !dbg !1685
  store i64 %526, i64* %525, align 16, !dbg !1685
  %527 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %524, i32 0, i32 1, !dbg !1685
  %528 = extractvalue { i64, i64 } %523, 1, !dbg !1685
  store i64 %528, i64* %527, align 8, !dbg !1685
  %529 = load i128, i128* %41, align 16, !dbg !1685
  call void @llvm.dbg.value(metadata i128 %529, metadata !1686, metadata !DIExpression()), !dbg !1593
  %530 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %260, i64 %268), !dbg !1687
  %531 = bitcast i128* %42 to { i64, i64 }*, !dbg !1687
  %532 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %531, i32 0, i32 0, !dbg !1687
  %533 = extractvalue { i64, i64 } %530, 0, !dbg !1687
  store i64 %533, i64* %532, align 16, !dbg !1687
  %534 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %531, i32 0, i32 1, !dbg !1687
  %535 = extractvalue { i64, i64 } %530, 1, !dbg !1687
  store i64 %535, i64* %534, align 8, !dbg !1687
  %536 = load i128, i128* %42, align 16, !dbg !1687
  store i128 %433, i128* %43, align 16, !dbg !1688
  %537 = bitcast i128* %43 to { i64, i64 }*, !dbg !1688
  %538 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %537, i32 0, i32 0, !dbg !1688
  %539 = load i64, i64* %538, align 16, !dbg !1688
  %540 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %537, i32 0, i32 1, !dbg !1688
  %541 = load i64, i64* %540, align 8, !dbg !1688
  store i128 %536, i128* %44, align 16, !dbg !1688
  %542 = bitcast i128* %44 to { i64, i64 }*, !dbg !1688
  %543 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %542, i32 0, i32 0, !dbg !1688
  %544 = load i64, i64* %543, align 16, !dbg !1688
  %545 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %542, i32 0, i32 1, !dbg !1688
  %546 = load i64, i64* %545, align 8, !dbg !1688
  %547 = call { i64, i64 } @FStar_UInt128_add(i64 %539, i64 %541, i64 %544, i64 %546), !dbg !1688
  %548 = bitcast i128* %45 to { i64, i64 }*, !dbg !1688
  %549 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %548, i32 0, i32 0, !dbg !1688
  %550 = extractvalue { i64, i64 } %547, 0, !dbg !1688
  store i64 %550, i64* %549, align 16, !dbg !1688
  %551 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %548, i32 0, i32 1, !dbg !1688
  %552 = extractvalue { i64, i64 } %547, 1, !dbg !1688
  store i64 %552, i64* %551, align 8, !dbg !1688
  %553 = load i128, i128* %45, align 16, !dbg !1688
  call void @llvm.dbg.value(metadata i128 %553, metadata !1689, metadata !DIExpression()), !dbg !1593
  %554 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %260, i64 %270), !dbg !1690
  %555 = bitcast i128* %46 to { i64, i64 }*, !dbg !1690
  %556 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %555, i32 0, i32 0, !dbg !1690
  %557 = extractvalue { i64, i64 } %554, 0, !dbg !1690
  store i64 %557, i64* %556, align 16, !dbg !1690
  %558 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %555, i32 0, i32 1, !dbg !1690
  %559 = extractvalue { i64, i64 } %554, 1, !dbg !1690
  store i64 %559, i64* %558, align 8, !dbg !1690
  %560 = load i128, i128* %46, align 16, !dbg !1690
  store i128 %457, i128* %47, align 16, !dbg !1691
  %561 = bitcast i128* %47 to { i64, i64 }*, !dbg !1691
  %562 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %561, i32 0, i32 0, !dbg !1691
  %563 = load i64, i64* %562, align 16, !dbg !1691
  %564 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %561, i32 0, i32 1, !dbg !1691
  %565 = load i64, i64* %564, align 8, !dbg !1691
  store i128 %560, i128* %48, align 16, !dbg !1691
  %566 = bitcast i128* %48 to { i64, i64 }*, !dbg !1691
  %567 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %566, i32 0, i32 0, !dbg !1691
  %568 = load i64, i64* %567, align 16, !dbg !1691
  %569 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %566, i32 0, i32 1, !dbg !1691
  %570 = load i64, i64* %569, align 8, !dbg !1691
  %571 = call { i64, i64 } @FStar_UInt128_add(i64 %563, i64 %565, i64 %568, i64 %570), !dbg !1691
  %572 = bitcast i128* %49 to { i64, i64 }*, !dbg !1691
  %573 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %572, i32 0, i32 0, !dbg !1691
  %574 = extractvalue { i64, i64 } %571, 0, !dbg !1691
  store i64 %574, i64* %573, align 16, !dbg !1691
  %575 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %572, i32 0, i32 1, !dbg !1691
  %576 = extractvalue { i64, i64 } %571, 1, !dbg !1691
  store i64 %576, i64* %575, align 8, !dbg !1691
  %577 = load i128, i128* %49, align 16, !dbg !1691
  call void @llvm.dbg.value(metadata i128 %577, metadata !1692, metadata !DIExpression()), !dbg !1593
  %578 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %262, i64 %296), !dbg !1693
  %579 = bitcast i128* %50 to { i64, i64 }*, !dbg !1693
  %580 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %579, i32 0, i32 0, !dbg !1693
  %581 = extractvalue { i64, i64 } %578, 0, !dbg !1693
  store i64 %581, i64* %580, align 16, !dbg !1693
  %582 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %579, i32 0, i32 1, !dbg !1693
  %583 = extractvalue { i64, i64 } %578, 1, !dbg !1693
  store i64 %583, i64* %582, align 8, !dbg !1693
  %584 = load i128, i128* %50, align 16, !dbg !1693
  store i128 %481, i128* %51, align 16, !dbg !1694
  %585 = bitcast i128* %51 to { i64, i64 }*, !dbg !1694
  %586 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 0, !dbg !1694
  %587 = load i64, i64* %586, align 16, !dbg !1694
  %588 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 1, !dbg !1694
  %589 = load i64, i64* %588, align 8, !dbg !1694
  store i128 %584, i128* %52, align 16, !dbg !1694
  %590 = bitcast i128* %52 to { i64, i64 }*, !dbg !1694
  %591 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %590, i32 0, i32 0, !dbg !1694
  %592 = load i64, i64* %591, align 16, !dbg !1694
  %593 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %590, i32 0, i32 1, !dbg !1694
  %594 = load i64, i64* %593, align 8, !dbg !1694
  %595 = call { i64, i64 } @FStar_UInt128_add(i64 %587, i64 %589, i64 %592, i64 %594), !dbg !1694
  %596 = bitcast i128* %53 to { i64, i64 }*, !dbg !1694
  %597 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %596, i32 0, i32 0, !dbg !1694
  %598 = extractvalue { i64, i64 } %595, 0, !dbg !1694
  store i64 %598, i64* %597, align 16, !dbg !1694
  %599 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %596, i32 0, i32 1, !dbg !1694
  %600 = extractvalue { i64, i64 } %595, 1, !dbg !1694
  store i64 %600, i64* %599, align 8, !dbg !1694
  %601 = load i128, i128* %53, align 16, !dbg !1694
  call void @llvm.dbg.value(metadata i128 %601, metadata !1695, metadata !DIExpression()), !dbg !1593
  %602 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %262, i64 %297), !dbg !1696
  %603 = bitcast i128* %54 to { i64, i64 }*, !dbg !1696
  %604 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %603, i32 0, i32 0, !dbg !1696
  %605 = extractvalue { i64, i64 } %602, 0, !dbg !1696
  store i64 %605, i64* %604, align 16, !dbg !1696
  %606 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %603, i32 0, i32 1, !dbg !1696
  %607 = extractvalue { i64, i64 } %602, 1, !dbg !1696
  store i64 %607, i64* %606, align 8, !dbg !1696
  %608 = load i128, i128* %54, align 16, !dbg !1696
  store i128 %505, i128* %55, align 16, !dbg !1697
  %609 = bitcast i128* %55 to { i64, i64 }*, !dbg !1697
  %610 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %609, i32 0, i32 0, !dbg !1697
  %611 = load i64, i64* %610, align 16, !dbg !1697
  %612 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %609, i32 0, i32 1, !dbg !1697
  %613 = load i64, i64* %612, align 8, !dbg !1697
  store i128 %608, i128* %56, align 16, !dbg !1697
  %614 = bitcast i128* %56 to { i64, i64 }*, !dbg !1697
  %615 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %614, i32 0, i32 0, !dbg !1697
  %616 = load i64, i64* %615, align 16, !dbg !1697
  %617 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %614, i32 0, i32 1, !dbg !1697
  %618 = load i64, i64* %617, align 8, !dbg !1697
  %619 = call { i64, i64 } @FStar_UInt128_add(i64 %611, i64 %613, i64 %616, i64 %618), !dbg !1697
  %620 = bitcast i128* %57 to { i64, i64 }*, !dbg !1697
  %621 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %620, i32 0, i32 0, !dbg !1697
  %622 = extractvalue { i64, i64 } %619, 0, !dbg !1697
  store i64 %622, i64* %621, align 16, !dbg !1697
  %623 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %620, i32 0, i32 1, !dbg !1697
  %624 = extractvalue { i64, i64 } %619, 1, !dbg !1697
  store i64 %624, i64* %623, align 8, !dbg !1697
  %625 = load i128, i128* %57, align 16, !dbg !1697
  call void @llvm.dbg.value(metadata i128 %625, metadata !1698, metadata !DIExpression()), !dbg !1593
  %626 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %262, i64 %298), !dbg !1699
  %627 = bitcast i128* %58 to { i64, i64 }*, !dbg !1699
  %628 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %627, i32 0, i32 0, !dbg !1699
  %629 = extractvalue { i64, i64 } %626, 0, !dbg !1699
  store i64 %629, i64* %628, align 16, !dbg !1699
  %630 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %627, i32 0, i32 1, !dbg !1699
  %631 = extractvalue { i64, i64 } %626, 1, !dbg !1699
  store i64 %631, i64* %630, align 8, !dbg !1699
  %632 = load i128, i128* %58, align 16, !dbg !1699
  store i128 %529, i128* %59, align 16, !dbg !1700
  %633 = bitcast i128* %59 to { i64, i64 }*, !dbg !1700
  %634 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %633, i32 0, i32 0, !dbg !1700
  %635 = load i64, i64* %634, align 16, !dbg !1700
  %636 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %633, i32 0, i32 1, !dbg !1700
  %637 = load i64, i64* %636, align 8, !dbg !1700
  store i128 %632, i128* %60, align 16, !dbg !1700
  %638 = bitcast i128* %60 to { i64, i64 }*, !dbg !1700
  %639 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %638, i32 0, i32 0, !dbg !1700
  %640 = load i64, i64* %639, align 16, !dbg !1700
  %641 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %638, i32 0, i32 1, !dbg !1700
  %642 = load i64, i64* %641, align 8, !dbg !1700
  %643 = call { i64, i64 } @FStar_UInt128_add(i64 %635, i64 %637, i64 %640, i64 %642), !dbg !1700
  %644 = bitcast i128* %61 to { i64, i64 }*, !dbg !1700
  %645 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %644, i32 0, i32 0, !dbg !1700
  %646 = extractvalue { i64, i64 } %643, 0, !dbg !1700
  store i64 %646, i64* %645, align 16, !dbg !1700
  %647 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %644, i32 0, i32 1, !dbg !1700
  %648 = extractvalue { i64, i64 } %643, 1, !dbg !1700
  store i64 %648, i64* %647, align 8, !dbg !1700
  %649 = load i128, i128* %61, align 16, !dbg !1700
  call void @llvm.dbg.value(metadata i128 %649, metadata !1701, metadata !DIExpression()), !dbg !1593
  %650 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %262, i64 %266), !dbg !1702
  %651 = bitcast i128* %62 to { i64, i64 }*, !dbg !1702
  %652 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %651, i32 0, i32 0, !dbg !1702
  %653 = extractvalue { i64, i64 } %650, 0, !dbg !1702
  store i64 %653, i64* %652, align 16, !dbg !1702
  %654 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %651, i32 0, i32 1, !dbg !1702
  %655 = extractvalue { i64, i64 } %650, 1, !dbg !1702
  store i64 %655, i64* %654, align 8, !dbg !1702
  %656 = load i128, i128* %62, align 16, !dbg !1702
  store i128 %553, i128* %63, align 16, !dbg !1703
  %657 = bitcast i128* %63 to { i64, i64 }*, !dbg !1703
  %658 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %657, i32 0, i32 0, !dbg !1703
  %659 = load i64, i64* %658, align 16, !dbg !1703
  %660 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %657, i32 0, i32 1, !dbg !1703
  %661 = load i64, i64* %660, align 8, !dbg !1703
  store i128 %656, i128* %64, align 16, !dbg !1703
  %662 = bitcast i128* %64 to { i64, i64 }*, !dbg !1703
  %663 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %662, i32 0, i32 0, !dbg !1703
  %664 = load i64, i64* %663, align 16, !dbg !1703
  %665 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %662, i32 0, i32 1, !dbg !1703
  %666 = load i64, i64* %665, align 8, !dbg !1703
  %667 = call { i64, i64 } @FStar_UInt128_add(i64 %659, i64 %661, i64 %664, i64 %666), !dbg !1703
  %668 = bitcast i128* %65 to { i64, i64 }*, !dbg !1703
  %669 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %668, i32 0, i32 0, !dbg !1703
  %670 = extractvalue { i64, i64 } %667, 0, !dbg !1703
  store i64 %670, i64* %669, align 16, !dbg !1703
  %671 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %668, i32 0, i32 1, !dbg !1703
  %672 = extractvalue { i64, i64 } %667, 1, !dbg !1703
  store i64 %672, i64* %671, align 8, !dbg !1703
  %673 = load i128, i128* %65, align 16, !dbg !1703
  call void @llvm.dbg.value(metadata i128 %673, metadata !1704, metadata !DIExpression()), !dbg !1593
  %674 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %262, i64 %268), !dbg !1705
  %675 = bitcast i128* %66 to { i64, i64 }*, !dbg !1705
  %676 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %675, i32 0, i32 0, !dbg !1705
  %677 = extractvalue { i64, i64 } %674, 0, !dbg !1705
  store i64 %677, i64* %676, align 16, !dbg !1705
  %678 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %675, i32 0, i32 1, !dbg !1705
  %679 = extractvalue { i64, i64 } %674, 1, !dbg !1705
  store i64 %679, i64* %678, align 8, !dbg !1705
  %680 = load i128, i128* %66, align 16, !dbg !1705
  store i128 %577, i128* %67, align 16, !dbg !1706
  %681 = bitcast i128* %67 to { i64, i64 }*, !dbg !1706
  %682 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %681, i32 0, i32 0, !dbg !1706
  %683 = load i64, i64* %682, align 16, !dbg !1706
  %684 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %681, i32 0, i32 1, !dbg !1706
  %685 = load i64, i64* %684, align 8, !dbg !1706
  store i128 %680, i128* %68, align 16, !dbg !1706
  %686 = bitcast i128* %68 to { i64, i64 }*, !dbg !1706
  %687 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %686, i32 0, i32 0, !dbg !1706
  %688 = load i64, i64* %687, align 16, !dbg !1706
  %689 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %686, i32 0, i32 1, !dbg !1706
  %690 = load i64, i64* %689, align 8, !dbg !1706
  %691 = call { i64, i64 } @FStar_UInt128_add(i64 %683, i64 %685, i64 %688, i64 %690), !dbg !1706
  %692 = bitcast i128* %69 to { i64, i64 }*, !dbg !1706
  %693 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %692, i32 0, i32 0, !dbg !1706
  %694 = extractvalue { i64, i64 } %691, 0, !dbg !1706
  store i64 %694, i64* %693, align 16, !dbg !1706
  %695 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %692, i32 0, i32 1, !dbg !1706
  %696 = extractvalue { i64, i64 } %691, 1, !dbg !1706
  store i64 %696, i64* %695, align 8, !dbg !1706
  %697 = load i128, i128* %69, align 16, !dbg !1706
  call void @llvm.dbg.value(metadata i128 %697, metadata !1707, metadata !DIExpression()), !dbg !1593
  %698 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %264, i64 %295), !dbg !1708
  %699 = bitcast i128* %70 to { i64, i64 }*, !dbg !1708
  %700 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %699, i32 0, i32 0, !dbg !1708
  %701 = extractvalue { i64, i64 } %698, 0, !dbg !1708
  store i64 %701, i64* %700, align 16, !dbg !1708
  %702 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %699, i32 0, i32 1, !dbg !1708
  %703 = extractvalue { i64, i64 } %698, 1, !dbg !1708
  store i64 %703, i64* %702, align 8, !dbg !1708
  %704 = load i128, i128* %70, align 16, !dbg !1708
  store i128 %601, i128* %71, align 16, !dbg !1709
  %705 = bitcast i128* %71 to { i64, i64 }*, !dbg !1709
  %706 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %705, i32 0, i32 0, !dbg !1709
  %707 = load i64, i64* %706, align 16, !dbg !1709
  %708 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %705, i32 0, i32 1, !dbg !1709
  %709 = load i64, i64* %708, align 8, !dbg !1709
  store i128 %704, i128* %72, align 16, !dbg !1709
  %710 = bitcast i128* %72 to { i64, i64 }*, !dbg !1709
  %711 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %710, i32 0, i32 0, !dbg !1709
  %712 = load i64, i64* %711, align 16, !dbg !1709
  %713 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %710, i32 0, i32 1, !dbg !1709
  %714 = load i64, i64* %713, align 8, !dbg !1709
  %715 = call { i64, i64 } @FStar_UInt128_add(i64 %707, i64 %709, i64 %712, i64 %714), !dbg !1709
  %716 = bitcast i128* %73 to { i64, i64 }*, !dbg !1709
  %717 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %716, i32 0, i32 0, !dbg !1709
  %718 = extractvalue { i64, i64 } %715, 0, !dbg !1709
  store i64 %718, i64* %717, align 16, !dbg !1709
  %719 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %716, i32 0, i32 1, !dbg !1709
  %720 = extractvalue { i64, i64 } %715, 1, !dbg !1709
  store i64 %720, i64* %719, align 8, !dbg !1709
  %721 = load i128, i128* %73, align 16, !dbg !1709
  call void @llvm.dbg.value(metadata i128 %721, metadata !1710, metadata !DIExpression()), !dbg !1593
  %722 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %264, i64 %296), !dbg !1711
  %723 = bitcast i128* %74 to { i64, i64 }*, !dbg !1711
  %724 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %723, i32 0, i32 0, !dbg !1711
  %725 = extractvalue { i64, i64 } %722, 0, !dbg !1711
  store i64 %725, i64* %724, align 16, !dbg !1711
  %726 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %723, i32 0, i32 1, !dbg !1711
  %727 = extractvalue { i64, i64 } %722, 1, !dbg !1711
  store i64 %727, i64* %726, align 8, !dbg !1711
  %728 = load i128, i128* %74, align 16, !dbg !1711
  store i128 %625, i128* %75, align 16, !dbg !1712
  %729 = bitcast i128* %75 to { i64, i64 }*, !dbg !1712
  %730 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %729, i32 0, i32 0, !dbg !1712
  %731 = load i64, i64* %730, align 16, !dbg !1712
  %732 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %729, i32 0, i32 1, !dbg !1712
  %733 = load i64, i64* %732, align 8, !dbg !1712
  store i128 %728, i128* %76, align 16, !dbg !1712
  %734 = bitcast i128* %76 to { i64, i64 }*, !dbg !1712
  %735 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %734, i32 0, i32 0, !dbg !1712
  %736 = load i64, i64* %735, align 16, !dbg !1712
  %737 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %734, i32 0, i32 1, !dbg !1712
  %738 = load i64, i64* %737, align 8, !dbg !1712
  %739 = call { i64, i64 } @FStar_UInt128_add(i64 %731, i64 %733, i64 %736, i64 %738), !dbg !1712
  %740 = bitcast i128* %77 to { i64, i64 }*, !dbg !1712
  %741 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %740, i32 0, i32 0, !dbg !1712
  %742 = extractvalue { i64, i64 } %739, 0, !dbg !1712
  store i64 %742, i64* %741, align 16, !dbg !1712
  %743 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %740, i32 0, i32 1, !dbg !1712
  %744 = extractvalue { i64, i64 } %739, 1, !dbg !1712
  store i64 %744, i64* %743, align 8, !dbg !1712
  %745 = load i128, i128* %77, align 16, !dbg !1712
  call void @llvm.dbg.value(metadata i128 %745, metadata !1713, metadata !DIExpression()), !dbg !1593
  %746 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %264, i64 %297), !dbg !1714
  %747 = bitcast i128* %78 to { i64, i64 }*, !dbg !1714
  %748 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %747, i32 0, i32 0, !dbg !1714
  %749 = extractvalue { i64, i64 } %746, 0, !dbg !1714
  store i64 %749, i64* %748, align 16, !dbg !1714
  %750 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %747, i32 0, i32 1, !dbg !1714
  %751 = extractvalue { i64, i64 } %746, 1, !dbg !1714
  store i64 %751, i64* %750, align 8, !dbg !1714
  %752 = load i128, i128* %78, align 16, !dbg !1714
  store i128 %649, i128* %79, align 16, !dbg !1715
  %753 = bitcast i128* %79 to { i64, i64 }*, !dbg !1715
  %754 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %753, i32 0, i32 0, !dbg !1715
  %755 = load i64, i64* %754, align 16, !dbg !1715
  %756 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %753, i32 0, i32 1, !dbg !1715
  %757 = load i64, i64* %756, align 8, !dbg !1715
  store i128 %752, i128* %80, align 16, !dbg !1715
  %758 = bitcast i128* %80 to { i64, i64 }*, !dbg !1715
  %759 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %758, i32 0, i32 0, !dbg !1715
  %760 = load i64, i64* %759, align 16, !dbg !1715
  %761 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %758, i32 0, i32 1, !dbg !1715
  %762 = load i64, i64* %761, align 8, !dbg !1715
  %763 = call { i64, i64 } @FStar_UInt128_add(i64 %755, i64 %757, i64 %760, i64 %762), !dbg !1715
  %764 = bitcast i128* %81 to { i64, i64 }*, !dbg !1715
  %765 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %764, i32 0, i32 0, !dbg !1715
  %766 = extractvalue { i64, i64 } %763, 0, !dbg !1715
  store i64 %766, i64* %765, align 16, !dbg !1715
  %767 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %764, i32 0, i32 1, !dbg !1715
  %768 = extractvalue { i64, i64 } %763, 1, !dbg !1715
  store i64 %768, i64* %767, align 8, !dbg !1715
  %769 = load i128, i128* %81, align 16, !dbg !1715
  call void @llvm.dbg.value(metadata i128 %769, metadata !1716, metadata !DIExpression()), !dbg !1593
  %770 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %264, i64 %298), !dbg !1717
  %771 = bitcast i128* %82 to { i64, i64 }*, !dbg !1717
  %772 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %771, i32 0, i32 0, !dbg !1717
  %773 = extractvalue { i64, i64 } %770, 0, !dbg !1717
  store i64 %773, i64* %772, align 16, !dbg !1717
  %774 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %771, i32 0, i32 1, !dbg !1717
  %775 = extractvalue { i64, i64 } %770, 1, !dbg !1717
  store i64 %775, i64* %774, align 8, !dbg !1717
  %776 = load i128, i128* %82, align 16, !dbg !1717
  store i128 %673, i128* %83, align 16, !dbg !1718
  %777 = bitcast i128* %83 to { i64, i64 }*, !dbg !1718
  %778 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %777, i32 0, i32 0, !dbg !1718
  %779 = load i64, i64* %778, align 16, !dbg !1718
  %780 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %777, i32 0, i32 1, !dbg !1718
  %781 = load i64, i64* %780, align 8, !dbg !1718
  store i128 %776, i128* %84, align 16, !dbg !1718
  %782 = bitcast i128* %84 to { i64, i64 }*, !dbg !1718
  %783 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %782, i32 0, i32 0, !dbg !1718
  %784 = load i64, i64* %783, align 16, !dbg !1718
  %785 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %782, i32 0, i32 1, !dbg !1718
  %786 = load i64, i64* %785, align 8, !dbg !1718
  %787 = call { i64, i64 } @FStar_UInt128_add(i64 %779, i64 %781, i64 %784, i64 %786), !dbg !1718
  %788 = bitcast i128* %85 to { i64, i64 }*, !dbg !1718
  %789 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %788, i32 0, i32 0, !dbg !1718
  %790 = extractvalue { i64, i64 } %787, 0, !dbg !1718
  store i64 %790, i64* %789, align 16, !dbg !1718
  %791 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %788, i32 0, i32 1, !dbg !1718
  %792 = extractvalue { i64, i64 } %787, 1, !dbg !1718
  store i64 %792, i64* %791, align 8, !dbg !1718
  %793 = load i128, i128* %85, align 16, !dbg !1718
  call void @llvm.dbg.value(metadata i128 %793, metadata !1719, metadata !DIExpression()), !dbg !1593
  %794 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %264, i64 %266), !dbg !1720
  %795 = bitcast i128* %86 to { i64, i64 }*, !dbg !1720
  %796 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %795, i32 0, i32 0, !dbg !1720
  %797 = extractvalue { i64, i64 } %794, 0, !dbg !1720
  store i64 %797, i64* %796, align 16, !dbg !1720
  %798 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %795, i32 0, i32 1, !dbg !1720
  %799 = extractvalue { i64, i64 } %794, 1, !dbg !1720
  store i64 %799, i64* %798, align 8, !dbg !1720
  %800 = load i128, i128* %86, align 16, !dbg !1720
  store i128 %697, i128* %87, align 16, !dbg !1721
  %801 = bitcast i128* %87 to { i64, i64 }*, !dbg !1721
  %802 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %801, i32 0, i32 0, !dbg !1721
  %803 = load i64, i64* %802, align 16, !dbg !1721
  %804 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %801, i32 0, i32 1, !dbg !1721
  %805 = load i64, i64* %804, align 8, !dbg !1721
  store i128 %800, i128* %88, align 16, !dbg !1721
  %806 = bitcast i128* %88 to { i64, i64 }*, !dbg !1721
  %807 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %806, i32 0, i32 0, !dbg !1721
  %808 = load i64, i64* %807, align 16, !dbg !1721
  %809 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %806, i32 0, i32 1, !dbg !1721
  %810 = load i64, i64* %809, align 8, !dbg !1721
  %811 = call { i64, i64 } @FStar_UInt128_add(i64 %803, i64 %805, i64 %808, i64 %810), !dbg !1721
  %812 = bitcast i128* %89 to { i64, i64 }*, !dbg !1721
  %813 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %812, i32 0, i32 0, !dbg !1721
  %814 = extractvalue { i64, i64 } %811, 0, !dbg !1721
  store i64 %814, i64* %813, align 16, !dbg !1721
  %815 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %812, i32 0, i32 1, !dbg !1721
  %816 = extractvalue { i64, i64 } %811, 1, !dbg !1721
  store i64 %816, i64* %815, align 8, !dbg !1721
  %817 = load i128, i128* %89, align 16, !dbg !1721
  call void @llvm.dbg.value(metadata i128 %817, metadata !1722, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %721, metadata !1723, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %745, metadata !1724, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %769, metadata !1725, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %793, metadata !1726, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %817, metadata !1727, metadata !DIExpression()), !dbg !1593
  %818 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %276, i64 %286), !dbg !1728
  %819 = bitcast i128* %90 to { i64, i64 }*, !dbg !1728
  %820 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %819, i32 0, i32 0, !dbg !1728
  %821 = extractvalue { i64, i64 } %818, 0, !dbg !1728
  store i64 %821, i64* %820, align 16, !dbg !1728
  %822 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %819, i32 0, i32 1, !dbg !1728
  %823 = extractvalue { i64, i64 } %818, 1, !dbg !1728
  store i64 %823, i64* %822, align 8, !dbg !1728
  %824 = load i128, i128* %90, align 16, !dbg !1728
  call void @llvm.dbg.value(metadata i128 %824, metadata !1729, metadata !DIExpression()), !dbg !1593
  %825 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %276, i64 %288), !dbg !1730
  %826 = bitcast i128* %91 to { i64, i64 }*, !dbg !1730
  %827 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %826, i32 0, i32 0, !dbg !1730
  %828 = extractvalue { i64, i64 } %825, 0, !dbg !1730
  store i64 %828, i64* %827, align 16, !dbg !1730
  %829 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %826, i32 0, i32 1, !dbg !1730
  %830 = extractvalue { i64, i64 } %825, 1, !dbg !1730
  store i64 %830, i64* %829, align 8, !dbg !1730
  %831 = load i128, i128* %91, align 16, !dbg !1730
  call void @llvm.dbg.value(metadata i128 %831, metadata !1731, metadata !DIExpression()), !dbg !1593
  %832 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %276, i64 %290), !dbg !1732
  %833 = bitcast i128* %92 to { i64, i64 }*, !dbg !1732
  %834 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %833, i32 0, i32 0, !dbg !1732
  %835 = extractvalue { i64, i64 } %832, 0, !dbg !1732
  store i64 %835, i64* %834, align 16, !dbg !1732
  %836 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %833, i32 0, i32 1, !dbg !1732
  %837 = extractvalue { i64, i64 } %832, 1, !dbg !1732
  store i64 %837, i64* %836, align 8, !dbg !1732
  %838 = load i128, i128* %92, align 16, !dbg !1732
  call void @llvm.dbg.value(metadata i128 %838, metadata !1733, metadata !DIExpression()), !dbg !1593
  %839 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %276, i64 %292), !dbg !1734
  %840 = bitcast i128* %93 to { i64, i64 }*, !dbg !1734
  %841 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %840, i32 0, i32 0, !dbg !1734
  %842 = extractvalue { i64, i64 } %839, 0, !dbg !1734
  store i64 %842, i64* %841, align 16, !dbg !1734
  %843 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %840, i32 0, i32 1, !dbg !1734
  %844 = extractvalue { i64, i64 } %839, 1, !dbg !1734
  store i64 %844, i64* %843, align 8, !dbg !1734
  %845 = load i128, i128* %93, align 16, !dbg !1734
  call void @llvm.dbg.value(metadata i128 %845, metadata !1735, metadata !DIExpression()), !dbg !1593
  %846 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %276, i64 %294), !dbg !1736
  %847 = bitcast i128* %94 to { i64, i64 }*, !dbg !1736
  %848 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %847, i32 0, i32 0, !dbg !1736
  %849 = extractvalue { i64, i64 } %846, 0, !dbg !1736
  store i64 %849, i64* %848, align 16, !dbg !1736
  %850 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %847, i32 0, i32 1, !dbg !1736
  %851 = extractvalue { i64, i64 } %846, 1, !dbg !1736
  store i64 %851, i64* %850, align 8, !dbg !1736
  %852 = load i128, i128* %94, align 16, !dbg !1736
  call void @llvm.dbg.value(metadata i128 %852, metadata !1737, metadata !DIExpression()), !dbg !1593
  %853 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %278, i64 %302), !dbg !1738
  %854 = bitcast i128* %95 to { i64, i64 }*, !dbg !1738
  %855 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %854, i32 0, i32 0, !dbg !1738
  %856 = extractvalue { i64, i64 } %853, 0, !dbg !1738
  store i64 %856, i64* %855, align 16, !dbg !1738
  %857 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %854, i32 0, i32 1, !dbg !1738
  %858 = extractvalue { i64, i64 } %853, 1, !dbg !1738
  store i64 %858, i64* %857, align 8, !dbg !1738
  %859 = load i128, i128* %95, align 16, !dbg !1738
  store i128 %824, i128* %96, align 16, !dbg !1739
  %860 = bitcast i128* %96 to { i64, i64 }*, !dbg !1739
  %861 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %860, i32 0, i32 0, !dbg !1739
  %862 = load i64, i64* %861, align 16, !dbg !1739
  %863 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %860, i32 0, i32 1, !dbg !1739
  %864 = load i64, i64* %863, align 8, !dbg !1739
  store i128 %859, i128* %97, align 16, !dbg !1739
  %865 = bitcast i128* %97 to { i64, i64 }*, !dbg !1739
  %866 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %865, i32 0, i32 0, !dbg !1739
  %867 = load i64, i64* %866, align 16, !dbg !1739
  %868 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %865, i32 0, i32 1, !dbg !1739
  %869 = load i64, i64* %868, align 8, !dbg !1739
  %870 = call { i64, i64 } @FStar_UInt128_add(i64 %862, i64 %864, i64 %867, i64 %869), !dbg !1739
  %871 = bitcast i128* %98 to { i64, i64 }*, !dbg !1739
  %872 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %871, i32 0, i32 0, !dbg !1739
  %873 = extractvalue { i64, i64 } %870, 0, !dbg !1739
  store i64 %873, i64* %872, align 16, !dbg !1739
  %874 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %871, i32 0, i32 1, !dbg !1739
  %875 = extractvalue { i64, i64 } %870, 1, !dbg !1739
  store i64 %875, i64* %874, align 8, !dbg !1739
  %876 = load i128, i128* %98, align 16, !dbg !1739
  call void @llvm.dbg.value(metadata i128 %876, metadata !1740, metadata !DIExpression()), !dbg !1593
  %877 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %278, i64 %286), !dbg !1741
  %878 = bitcast i128* %99 to { i64, i64 }*, !dbg !1741
  %879 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %878, i32 0, i32 0, !dbg !1741
  %880 = extractvalue { i64, i64 } %877, 0, !dbg !1741
  store i64 %880, i64* %879, align 16, !dbg !1741
  %881 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %878, i32 0, i32 1, !dbg !1741
  %882 = extractvalue { i64, i64 } %877, 1, !dbg !1741
  store i64 %882, i64* %881, align 8, !dbg !1741
  %883 = load i128, i128* %99, align 16, !dbg !1741
  store i128 %831, i128* %100, align 16, !dbg !1742
  %884 = bitcast i128* %100 to { i64, i64 }*, !dbg !1742
  %885 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %884, i32 0, i32 0, !dbg !1742
  %886 = load i64, i64* %885, align 16, !dbg !1742
  %887 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %884, i32 0, i32 1, !dbg !1742
  %888 = load i64, i64* %887, align 8, !dbg !1742
  store i128 %883, i128* %101, align 16, !dbg !1742
  %889 = bitcast i128* %101 to { i64, i64 }*, !dbg !1742
  %890 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %889, i32 0, i32 0, !dbg !1742
  %891 = load i64, i64* %890, align 16, !dbg !1742
  %892 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %889, i32 0, i32 1, !dbg !1742
  %893 = load i64, i64* %892, align 8, !dbg !1742
  %894 = call { i64, i64 } @FStar_UInt128_add(i64 %886, i64 %888, i64 %891, i64 %893), !dbg !1742
  %895 = bitcast i128* %102 to { i64, i64 }*, !dbg !1742
  %896 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %895, i32 0, i32 0, !dbg !1742
  %897 = extractvalue { i64, i64 } %894, 0, !dbg !1742
  store i64 %897, i64* %896, align 16, !dbg !1742
  %898 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %895, i32 0, i32 1, !dbg !1742
  %899 = extractvalue { i64, i64 } %894, 1, !dbg !1742
  store i64 %899, i64* %898, align 8, !dbg !1742
  %900 = load i128, i128* %102, align 16, !dbg !1742
  call void @llvm.dbg.value(metadata i128 %900, metadata !1743, metadata !DIExpression()), !dbg !1593
  %901 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %278, i64 %288), !dbg !1744
  %902 = bitcast i128* %103 to { i64, i64 }*, !dbg !1744
  %903 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %902, i32 0, i32 0, !dbg !1744
  %904 = extractvalue { i64, i64 } %901, 0, !dbg !1744
  store i64 %904, i64* %903, align 16, !dbg !1744
  %905 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %902, i32 0, i32 1, !dbg !1744
  %906 = extractvalue { i64, i64 } %901, 1, !dbg !1744
  store i64 %906, i64* %905, align 8, !dbg !1744
  %907 = load i128, i128* %103, align 16, !dbg !1744
  store i128 %838, i128* %104, align 16, !dbg !1745
  %908 = bitcast i128* %104 to { i64, i64 }*, !dbg !1745
  %909 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %908, i32 0, i32 0, !dbg !1745
  %910 = load i64, i64* %909, align 16, !dbg !1745
  %911 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %908, i32 0, i32 1, !dbg !1745
  %912 = load i64, i64* %911, align 8, !dbg !1745
  store i128 %907, i128* %105, align 16, !dbg !1745
  %913 = bitcast i128* %105 to { i64, i64 }*, !dbg !1745
  %914 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %913, i32 0, i32 0, !dbg !1745
  %915 = load i64, i64* %914, align 16, !dbg !1745
  %916 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %913, i32 0, i32 1, !dbg !1745
  %917 = load i64, i64* %916, align 8, !dbg !1745
  %918 = call { i64, i64 } @FStar_UInt128_add(i64 %910, i64 %912, i64 %915, i64 %917), !dbg !1745
  %919 = bitcast i128* %106 to { i64, i64 }*, !dbg !1745
  %920 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %919, i32 0, i32 0, !dbg !1745
  %921 = extractvalue { i64, i64 } %918, 0, !dbg !1745
  store i64 %921, i64* %920, align 16, !dbg !1745
  %922 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %919, i32 0, i32 1, !dbg !1745
  %923 = extractvalue { i64, i64 } %918, 1, !dbg !1745
  store i64 %923, i64* %922, align 8, !dbg !1745
  %924 = load i128, i128* %106, align 16, !dbg !1745
  call void @llvm.dbg.value(metadata i128 %924, metadata !1746, metadata !DIExpression()), !dbg !1593
  %925 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %278, i64 %290), !dbg !1747
  %926 = bitcast i128* %107 to { i64, i64 }*, !dbg !1747
  %927 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %926, i32 0, i32 0, !dbg !1747
  %928 = extractvalue { i64, i64 } %925, 0, !dbg !1747
  store i64 %928, i64* %927, align 16, !dbg !1747
  %929 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %926, i32 0, i32 1, !dbg !1747
  %930 = extractvalue { i64, i64 } %925, 1, !dbg !1747
  store i64 %930, i64* %929, align 8, !dbg !1747
  %931 = load i128, i128* %107, align 16, !dbg !1747
  store i128 %845, i128* %108, align 16, !dbg !1748
  %932 = bitcast i128* %108 to { i64, i64 }*, !dbg !1748
  %933 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %932, i32 0, i32 0, !dbg !1748
  %934 = load i64, i64* %933, align 16, !dbg !1748
  %935 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %932, i32 0, i32 1, !dbg !1748
  %936 = load i64, i64* %935, align 8, !dbg !1748
  store i128 %931, i128* %109, align 16, !dbg !1748
  %937 = bitcast i128* %109 to { i64, i64 }*, !dbg !1748
  %938 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %937, i32 0, i32 0, !dbg !1748
  %939 = load i64, i64* %938, align 16, !dbg !1748
  %940 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %937, i32 0, i32 1, !dbg !1748
  %941 = load i64, i64* %940, align 8, !dbg !1748
  %942 = call { i64, i64 } @FStar_UInt128_add(i64 %934, i64 %936, i64 %939, i64 %941), !dbg !1748
  %943 = bitcast i128* %110 to { i64, i64 }*, !dbg !1748
  %944 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %943, i32 0, i32 0, !dbg !1748
  %945 = extractvalue { i64, i64 } %942, 0, !dbg !1748
  store i64 %945, i64* %944, align 16, !dbg !1748
  %946 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %943, i32 0, i32 1, !dbg !1748
  %947 = extractvalue { i64, i64 } %942, 1, !dbg !1748
  store i64 %947, i64* %946, align 8, !dbg !1748
  %948 = load i128, i128* %110, align 16, !dbg !1748
  call void @llvm.dbg.value(metadata i128 %948, metadata !1749, metadata !DIExpression()), !dbg !1593
  %949 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %278, i64 %292), !dbg !1750
  %950 = bitcast i128* %111 to { i64, i64 }*, !dbg !1750
  %951 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %950, i32 0, i32 0, !dbg !1750
  %952 = extractvalue { i64, i64 } %949, 0, !dbg !1750
  store i64 %952, i64* %951, align 16, !dbg !1750
  %953 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %950, i32 0, i32 1, !dbg !1750
  %954 = extractvalue { i64, i64 } %949, 1, !dbg !1750
  store i64 %954, i64* %953, align 8, !dbg !1750
  %955 = load i128, i128* %111, align 16, !dbg !1750
  store i128 %852, i128* %112, align 16, !dbg !1751
  %956 = bitcast i128* %112 to { i64, i64 }*, !dbg !1751
  %957 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %956, i32 0, i32 0, !dbg !1751
  %958 = load i64, i64* %957, align 16, !dbg !1751
  %959 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %956, i32 0, i32 1, !dbg !1751
  %960 = load i64, i64* %959, align 8, !dbg !1751
  store i128 %955, i128* %113, align 16, !dbg !1751
  %961 = bitcast i128* %113 to { i64, i64 }*, !dbg !1751
  %962 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %961, i32 0, i32 0, !dbg !1751
  %963 = load i64, i64* %962, align 16, !dbg !1751
  %964 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %961, i32 0, i32 1, !dbg !1751
  %965 = load i64, i64* %964, align 8, !dbg !1751
  %966 = call { i64, i64 } @FStar_UInt128_add(i64 %958, i64 %960, i64 %963, i64 %965), !dbg !1751
  %967 = bitcast i128* %114 to { i64, i64 }*, !dbg !1751
  %968 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %967, i32 0, i32 0, !dbg !1751
  %969 = extractvalue { i64, i64 } %966, 0, !dbg !1751
  store i64 %969, i64* %968, align 16, !dbg !1751
  %970 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %967, i32 0, i32 1, !dbg !1751
  %971 = extractvalue { i64, i64 } %966, 1, !dbg !1751
  store i64 %971, i64* %970, align 8, !dbg !1751
  %972 = load i128, i128* %114, align 16, !dbg !1751
  call void @llvm.dbg.value(metadata i128 %972, metadata !1752, metadata !DIExpression()), !dbg !1593
  %973 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %280, i64 %301), !dbg !1753
  %974 = bitcast i128* %115 to { i64, i64 }*, !dbg !1753
  %975 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %974, i32 0, i32 0, !dbg !1753
  %976 = extractvalue { i64, i64 } %973, 0, !dbg !1753
  store i64 %976, i64* %975, align 16, !dbg !1753
  %977 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %974, i32 0, i32 1, !dbg !1753
  %978 = extractvalue { i64, i64 } %973, 1, !dbg !1753
  store i64 %978, i64* %977, align 8, !dbg !1753
  %979 = load i128, i128* %115, align 16, !dbg !1753
  store i128 %876, i128* %116, align 16, !dbg !1754
  %980 = bitcast i128* %116 to { i64, i64 }*, !dbg !1754
  %981 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %980, i32 0, i32 0, !dbg !1754
  %982 = load i64, i64* %981, align 16, !dbg !1754
  %983 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %980, i32 0, i32 1, !dbg !1754
  %984 = load i64, i64* %983, align 8, !dbg !1754
  store i128 %979, i128* %117, align 16, !dbg !1754
  %985 = bitcast i128* %117 to { i64, i64 }*, !dbg !1754
  %986 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %985, i32 0, i32 0, !dbg !1754
  %987 = load i64, i64* %986, align 16, !dbg !1754
  %988 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %985, i32 0, i32 1, !dbg !1754
  %989 = load i64, i64* %988, align 8, !dbg !1754
  %990 = call { i64, i64 } @FStar_UInt128_add(i64 %982, i64 %984, i64 %987, i64 %989), !dbg !1754
  %991 = bitcast i128* %118 to { i64, i64 }*, !dbg !1754
  %992 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %991, i32 0, i32 0, !dbg !1754
  %993 = extractvalue { i64, i64 } %990, 0, !dbg !1754
  store i64 %993, i64* %992, align 16, !dbg !1754
  %994 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %991, i32 0, i32 1, !dbg !1754
  %995 = extractvalue { i64, i64 } %990, 1, !dbg !1754
  store i64 %995, i64* %994, align 8, !dbg !1754
  %996 = load i128, i128* %118, align 16, !dbg !1754
  call void @llvm.dbg.value(metadata i128 %996, metadata !1755, metadata !DIExpression()), !dbg !1593
  %997 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %280, i64 %302), !dbg !1756
  %998 = bitcast i128* %119 to { i64, i64 }*, !dbg !1756
  %999 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %998, i32 0, i32 0, !dbg !1756
  %1000 = extractvalue { i64, i64 } %997, 0, !dbg !1756
  store i64 %1000, i64* %999, align 16, !dbg !1756
  %1001 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %998, i32 0, i32 1, !dbg !1756
  %1002 = extractvalue { i64, i64 } %997, 1, !dbg !1756
  store i64 %1002, i64* %1001, align 8, !dbg !1756
  %1003 = load i128, i128* %119, align 16, !dbg !1756
  store i128 %900, i128* %120, align 16, !dbg !1757
  %1004 = bitcast i128* %120 to { i64, i64 }*, !dbg !1757
  %1005 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1004, i32 0, i32 0, !dbg !1757
  %1006 = load i64, i64* %1005, align 16, !dbg !1757
  %1007 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1004, i32 0, i32 1, !dbg !1757
  %1008 = load i64, i64* %1007, align 8, !dbg !1757
  store i128 %1003, i128* %121, align 16, !dbg !1757
  %1009 = bitcast i128* %121 to { i64, i64 }*, !dbg !1757
  %1010 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1009, i32 0, i32 0, !dbg !1757
  %1011 = load i64, i64* %1010, align 16, !dbg !1757
  %1012 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1009, i32 0, i32 1, !dbg !1757
  %1013 = load i64, i64* %1012, align 8, !dbg !1757
  %1014 = call { i64, i64 } @FStar_UInt128_add(i64 %1006, i64 %1008, i64 %1011, i64 %1013), !dbg !1757
  %1015 = bitcast i128* %122 to { i64, i64 }*, !dbg !1757
  %1016 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1015, i32 0, i32 0, !dbg !1757
  %1017 = extractvalue { i64, i64 } %1014, 0, !dbg !1757
  store i64 %1017, i64* %1016, align 16, !dbg !1757
  %1018 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1015, i32 0, i32 1, !dbg !1757
  %1019 = extractvalue { i64, i64 } %1014, 1, !dbg !1757
  store i64 %1019, i64* %1018, align 8, !dbg !1757
  %1020 = load i128, i128* %122, align 16, !dbg !1757
  call void @llvm.dbg.value(metadata i128 %1020, metadata !1758, metadata !DIExpression()), !dbg !1593
  %1021 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %280, i64 %286), !dbg !1759
  %1022 = bitcast i128* %123 to { i64, i64 }*, !dbg !1759
  %1023 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1022, i32 0, i32 0, !dbg !1759
  %1024 = extractvalue { i64, i64 } %1021, 0, !dbg !1759
  store i64 %1024, i64* %1023, align 16, !dbg !1759
  %1025 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1022, i32 0, i32 1, !dbg !1759
  %1026 = extractvalue { i64, i64 } %1021, 1, !dbg !1759
  store i64 %1026, i64* %1025, align 8, !dbg !1759
  %1027 = load i128, i128* %123, align 16, !dbg !1759
  store i128 %924, i128* %124, align 16, !dbg !1760
  %1028 = bitcast i128* %124 to { i64, i64 }*, !dbg !1760
  %1029 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1028, i32 0, i32 0, !dbg !1760
  %1030 = load i64, i64* %1029, align 16, !dbg !1760
  %1031 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1028, i32 0, i32 1, !dbg !1760
  %1032 = load i64, i64* %1031, align 8, !dbg !1760
  store i128 %1027, i128* %125, align 16, !dbg !1760
  %1033 = bitcast i128* %125 to { i64, i64 }*, !dbg !1760
  %1034 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1033, i32 0, i32 0, !dbg !1760
  %1035 = load i64, i64* %1034, align 16, !dbg !1760
  %1036 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1033, i32 0, i32 1, !dbg !1760
  %1037 = load i64, i64* %1036, align 8, !dbg !1760
  %1038 = call { i64, i64 } @FStar_UInt128_add(i64 %1030, i64 %1032, i64 %1035, i64 %1037), !dbg !1760
  %1039 = bitcast i128* %126 to { i64, i64 }*, !dbg !1760
  %1040 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1039, i32 0, i32 0, !dbg !1760
  %1041 = extractvalue { i64, i64 } %1038, 0, !dbg !1760
  store i64 %1041, i64* %1040, align 16, !dbg !1760
  %1042 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1039, i32 0, i32 1, !dbg !1760
  %1043 = extractvalue { i64, i64 } %1038, 1, !dbg !1760
  store i64 %1043, i64* %1042, align 8, !dbg !1760
  %1044 = load i128, i128* %126, align 16, !dbg !1760
  call void @llvm.dbg.value(metadata i128 %1044, metadata !1761, metadata !DIExpression()), !dbg !1593
  %1045 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %280, i64 %288), !dbg !1762
  %1046 = bitcast i128* %127 to { i64, i64 }*, !dbg !1762
  %1047 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1046, i32 0, i32 0, !dbg !1762
  %1048 = extractvalue { i64, i64 } %1045, 0, !dbg !1762
  store i64 %1048, i64* %1047, align 16, !dbg !1762
  %1049 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1046, i32 0, i32 1, !dbg !1762
  %1050 = extractvalue { i64, i64 } %1045, 1, !dbg !1762
  store i64 %1050, i64* %1049, align 8, !dbg !1762
  %1051 = load i128, i128* %127, align 16, !dbg !1762
  store i128 %948, i128* %128, align 16, !dbg !1763
  %1052 = bitcast i128* %128 to { i64, i64 }*, !dbg !1763
  %1053 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1052, i32 0, i32 0, !dbg !1763
  %1054 = load i64, i64* %1053, align 16, !dbg !1763
  %1055 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1052, i32 0, i32 1, !dbg !1763
  %1056 = load i64, i64* %1055, align 8, !dbg !1763
  store i128 %1051, i128* %129, align 16, !dbg !1763
  %1057 = bitcast i128* %129 to { i64, i64 }*, !dbg !1763
  %1058 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1057, i32 0, i32 0, !dbg !1763
  %1059 = load i64, i64* %1058, align 16, !dbg !1763
  %1060 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1057, i32 0, i32 1, !dbg !1763
  %1061 = load i64, i64* %1060, align 8, !dbg !1763
  %1062 = call { i64, i64 } @FStar_UInt128_add(i64 %1054, i64 %1056, i64 %1059, i64 %1061), !dbg !1763
  %1063 = bitcast i128* %130 to { i64, i64 }*, !dbg !1763
  %1064 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1063, i32 0, i32 0, !dbg !1763
  %1065 = extractvalue { i64, i64 } %1062, 0, !dbg !1763
  store i64 %1065, i64* %1064, align 16, !dbg !1763
  %1066 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1063, i32 0, i32 1, !dbg !1763
  %1067 = extractvalue { i64, i64 } %1062, 1, !dbg !1763
  store i64 %1067, i64* %1066, align 8, !dbg !1763
  %1068 = load i128, i128* %130, align 16, !dbg !1763
  call void @llvm.dbg.value(metadata i128 %1068, metadata !1764, metadata !DIExpression()), !dbg !1593
  %1069 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %280, i64 %290), !dbg !1765
  %1070 = bitcast i128* %131 to { i64, i64 }*, !dbg !1765
  %1071 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1070, i32 0, i32 0, !dbg !1765
  %1072 = extractvalue { i64, i64 } %1069, 0, !dbg !1765
  store i64 %1072, i64* %1071, align 16, !dbg !1765
  %1073 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1070, i32 0, i32 1, !dbg !1765
  %1074 = extractvalue { i64, i64 } %1069, 1, !dbg !1765
  store i64 %1074, i64* %1073, align 8, !dbg !1765
  %1075 = load i128, i128* %131, align 16, !dbg !1765
  store i128 %972, i128* %132, align 16, !dbg !1766
  %1076 = bitcast i128* %132 to { i64, i64 }*, !dbg !1766
  %1077 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1076, i32 0, i32 0, !dbg !1766
  %1078 = load i64, i64* %1077, align 16, !dbg !1766
  %1079 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1076, i32 0, i32 1, !dbg !1766
  %1080 = load i64, i64* %1079, align 8, !dbg !1766
  store i128 %1075, i128* %133, align 16, !dbg !1766
  %1081 = bitcast i128* %133 to { i64, i64 }*, !dbg !1766
  %1082 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1081, i32 0, i32 0, !dbg !1766
  %1083 = load i64, i64* %1082, align 16, !dbg !1766
  %1084 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1081, i32 0, i32 1, !dbg !1766
  %1085 = load i64, i64* %1084, align 8, !dbg !1766
  %1086 = call { i64, i64 } @FStar_UInt128_add(i64 %1078, i64 %1080, i64 %1083, i64 %1085), !dbg !1766
  %1087 = bitcast i128* %134 to { i64, i64 }*, !dbg !1766
  %1088 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1087, i32 0, i32 0, !dbg !1766
  %1089 = extractvalue { i64, i64 } %1086, 0, !dbg !1766
  store i64 %1089, i64* %1088, align 16, !dbg !1766
  %1090 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1087, i32 0, i32 1, !dbg !1766
  %1091 = extractvalue { i64, i64 } %1086, 1, !dbg !1766
  store i64 %1091, i64* %1090, align 8, !dbg !1766
  %1092 = load i128, i128* %134, align 16, !dbg !1766
  call void @llvm.dbg.value(metadata i128 %1092, metadata !1767, metadata !DIExpression()), !dbg !1593
  %1093 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %282, i64 %300), !dbg !1768
  %1094 = bitcast i128* %135 to { i64, i64 }*, !dbg !1768
  %1095 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1094, i32 0, i32 0, !dbg !1768
  %1096 = extractvalue { i64, i64 } %1093, 0, !dbg !1768
  store i64 %1096, i64* %1095, align 16, !dbg !1768
  %1097 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1094, i32 0, i32 1, !dbg !1768
  %1098 = extractvalue { i64, i64 } %1093, 1, !dbg !1768
  store i64 %1098, i64* %1097, align 8, !dbg !1768
  %1099 = load i128, i128* %135, align 16, !dbg !1768
  store i128 %996, i128* %136, align 16, !dbg !1769
  %1100 = bitcast i128* %136 to { i64, i64 }*, !dbg !1769
  %1101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1100, i32 0, i32 0, !dbg !1769
  %1102 = load i64, i64* %1101, align 16, !dbg !1769
  %1103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1100, i32 0, i32 1, !dbg !1769
  %1104 = load i64, i64* %1103, align 8, !dbg !1769
  store i128 %1099, i128* %137, align 16, !dbg !1769
  %1105 = bitcast i128* %137 to { i64, i64 }*, !dbg !1769
  %1106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1105, i32 0, i32 0, !dbg !1769
  %1107 = load i64, i64* %1106, align 16, !dbg !1769
  %1108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1105, i32 0, i32 1, !dbg !1769
  %1109 = load i64, i64* %1108, align 8, !dbg !1769
  %1110 = call { i64, i64 } @FStar_UInt128_add(i64 %1102, i64 %1104, i64 %1107, i64 %1109), !dbg !1769
  %1111 = bitcast i128* %138 to { i64, i64 }*, !dbg !1769
  %1112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1111, i32 0, i32 0, !dbg !1769
  %1113 = extractvalue { i64, i64 } %1110, 0, !dbg !1769
  store i64 %1113, i64* %1112, align 16, !dbg !1769
  %1114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1111, i32 0, i32 1, !dbg !1769
  %1115 = extractvalue { i64, i64 } %1110, 1, !dbg !1769
  store i64 %1115, i64* %1114, align 8, !dbg !1769
  %1116 = load i128, i128* %138, align 16, !dbg !1769
  call void @llvm.dbg.value(metadata i128 %1116, metadata !1770, metadata !DIExpression()), !dbg !1593
  %1117 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %282, i64 %301), !dbg !1771
  %1118 = bitcast i128* %139 to { i64, i64 }*, !dbg !1771
  %1119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1118, i32 0, i32 0, !dbg !1771
  %1120 = extractvalue { i64, i64 } %1117, 0, !dbg !1771
  store i64 %1120, i64* %1119, align 16, !dbg !1771
  %1121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1118, i32 0, i32 1, !dbg !1771
  %1122 = extractvalue { i64, i64 } %1117, 1, !dbg !1771
  store i64 %1122, i64* %1121, align 8, !dbg !1771
  %1123 = load i128, i128* %139, align 16, !dbg !1771
  store i128 %1020, i128* %140, align 16, !dbg !1772
  %1124 = bitcast i128* %140 to { i64, i64 }*, !dbg !1772
  %1125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1124, i32 0, i32 0, !dbg !1772
  %1126 = load i64, i64* %1125, align 16, !dbg !1772
  %1127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1124, i32 0, i32 1, !dbg !1772
  %1128 = load i64, i64* %1127, align 8, !dbg !1772
  store i128 %1123, i128* %141, align 16, !dbg !1772
  %1129 = bitcast i128* %141 to { i64, i64 }*, !dbg !1772
  %1130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1129, i32 0, i32 0, !dbg !1772
  %1131 = load i64, i64* %1130, align 16, !dbg !1772
  %1132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1129, i32 0, i32 1, !dbg !1772
  %1133 = load i64, i64* %1132, align 8, !dbg !1772
  %1134 = call { i64, i64 } @FStar_UInt128_add(i64 %1126, i64 %1128, i64 %1131, i64 %1133), !dbg !1772
  %1135 = bitcast i128* %142 to { i64, i64 }*, !dbg !1772
  %1136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1135, i32 0, i32 0, !dbg !1772
  %1137 = extractvalue { i64, i64 } %1134, 0, !dbg !1772
  store i64 %1137, i64* %1136, align 16, !dbg !1772
  %1138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1135, i32 0, i32 1, !dbg !1772
  %1139 = extractvalue { i64, i64 } %1134, 1, !dbg !1772
  store i64 %1139, i64* %1138, align 8, !dbg !1772
  %1140 = load i128, i128* %142, align 16, !dbg !1772
  call void @llvm.dbg.value(metadata i128 %1140, metadata !1773, metadata !DIExpression()), !dbg !1593
  %1141 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %282, i64 %302), !dbg !1774
  %1142 = bitcast i128* %143 to { i64, i64 }*, !dbg !1774
  %1143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1142, i32 0, i32 0, !dbg !1774
  %1144 = extractvalue { i64, i64 } %1141, 0, !dbg !1774
  store i64 %1144, i64* %1143, align 16, !dbg !1774
  %1145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1142, i32 0, i32 1, !dbg !1774
  %1146 = extractvalue { i64, i64 } %1141, 1, !dbg !1774
  store i64 %1146, i64* %1145, align 8, !dbg !1774
  %1147 = load i128, i128* %143, align 16, !dbg !1774
  store i128 %1044, i128* %144, align 16, !dbg !1775
  %1148 = bitcast i128* %144 to { i64, i64 }*, !dbg !1775
  %1149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1148, i32 0, i32 0, !dbg !1775
  %1150 = load i64, i64* %1149, align 16, !dbg !1775
  %1151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1148, i32 0, i32 1, !dbg !1775
  %1152 = load i64, i64* %1151, align 8, !dbg !1775
  store i128 %1147, i128* %145, align 16, !dbg !1775
  %1153 = bitcast i128* %145 to { i64, i64 }*, !dbg !1775
  %1154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1153, i32 0, i32 0, !dbg !1775
  %1155 = load i64, i64* %1154, align 16, !dbg !1775
  %1156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1153, i32 0, i32 1, !dbg !1775
  %1157 = load i64, i64* %1156, align 8, !dbg !1775
  %1158 = call { i64, i64 } @FStar_UInt128_add(i64 %1150, i64 %1152, i64 %1155, i64 %1157), !dbg !1775
  %1159 = bitcast i128* %146 to { i64, i64 }*, !dbg !1775
  %1160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1159, i32 0, i32 0, !dbg !1775
  %1161 = extractvalue { i64, i64 } %1158, 0, !dbg !1775
  store i64 %1161, i64* %1160, align 16, !dbg !1775
  %1162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1159, i32 0, i32 1, !dbg !1775
  %1163 = extractvalue { i64, i64 } %1158, 1, !dbg !1775
  store i64 %1163, i64* %1162, align 8, !dbg !1775
  %1164 = load i128, i128* %146, align 16, !dbg !1775
  call void @llvm.dbg.value(metadata i128 %1164, metadata !1776, metadata !DIExpression()), !dbg !1593
  %1165 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %282, i64 %286), !dbg !1777
  %1166 = bitcast i128* %147 to { i64, i64 }*, !dbg !1777
  %1167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1166, i32 0, i32 0, !dbg !1777
  %1168 = extractvalue { i64, i64 } %1165, 0, !dbg !1777
  store i64 %1168, i64* %1167, align 16, !dbg !1777
  %1169 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1166, i32 0, i32 1, !dbg !1777
  %1170 = extractvalue { i64, i64 } %1165, 1, !dbg !1777
  store i64 %1170, i64* %1169, align 8, !dbg !1777
  %1171 = load i128, i128* %147, align 16, !dbg !1777
  store i128 %1068, i128* %148, align 16, !dbg !1778
  %1172 = bitcast i128* %148 to { i64, i64 }*, !dbg !1778
  %1173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1172, i32 0, i32 0, !dbg !1778
  %1174 = load i64, i64* %1173, align 16, !dbg !1778
  %1175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1172, i32 0, i32 1, !dbg !1778
  %1176 = load i64, i64* %1175, align 8, !dbg !1778
  store i128 %1171, i128* %149, align 16, !dbg !1778
  %1177 = bitcast i128* %149 to { i64, i64 }*, !dbg !1778
  %1178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1177, i32 0, i32 0, !dbg !1778
  %1179 = load i64, i64* %1178, align 16, !dbg !1778
  %1180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1177, i32 0, i32 1, !dbg !1778
  %1181 = load i64, i64* %1180, align 8, !dbg !1778
  %1182 = call { i64, i64 } @FStar_UInt128_add(i64 %1174, i64 %1176, i64 %1179, i64 %1181), !dbg !1778
  %1183 = bitcast i128* %150 to { i64, i64 }*, !dbg !1778
  %1184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1183, i32 0, i32 0, !dbg !1778
  %1185 = extractvalue { i64, i64 } %1182, 0, !dbg !1778
  store i64 %1185, i64* %1184, align 16, !dbg !1778
  %1186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1183, i32 0, i32 1, !dbg !1778
  %1187 = extractvalue { i64, i64 } %1182, 1, !dbg !1778
  store i64 %1187, i64* %1186, align 8, !dbg !1778
  %1188 = load i128, i128* %150, align 16, !dbg !1778
  call void @llvm.dbg.value(metadata i128 %1188, metadata !1779, metadata !DIExpression()), !dbg !1593
  %1189 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %282, i64 %288), !dbg !1780
  %1190 = bitcast i128* %151 to { i64, i64 }*, !dbg !1780
  %1191 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1190, i32 0, i32 0, !dbg !1780
  %1192 = extractvalue { i64, i64 } %1189, 0, !dbg !1780
  store i64 %1192, i64* %1191, align 16, !dbg !1780
  %1193 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1190, i32 0, i32 1, !dbg !1780
  %1194 = extractvalue { i64, i64 } %1189, 1, !dbg !1780
  store i64 %1194, i64* %1193, align 8, !dbg !1780
  %1195 = load i128, i128* %151, align 16, !dbg !1780
  store i128 %1092, i128* %152, align 16, !dbg !1781
  %1196 = bitcast i128* %152 to { i64, i64 }*, !dbg !1781
  %1197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1196, i32 0, i32 0, !dbg !1781
  %1198 = load i64, i64* %1197, align 16, !dbg !1781
  %1199 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1196, i32 0, i32 1, !dbg !1781
  %1200 = load i64, i64* %1199, align 8, !dbg !1781
  store i128 %1195, i128* %153, align 16, !dbg !1781
  %1201 = bitcast i128* %153 to { i64, i64 }*, !dbg !1781
  %1202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1201, i32 0, i32 0, !dbg !1781
  %1203 = load i64, i64* %1202, align 16, !dbg !1781
  %1204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1201, i32 0, i32 1, !dbg !1781
  %1205 = load i64, i64* %1204, align 8, !dbg !1781
  %1206 = call { i64, i64 } @FStar_UInt128_add(i64 %1198, i64 %1200, i64 %1203, i64 %1205), !dbg !1781
  %1207 = bitcast i128* %154 to { i64, i64 }*, !dbg !1781
  %1208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1207, i32 0, i32 0, !dbg !1781
  %1209 = extractvalue { i64, i64 } %1206, 0, !dbg !1781
  store i64 %1209, i64* %1208, align 16, !dbg !1781
  %1210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1207, i32 0, i32 1, !dbg !1781
  %1211 = extractvalue { i64, i64 } %1206, 1, !dbg !1781
  store i64 %1211, i64* %1210, align 8, !dbg !1781
  %1212 = load i128, i128* %154, align 16, !dbg !1781
  call void @llvm.dbg.value(metadata i128 %1212, metadata !1782, metadata !DIExpression()), !dbg !1593
  %1213 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %284, i64 %299), !dbg !1783
  %1214 = bitcast i128* %155 to { i64, i64 }*, !dbg !1783
  %1215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1214, i32 0, i32 0, !dbg !1783
  %1216 = extractvalue { i64, i64 } %1213, 0, !dbg !1783
  store i64 %1216, i64* %1215, align 16, !dbg !1783
  %1217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1214, i32 0, i32 1, !dbg !1783
  %1218 = extractvalue { i64, i64 } %1213, 1, !dbg !1783
  store i64 %1218, i64* %1217, align 8, !dbg !1783
  %1219 = load i128, i128* %155, align 16, !dbg !1783
  store i128 %1116, i128* %156, align 16, !dbg !1784
  %1220 = bitcast i128* %156 to { i64, i64 }*, !dbg !1784
  %1221 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1220, i32 0, i32 0, !dbg !1784
  %1222 = load i64, i64* %1221, align 16, !dbg !1784
  %1223 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1220, i32 0, i32 1, !dbg !1784
  %1224 = load i64, i64* %1223, align 8, !dbg !1784
  store i128 %1219, i128* %157, align 16, !dbg !1784
  %1225 = bitcast i128* %157 to { i64, i64 }*, !dbg !1784
  %1226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1225, i32 0, i32 0, !dbg !1784
  %1227 = load i64, i64* %1226, align 16, !dbg !1784
  %1228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1225, i32 0, i32 1, !dbg !1784
  %1229 = load i64, i64* %1228, align 8, !dbg !1784
  %1230 = call { i64, i64 } @FStar_UInt128_add(i64 %1222, i64 %1224, i64 %1227, i64 %1229), !dbg !1784
  %1231 = bitcast i128* %158 to { i64, i64 }*, !dbg !1784
  %1232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1231, i32 0, i32 0, !dbg !1784
  %1233 = extractvalue { i64, i64 } %1230, 0, !dbg !1784
  store i64 %1233, i64* %1232, align 16, !dbg !1784
  %1234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1231, i32 0, i32 1, !dbg !1784
  %1235 = extractvalue { i64, i64 } %1230, 1, !dbg !1784
  store i64 %1235, i64* %1234, align 8, !dbg !1784
  %1236 = load i128, i128* %158, align 16, !dbg !1784
  call void @llvm.dbg.value(metadata i128 %1236, metadata !1785, metadata !DIExpression()), !dbg !1593
  %1237 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %284, i64 %300), !dbg !1786
  %1238 = bitcast i128* %159 to { i64, i64 }*, !dbg !1786
  %1239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1238, i32 0, i32 0, !dbg !1786
  %1240 = extractvalue { i64, i64 } %1237, 0, !dbg !1786
  store i64 %1240, i64* %1239, align 16, !dbg !1786
  %1241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1238, i32 0, i32 1, !dbg !1786
  %1242 = extractvalue { i64, i64 } %1237, 1, !dbg !1786
  store i64 %1242, i64* %1241, align 8, !dbg !1786
  %1243 = load i128, i128* %159, align 16, !dbg !1786
  store i128 %1140, i128* %160, align 16, !dbg !1787
  %1244 = bitcast i128* %160 to { i64, i64 }*, !dbg !1787
  %1245 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1244, i32 0, i32 0, !dbg !1787
  %1246 = load i64, i64* %1245, align 16, !dbg !1787
  %1247 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1244, i32 0, i32 1, !dbg !1787
  %1248 = load i64, i64* %1247, align 8, !dbg !1787
  store i128 %1243, i128* %161, align 16, !dbg !1787
  %1249 = bitcast i128* %161 to { i64, i64 }*, !dbg !1787
  %1250 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1249, i32 0, i32 0, !dbg !1787
  %1251 = load i64, i64* %1250, align 16, !dbg !1787
  %1252 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1249, i32 0, i32 1, !dbg !1787
  %1253 = load i64, i64* %1252, align 8, !dbg !1787
  %1254 = call { i64, i64 } @FStar_UInt128_add(i64 %1246, i64 %1248, i64 %1251, i64 %1253), !dbg !1787
  %1255 = bitcast i128* %162 to { i64, i64 }*, !dbg !1787
  %1256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1255, i32 0, i32 0, !dbg !1787
  %1257 = extractvalue { i64, i64 } %1254, 0, !dbg !1787
  store i64 %1257, i64* %1256, align 16, !dbg !1787
  %1258 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1255, i32 0, i32 1, !dbg !1787
  %1259 = extractvalue { i64, i64 } %1254, 1, !dbg !1787
  store i64 %1259, i64* %1258, align 8, !dbg !1787
  %1260 = load i128, i128* %162, align 16, !dbg !1787
  call void @llvm.dbg.value(metadata i128 %1260, metadata !1788, metadata !DIExpression()), !dbg !1593
  %1261 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %284, i64 %301), !dbg !1789
  %1262 = bitcast i128* %163 to { i64, i64 }*, !dbg !1789
  %1263 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1262, i32 0, i32 0, !dbg !1789
  %1264 = extractvalue { i64, i64 } %1261, 0, !dbg !1789
  store i64 %1264, i64* %1263, align 16, !dbg !1789
  %1265 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1262, i32 0, i32 1, !dbg !1789
  %1266 = extractvalue { i64, i64 } %1261, 1, !dbg !1789
  store i64 %1266, i64* %1265, align 8, !dbg !1789
  %1267 = load i128, i128* %163, align 16, !dbg !1789
  store i128 %1164, i128* %164, align 16, !dbg !1790
  %1268 = bitcast i128* %164 to { i64, i64 }*, !dbg !1790
  %1269 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1268, i32 0, i32 0, !dbg !1790
  %1270 = load i64, i64* %1269, align 16, !dbg !1790
  %1271 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1268, i32 0, i32 1, !dbg !1790
  %1272 = load i64, i64* %1271, align 8, !dbg !1790
  store i128 %1267, i128* %165, align 16, !dbg !1790
  %1273 = bitcast i128* %165 to { i64, i64 }*, !dbg !1790
  %1274 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1273, i32 0, i32 0, !dbg !1790
  %1275 = load i64, i64* %1274, align 16, !dbg !1790
  %1276 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1273, i32 0, i32 1, !dbg !1790
  %1277 = load i64, i64* %1276, align 8, !dbg !1790
  %1278 = call { i64, i64 } @FStar_UInt128_add(i64 %1270, i64 %1272, i64 %1275, i64 %1277), !dbg !1790
  %1279 = bitcast i128* %166 to { i64, i64 }*, !dbg !1790
  %1280 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1279, i32 0, i32 0, !dbg !1790
  %1281 = extractvalue { i64, i64 } %1278, 0, !dbg !1790
  store i64 %1281, i64* %1280, align 16, !dbg !1790
  %1282 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1279, i32 0, i32 1, !dbg !1790
  %1283 = extractvalue { i64, i64 } %1278, 1, !dbg !1790
  store i64 %1283, i64* %1282, align 8, !dbg !1790
  %1284 = load i128, i128* %166, align 16, !dbg !1790
  call void @llvm.dbg.value(metadata i128 %1284, metadata !1791, metadata !DIExpression()), !dbg !1593
  %1285 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %284, i64 %302), !dbg !1792
  %1286 = bitcast i128* %167 to { i64, i64 }*, !dbg !1792
  %1287 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1286, i32 0, i32 0, !dbg !1792
  %1288 = extractvalue { i64, i64 } %1285, 0, !dbg !1792
  store i64 %1288, i64* %1287, align 16, !dbg !1792
  %1289 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1286, i32 0, i32 1, !dbg !1792
  %1290 = extractvalue { i64, i64 } %1285, 1, !dbg !1792
  store i64 %1290, i64* %1289, align 8, !dbg !1792
  %1291 = load i128, i128* %167, align 16, !dbg !1792
  store i128 %1188, i128* %168, align 16, !dbg !1793
  %1292 = bitcast i128* %168 to { i64, i64 }*, !dbg !1793
  %1293 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1292, i32 0, i32 0, !dbg !1793
  %1294 = load i64, i64* %1293, align 16, !dbg !1793
  %1295 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1292, i32 0, i32 1, !dbg !1793
  %1296 = load i64, i64* %1295, align 8, !dbg !1793
  store i128 %1291, i128* %169, align 16, !dbg !1793
  %1297 = bitcast i128* %169 to { i64, i64 }*, !dbg !1793
  %1298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1297, i32 0, i32 0, !dbg !1793
  %1299 = load i64, i64* %1298, align 16, !dbg !1793
  %1300 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1297, i32 0, i32 1, !dbg !1793
  %1301 = load i64, i64* %1300, align 8, !dbg !1793
  %1302 = call { i64, i64 } @FStar_UInt128_add(i64 %1294, i64 %1296, i64 %1299, i64 %1301), !dbg !1793
  %1303 = bitcast i128* %170 to { i64, i64 }*, !dbg !1793
  %1304 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1303, i32 0, i32 0, !dbg !1793
  %1305 = extractvalue { i64, i64 } %1302, 0, !dbg !1793
  store i64 %1305, i64* %1304, align 16, !dbg !1793
  %1306 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1303, i32 0, i32 1, !dbg !1793
  %1307 = extractvalue { i64, i64 } %1302, 1, !dbg !1793
  store i64 %1307, i64* %1306, align 8, !dbg !1793
  %1308 = load i128, i128* %170, align 16, !dbg !1793
  call void @llvm.dbg.value(metadata i128 %1308, metadata !1794, metadata !DIExpression()), !dbg !1593
  %1309 = call { i64, i64 } @FStar_UInt128_mul_wide(i64 %284, i64 %286), !dbg !1795
  %1310 = bitcast i128* %171 to { i64, i64 }*, !dbg !1795
  %1311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1310, i32 0, i32 0, !dbg !1795
  %1312 = extractvalue { i64, i64 } %1309, 0, !dbg !1795
  store i64 %1312, i64* %1311, align 16, !dbg !1795
  %1313 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1310, i32 0, i32 1, !dbg !1795
  %1314 = extractvalue { i64, i64 } %1309, 1, !dbg !1795
  store i64 %1314, i64* %1313, align 8, !dbg !1795
  %1315 = load i128, i128* %171, align 16, !dbg !1795
  store i128 %1212, i128* %172, align 16, !dbg !1796
  %1316 = bitcast i128* %172 to { i64, i64 }*, !dbg !1796
  %1317 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1316, i32 0, i32 0, !dbg !1796
  %1318 = load i64, i64* %1317, align 16, !dbg !1796
  %1319 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1316, i32 0, i32 1, !dbg !1796
  %1320 = load i64, i64* %1319, align 8, !dbg !1796
  store i128 %1315, i128* %173, align 16, !dbg !1796
  %1321 = bitcast i128* %173 to { i64, i64 }*, !dbg !1796
  %1322 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1321, i32 0, i32 0, !dbg !1796
  %1323 = load i64, i64* %1322, align 16, !dbg !1796
  %1324 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1321, i32 0, i32 1, !dbg !1796
  %1325 = load i64, i64* %1324, align 8, !dbg !1796
  %1326 = call { i64, i64 } @FStar_UInt128_add(i64 %1318, i64 %1320, i64 %1323, i64 %1325), !dbg !1796
  %1327 = bitcast i128* %174 to { i64, i64 }*, !dbg !1796
  %1328 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1327, i32 0, i32 0, !dbg !1796
  %1329 = extractvalue { i64, i64 } %1326, 0, !dbg !1796
  store i64 %1329, i64* %1328, align 16, !dbg !1796
  %1330 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1327, i32 0, i32 1, !dbg !1796
  %1331 = extractvalue { i64, i64 } %1326, 1, !dbg !1796
  store i64 %1331, i64* %1330, align 8, !dbg !1796
  %1332 = load i128, i128* %174, align 16, !dbg !1796
  call void @llvm.dbg.value(metadata i128 %1332, metadata !1797, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %1236, metadata !1798, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %1260, metadata !1799, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %1284, metadata !1800, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %1308, metadata !1801, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i128 %1332, metadata !1802, metadata !DIExpression()), !dbg !1593
  %1333 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !1803
  %1334 = bitcast i128* %175 to { i64, i64 }*, !dbg !1803
  %1335 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1334, i32 0, i32 0, !dbg !1803
  %1336 = extractvalue { i64, i64 } %1333, 0, !dbg !1803
  store i64 %1336, i64* %1335, align 16, !dbg !1803
  %1337 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1334, i32 0, i32 1, !dbg !1803
  %1338 = extractvalue { i64, i64 } %1333, 1, !dbg !1803
  store i64 %1338, i64* %1337, align 8, !dbg !1803
  %1339 = load i128, i128* %175, align 16, !dbg !1803
  store i128 %721, i128* %176, align 16, !dbg !1804
  %1340 = bitcast i128* %176 to { i64, i64 }*, !dbg !1804
  %1341 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1340, i32 0, i32 0, !dbg !1804
  %1342 = load i64, i64* %1341, align 16, !dbg !1804
  %1343 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1340, i32 0, i32 1, !dbg !1804
  %1344 = load i64, i64* %1343, align 8, !dbg !1804
  store i128 %1339, i128* %177, align 16, !dbg !1804
  %1345 = bitcast i128* %177 to { i64, i64 }*, !dbg !1804
  %1346 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1345, i32 0, i32 0, !dbg !1804
  %1347 = load i64, i64* %1346, align 16, !dbg !1804
  %1348 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1345, i32 0, i32 1, !dbg !1804
  %1349 = load i64, i64* %1348, align 8, !dbg !1804
  %1350 = call { i64, i64 } @FStar_UInt128_add(i64 %1342, i64 %1344, i64 %1347, i64 %1349), !dbg !1804
  %1351 = bitcast i128* %178 to { i64, i64 }*, !dbg !1804
  %1352 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1351, i32 0, i32 0, !dbg !1804
  %1353 = extractvalue { i64, i64 } %1350, 0, !dbg !1804
  store i64 %1353, i64* %1352, align 16, !dbg !1804
  %1354 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1351, i32 0, i32 1, !dbg !1804
  %1355 = extractvalue { i64, i64 } %1350, 1, !dbg !1804
  store i64 %1355, i64* %1354, align 8, !dbg !1804
  %1356 = load i128, i128* %178, align 16, !dbg !1804
  call void @llvm.dbg.value(metadata i128 %1356, metadata !1805, metadata !DIExpression()), !dbg !1593
  store i128 %1356, i128* %179, align 16, !dbg !1806
  %1357 = bitcast i128* %179 to { i64, i64 }*, !dbg !1806
  %1358 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1357, i32 0, i32 0, !dbg !1806
  %1359 = load i64, i64* %1358, align 16, !dbg !1806
  %1360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1357, i32 0, i32 1, !dbg !1806
  %1361 = load i64, i64* %1360, align 8, !dbg !1806
  %1362 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1359, i64 %1361), !dbg !1806
  %1363 = and i64 %1362, 2251799813685247, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %1363, metadata !1808, metadata !DIExpression()), !dbg !1593
  store i128 %1356, i128* %180, align 16, !dbg !1809
  %1364 = bitcast i128* %180 to { i64, i64 }*, !dbg !1809
  %1365 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1364, i32 0, i32 0, !dbg !1809
  %1366 = load i64, i64* %1365, align 16, !dbg !1809
  %1367 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1364, i32 0, i32 1, !dbg !1809
  %1368 = load i64, i64* %1367, align 8, !dbg !1809
  %1369 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1366, i64 %1368, i32 51), !dbg !1809
  %1370 = bitcast i128* %181 to { i64, i64 }*, !dbg !1809
  %1371 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1370, i32 0, i32 0, !dbg !1809
  %1372 = extractvalue { i64, i64 } %1369, 0, !dbg !1809
  store i64 %1372, i64* %1371, align 16, !dbg !1809
  %1373 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1370, i32 0, i32 1, !dbg !1809
  %1374 = extractvalue { i64, i64 } %1369, 1, !dbg !1809
  store i64 %1374, i64* %1373, align 8, !dbg !1809
  %1375 = load i128, i128* %181, align 16, !dbg !1809
  store i128 %1375, i128* %182, align 16, !dbg !1810
  %1376 = bitcast i128* %182 to { i64, i64 }*, !dbg !1810
  %1377 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1376, i32 0, i32 0, !dbg !1810
  %1378 = load i64, i64* %1377, align 16, !dbg !1810
  %1379 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1376, i32 0, i32 1, !dbg !1810
  %1380 = load i64, i64* %1379, align 8, !dbg !1810
  %1381 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1378, i64 %1380), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %1381, metadata !1811, metadata !DIExpression()), !dbg !1593
  %1382 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1381), !dbg !1812
  %1383 = bitcast i128* %183 to { i64, i64 }*, !dbg !1812
  %1384 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1383, i32 0, i32 0, !dbg !1812
  %1385 = extractvalue { i64, i64 } %1382, 0, !dbg !1812
  store i64 %1385, i64* %1384, align 16, !dbg !1812
  %1386 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1383, i32 0, i32 1, !dbg !1812
  %1387 = extractvalue { i64, i64 } %1382, 1, !dbg !1812
  store i64 %1387, i64* %1386, align 8, !dbg !1812
  %1388 = load i128, i128* %183, align 16, !dbg !1812
  store i128 %745, i128* %184, align 16, !dbg !1813
  %1389 = bitcast i128* %184 to { i64, i64 }*, !dbg !1813
  %1390 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1389, i32 0, i32 0, !dbg !1813
  %1391 = load i64, i64* %1390, align 16, !dbg !1813
  %1392 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1389, i32 0, i32 1, !dbg !1813
  %1393 = load i64, i64* %1392, align 8, !dbg !1813
  store i128 %1388, i128* %185, align 16, !dbg !1813
  %1394 = bitcast i128* %185 to { i64, i64 }*, !dbg !1813
  %1395 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1394, i32 0, i32 0, !dbg !1813
  %1396 = load i64, i64* %1395, align 16, !dbg !1813
  %1397 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1394, i32 0, i32 1, !dbg !1813
  %1398 = load i64, i64* %1397, align 8, !dbg !1813
  %1399 = call { i64, i64 } @FStar_UInt128_add(i64 %1391, i64 %1393, i64 %1396, i64 %1398), !dbg !1813
  %1400 = bitcast i128* %186 to { i64, i64 }*, !dbg !1813
  %1401 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1400, i32 0, i32 0, !dbg !1813
  %1402 = extractvalue { i64, i64 } %1399, 0, !dbg !1813
  store i64 %1402, i64* %1401, align 16, !dbg !1813
  %1403 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1400, i32 0, i32 1, !dbg !1813
  %1404 = extractvalue { i64, i64 } %1399, 1, !dbg !1813
  store i64 %1404, i64* %1403, align 8, !dbg !1813
  %1405 = load i128, i128* %186, align 16, !dbg !1813
  call void @llvm.dbg.value(metadata i128 %1405, metadata !1814, metadata !DIExpression()), !dbg !1593
  store i128 %1405, i128* %187, align 16, !dbg !1815
  %1406 = bitcast i128* %187 to { i64, i64 }*, !dbg !1815
  %1407 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1406, i32 0, i32 0, !dbg !1815
  %1408 = load i64, i64* %1407, align 16, !dbg !1815
  %1409 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1406, i32 0, i32 1, !dbg !1815
  %1410 = load i64, i64* %1409, align 8, !dbg !1815
  %1411 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1408, i64 %1410), !dbg !1815
  %1412 = and i64 %1411, 2251799813685247, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %1412, metadata !1817, metadata !DIExpression()), !dbg !1593
  store i128 %1405, i128* %188, align 16, !dbg !1818
  %1413 = bitcast i128* %188 to { i64, i64 }*, !dbg !1818
  %1414 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1413, i32 0, i32 0, !dbg !1818
  %1415 = load i64, i64* %1414, align 16, !dbg !1818
  %1416 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1413, i32 0, i32 1, !dbg !1818
  %1417 = load i64, i64* %1416, align 8, !dbg !1818
  %1418 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1415, i64 %1417, i32 51), !dbg !1818
  %1419 = bitcast i128* %189 to { i64, i64 }*, !dbg !1818
  %1420 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1419, i32 0, i32 0, !dbg !1818
  %1421 = extractvalue { i64, i64 } %1418, 0, !dbg !1818
  store i64 %1421, i64* %1420, align 16, !dbg !1818
  %1422 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1419, i32 0, i32 1, !dbg !1818
  %1423 = extractvalue { i64, i64 } %1418, 1, !dbg !1818
  store i64 %1423, i64* %1422, align 8, !dbg !1818
  %1424 = load i128, i128* %189, align 16, !dbg !1818
  store i128 %1424, i128* %190, align 16, !dbg !1819
  %1425 = bitcast i128* %190 to { i64, i64 }*, !dbg !1819
  %1426 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1425, i32 0, i32 0, !dbg !1819
  %1427 = load i64, i64* %1426, align 16, !dbg !1819
  %1428 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1425, i32 0, i32 1, !dbg !1819
  %1429 = load i64, i64* %1428, align 8, !dbg !1819
  %1430 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1427, i64 %1429), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %1430, metadata !1820, metadata !DIExpression()), !dbg !1593
  %1431 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1430), !dbg !1821
  %1432 = bitcast i128* %191 to { i64, i64 }*, !dbg !1821
  %1433 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1432, i32 0, i32 0, !dbg !1821
  %1434 = extractvalue { i64, i64 } %1431, 0, !dbg !1821
  store i64 %1434, i64* %1433, align 16, !dbg !1821
  %1435 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1432, i32 0, i32 1, !dbg !1821
  %1436 = extractvalue { i64, i64 } %1431, 1, !dbg !1821
  store i64 %1436, i64* %1435, align 8, !dbg !1821
  %1437 = load i128, i128* %191, align 16, !dbg !1821
  store i128 %769, i128* %192, align 16, !dbg !1822
  %1438 = bitcast i128* %192 to { i64, i64 }*, !dbg !1822
  %1439 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1438, i32 0, i32 0, !dbg !1822
  %1440 = load i64, i64* %1439, align 16, !dbg !1822
  %1441 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1438, i32 0, i32 1, !dbg !1822
  %1442 = load i64, i64* %1441, align 8, !dbg !1822
  store i128 %1437, i128* %193, align 16, !dbg !1822
  %1443 = bitcast i128* %193 to { i64, i64 }*, !dbg !1822
  %1444 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1443, i32 0, i32 0, !dbg !1822
  %1445 = load i64, i64* %1444, align 16, !dbg !1822
  %1446 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1443, i32 0, i32 1, !dbg !1822
  %1447 = load i64, i64* %1446, align 8, !dbg !1822
  %1448 = call { i64, i64 } @FStar_UInt128_add(i64 %1440, i64 %1442, i64 %1445, i64 %1447), !dbg !1822
  %1449 = bitcast i128* %194 to { i64, i64 }*, !dbg !1822
  %1450 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1449, i32 0, i32 0, !dbg !1822
  %1451 = extractvalue { i64, i64 } %1448, 0, !dbg !1822
  store i64 %1451, i64* %1450, align 16, !dbg !1822
  %1452 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1449, i32 0, i32 1, !dbg !1822
  %1453 = extractvalue { i64, i64 } %1448, 1, !dbg !1822
  store i64 %1453, i64* %1452, align 8, !dbg !1822
  %1454 = load i128, i128* %194, align 16, !dbg !1822
  call void @llvm.dbg.value(metadata i128 %1454, metadata !1823, metadata !DIExpression()), !dbg !1593
  store i128 %1454, i128* %195, align 16, !dbg !1824
  %1455 = bitcast i128* %195 to { i64, i64 }*, !dbg !1824
  %1456 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1455, i32 0, i32 0, !dbg !1824
  %1457 = load i64, i64* %1456, align 16, !dbg !1824
  %1458 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1455, i32 0, i32 1, !dbg !1824
  %1459 = load i64, i64* %1458, align 8, !dbg !1824
  %1460 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1457, i64 %1459), !dbg !1824
  %1461 = and i64 %1460, 2251799813685247, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %1461, metadata !1826, metadata !DIExpression()), !dbg !1593
  store i128 %1454, i128* %196, align 16, !dbg !1827
  %1462 = bitcast i128* %196 to { i64, i64 }*, !dbg !1827
  %1463 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1462, i32 0, i32 0, !dbg !1827
  %1464 = load i64, i64* %1463, align 16, !dbg !1827
  %1465 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1462, i32 0, i32 1, !dbg !1827
  %1466 = load i64, i64* %1465, align 8, !dbg !1827
  %1467 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1464, i64 %1466, i32 51), !dbg !1827
  %1468 = bitcast i128* %197 to { i64, i64 }*, !dbg !1827
  %1469 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1468, i32 0, i32 0, !dbg !1827
  %1470 = extractvalue { i64, i64 } %1467, 0, !dbg !1827
  store i64 %1470, i64* %1469, align 16, !dbg !1827
  %1471 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1468, i32 0, i32 1, !dbg !1827
  %1472 = extractvalue { i64, i64 } %1467, 1, !dbg !1827
  store i64 %1472, i64* %1471, align 8, !dbg !1827
  %1473 = load i128, i128* %197, align 16, !dbg !1827
  store i128 %1473, i128* %198, align 16, !dbg !1828
  %1474 = bitcast i128* %198 to { i64, i64 }*, !dbg !1828
  %1475 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1474, i32 0, i32 0, !dbg !1828
  %1476 = load i64, i64* %1475, align 16, !dbg !1828
  %1477 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1474, i32 0, i32 1, !dbg !1828
  %1478 = load i64, i64* %1477, align 8, !dbg !1828
  %1479 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1476, i64 %1478), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %1479, metadata !1829, metadata !DIExpression()), !dbg !1593
  %1480 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1479), !dbg !1830
  %1481 = bitcast i128* %199 to { i64, i64 }*, !dbg !1830
  %1482 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1481, i32 0, i32 0, !dbg !1830
  %1483 = extractvalue { i64, i64 } %1480, 0, !dbg !1830
  store i64 %1483, i64* %1482, align 16, !dbg !1830
  %1484 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1481, i32 0, i32 1, !dbg !1830
  %1485 = extractvalue { i64, i64 } %1480, 1, !dbg !1830
  store i64 %1485, i64* %1484, align 8, !dbg !1830
  %1486 = load i128, i128* %199, align 16, !dbg !1830
  store i128 %793, i128* %200, align 16, !dbg !1831
  %1487 = bitcast i128* %200 to { i64, i64 }*, !dbg !1831
  %1488 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1487, i32 0, i32 0, !dbg !1831
  %1489 = load i64, i64* %1488, align 16, !dbg !1831
  %1490 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1487, i32 0, i32 1, !dbg !1831
  %1491 = load i64, i64* %1490, align 8, !dbg !1831
  store i128 %1486, i128* %201, align 16, !dbg !1831
  %1492 = bitcast i128* %201 to { i64, i64 }*, !dbg !1831
  %1493 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1492, i32 0, i32 0, !dbg !1831
  %1494 = load i64, i64* %1493, align 16, !dbg !1831
  %1495 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1492, i32 0, i32 1, !dbg !1831
  %1496 = load i64, i64* %1495, align 8, !dbg !1831
  %1497 = call { i64, i64 } @FStar_UInt128_add(i64 %1489, i64 %1491, i64 %1494, i64 %1496), !dbg !1831
  %1498 = bitcast i128* %202 to { i64, i64 }*, !dbg !1831
  %1499 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1498, i32 0, i32 0, !dbg !1831
  %1500 = extractvalue { i64, i64 } %1497, 0, !dbg !1831
  store i64 %1500, i64* %1499, align 16, !dbg !1831
  %1501 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1498, i32 0, i32 1, !dbg !1831
  %1502 = extractvalue { i64, i64 } %1497, 1, !dbg !1831
  store i64 %1502, i64* %1501, align 8, !dbg !1831
  %1503 = load i128, i128* %202, align 16, !dbg !1831
  call void @llvm.dbg.value(metadata i128 %1503, metadata !1832, metadata !DIExpression()), !dbg !1593
  store i128 %1503, i128* %203, align 16, !dbg !1833
  %1504 = bitcast i128* %203 to { i64, i64 }*, !dbg !1833
  %1505 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1504, i32 0, i32 0, !dbg !1833
  %1506 = load i64, i64* %1505, align 16, !dbg !1833
  %1507 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1504, i32 0, i32 1, !dbg !1833
  %1508 = load i64, i64* %1507, align 8, !dbg !1833
  %1509 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1506, i64 %1508), !dbg !1833
  %1510 = and i64 %1509, 2251799813685247, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %1510, metadata !1835, metadata !DIExpression()), !dbg !1593
  store i128 %1503, i128* %204, align 16, !dbg !1836
  %1511 = bitcast i128* %204 to { i64, i64 }*, !dbg !1836
  %1512 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1511, i32 0, i32 0, !dbg !1836
  %1513 = load i64, i64* %1512, align 16, !dbg !1836
  %1514 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1511, i32 0, i32 1, !dbg !1836
  %1515 = load i64, i64* %1514, align 8, !dbg !1836
  %1516 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1513, i64 %1515, i32 51), !dbg !1836
  %1517 = bitcast i128* %205 to { i64, i64 }*, !dbg !1836
  %1518 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1517, i32 0, i32 0, !dbg !1836
  %1519 = extractvalue { i64, i64 } %1516, 0, !dbg !1836
  store i64 %1519, i64* %1518, align 16, !dbg !1836
  %1520 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1517, i32 0, i32 1, !dbg !1836
  %1521 = extractvalue { i64, i64 } %1516, 1, !dbg !1836
  store i64 %1521, i64* %1520, align 8, !dbg !1836
  %1522 = load i128, i128* %205, align 16, !dbg !1836
  store i128 %1522, i128* %206, align 16, !dbg !1837
  %1523 = bitcast i128* %206 to { i64, i64 }*, !dbg !1837
  %1524 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1523, i32 0, i32 0, !dbg !1837
  %1525 = load i64, i64* %1524, align 16, !dbg !1837
  %1526 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1523, i32 0, i32 1, !dbg !1837
  %1527 = load i64, i64* %1526, align 8, !dbg !1837
  %1528 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1525, i64 %1527), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %1528, metadata !1838, metadata !DIExpression()), !dbg !1593
  %1529 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1528), !dbg !1839
  %1530 = bitcast i128* %207 to { i64, i64 }*, !dbg !1839
  %1531 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1530, i32 0, i32 0, !dbg !1839
  %1532 = extractvalue { i64, i64 } %1529, 0, !dbg !1839
  store i64 %1532, i64* %1531, align 16, !dbg !1839
  %1533 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1530, i32 0, i32 1, !dbg !1839
  %1534 = extractvalue { i64, i64 } %1529, 1, !dbg !1839
  store i64 %1534, i64* %1533, align 8, !dbg !1839
  %1535 = load i128, i128* %207, align 16, !dbg !1839
  store i128 %817, i128* %208, align 16, !dbg !1840
  %1536 = bitcast i128* %208 to { i64, i64 }*, !dbg !1840
  %1537 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1536, i32 0, i32 0, !dbg !1840
  %1538 = load i64, i64* %1537, align 16, !dbg !1840
  %1539 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1536, i32 0, i32 1, !dbg !1840
  %1540 = load i64, i64* %1539, align 8, !dbg !1840
  store i128 %1535, i128* %209, align 16, !dbg !1840
  %1541 = bitcast i128* %209 to { i64, i64 }*, !dbg !1840
  %1542 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1541, i32 0, i32 0, !dbg !1840
  %1543 = load i64, i64* %1542, align 16, !dbg !1840
  %1544 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1541, i32 0, i32 1, !dbg !1840
  %1545 = load i64, i64* %1544, align 8, !dbg !1840
  %1546 = call { i64, i64 } @FStar_UInt128_add(i64 %1538, i64 %1540, i64 %1543, i64 %1545), !dbg !1840
  %1547 = bitcast i128* %210 to { i64, i64 }*, !dbg !1840
  %1548 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1547, i32 0, i32 0, !dbg !1840
  %1549 = extractvalue { i64, i64 } %1546, 0, !dbg !1840
  store i64 %1549, i64* %1548, align 16, !dbg !1840
  %1550 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1547, i32 0, i32 1, !dbg !1840
  %1551 = extractvalue { i64, i64 } %1546, 1, !dbg !1840
  store i64 %1551, i64* %1550, align 8, !dbg !1840
  %1552 = load i128, i128* %210, align 16, !dbg !1840
  call void @llvm.dbg.value(metadata i128 %1552, metadata !1841, metadata !DIExpression()), !dbg !1593
  store i128 %1552, i128* %211, align 16, !dbg !1842
  %1553 = bitcast i128* %211 to { i64, i64 }*, !dbg !1842
  %1554 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1553, i32 0, i32 0, !dbg !1842
  %1555 = load i64, i64* %1554, align 16, !dbg !1842
  %1556 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1553, i32 0, i32 1, !dbg !1842
  %1557 = load i64, i64* %1556, align 8, !dbg !1842
  %1558 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1555, i64 %1557), !dbg !1842
  %1559 = and i64 %1558, 2251799813685247, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %1559, metadata !1844, metadata !DIExpression()), !dbg !1593
  store i128 %1552, i128* %212, align 16, !dbg !1845
  %1560 = bitcast i128* %212 to { i64, i64 }*, !dbg !1845
  %1561 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1560, i32 0, i32 0, !dbg !1845
  %1562 = load i64, i64* %1561, align 16, !dbg !1845
  %1563 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1560, i32 0, i32 1, !dbg !1845
  %1564 = load i64, i64* %1563, align 8, !dbg !1845
  %1565 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1562, i64 %1564, i32 51), !dbg !1845
  %1566 = bitcast i128* %213 to { i64, i64 }*, !dbg !1845
  %1567 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1566, i32 0, i32 0, !dbg !1845
  %1568 = extractvalue { i64, i64 } %1565, 0, !dbg !1845
  store i64 %1568, i64* %1567, align 16, !dbg !1845
  %1569 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1566, i32 0, i32 1, !dbg !1845
  %1570 = extractvalue { i64, i64 } %1565, 1, !dbg !1845
  store i64 %1570, i64* %1569, align 8, !dbg !1845
  %1571 = load i128, i128* %213, align 16, !dbg !1845
  store i128 %1571, i128* %214, align 16, !dbg !1846
  %1572 = bitcast i128* %214 to { i64, i64 }*, !dbg !1846
  %1573 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1572, i32 0, i32 0, !dbg !1846
  %1574 = load i64, i64* %1573, align 16, !dbg !1846
  %1575 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1572, i32 0, i32 1, !dbg !1846
  %1576 = load i64, i64* %1575, align 8, !dbg !1846
  %1577 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1574, i64 %1576), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %1577, metadata !1847, metadata !DIExpression()), !dbg !1593
  %1578 = mul i64 %1577, 19, !dbg !1848
  %1579 = add i64 %1363, %1578, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %1579, metadata !1850, metadata !DIExpression()), !dbg !1593
  %1580 = and i64 %1579, 2251799813685247, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %1580, metadata !1852, metadata !DIExpression()), !dbg !1593
  %1581 = lshr i64 %1579, 51, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %1581, metadata !1854, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1580, metadata !1855, metadata !DIExpression()), !dbg !1593
  %1582 = add i64 %1412, %1581, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %1582, metadata !1857, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1461, metadata !1858, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1510, metadata !1859, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1559, metadata !1860, metadata !DIExpression()), !dbg !1593
  %1583 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 0), !dbg !1861
  %1584 = bitcast i128* %215 to { i64, i64 }*, !dbg !1861
  %1585 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1584, i32 0, i32 0, !dbg !1861
  %1586 = extractvalue { i64, i64 } %1583, 0, !dbg !1861
  store i64 %1586, i64* %1585, align 16, !dbg !1861
  %1587 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1584, i32 0, i32 1, !dbg !1861
  %1588 = extractvalue { i64, i64 } %1583, 1, !dbg !1861
  store i64 %1588, i64* %1587, align 8, !dbg !1861
  %1589 = load i128, i128* %215, align 16, !dbg !1861
  store i128 %1236, i128* %216, align 16, !dbg !1862
  %1590 = bitcast i128* %216 to { i64, i64 }*, !dbg !1862
  %1591 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1590, i32 0, i32 0, !dbg !1862
  %1592 = load i64, i64* %1591, align 16, !dbg !1862
  %1593 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1590, i32 0, i32 1, !dbg !1862
  %1594 = load i64, i64* %1593, align 8, !dbg !1862
  store i128 %1589, i128* %217, align 16, !dbg !1862
  %1595 = bitcast i128* %217 to { i64, i64 }*, !dbg !1862
  %1596 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1595, i32 0, i32 0, !dbg !1862
  %1597 = load i64, i64* %1596, align 16, !dbg !1862
  %1598 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1595, i32 0, i32 1, !dbg !1862
  %1599 = load i64, i64* %1598, align 8, !dbg !1862
  %1600 = call { i64, i64 } @FStar_UInt128_add(i64 %1592, i64 %1594, i64 %1597, i64 %1599), !dbg !1862
  %1601 = bitcast i128* %218 to { i64, i64 }*, !dbg !1862
  %1602 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1601, i32 0, i32 0, !dbg !1862
  %1603 = extractvalue { i64, i64 } %1600, 0, !dbg !1862
  store i64 %1603, i64* %1602, align 16, !dbg !1862
  %1604 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1601, i32 0, i32 1, !dbg !1862
  %1605 = extractvalue { i64, i64 } %1600, 1, !dbg !1862
  store i64 %1605, i64* %1604, align 8, !dbg !1862
  %1606 = load i128, i128* %218, align 16, !dbg !1862
  call void @llvm.dbg.value(metadata i128 %1606, metadata !1863, metadata !DIExpression()), !dbg !1593
  store i128 %1606, i128* %219, align 16, !dbg !1864
  %1607 = bitcast i128* %219 to { i64, i64 }*, !dbg !1864
  %1608 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1607, i32 0, i32 0, !dbg !1864
  %1609 = load i64, i64* %1608, align 16, !dbg !1864
  %1610 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1607, i32 0, i32 1, !dbg !1864
  %1611 = load i64, i64* %1610, align 8, !dbg !1864
  %1612 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1609, i64 %1611), !dbg !1864
  %1613 = and i64 %1612, 2251799813685247, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %1613, metadata !1866, metadata !DIExpression()), !dbg !1593
  store i128 %1606, i128* %220, align 16, !dbg !1867
  %1614 = bitcast i128* %220 to { i64, i64 }*, !dbg !1867
  %1615 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1614, i32 0, i32 0, !dbg !1867
  %1616 = load i64, i64* %1615, align 16, !dbg !1867
  %1617 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1614, i32 0, i32 1, !dbg !1867
  %1618 = load i64, i64* %1617, align 8, !dbg !1867
  %1619 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1616, i64 %1618, i32 51), !dbg !1867
  %1620 = bitcast i128* %221 to { i64, i64 }*, !dbg !1867
  %1621 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1620, i32 0, i32 0, !dbg !1867
  %1622 = extractvalue { i64, i64 } %1619, 0, !dbg !1867
  store i64 %1622, i64* %1621, align 16, !dbg !1867
  %1623 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1620, i32 0, i32 1, !dbg !1867
  %1624 = extractvalue { i64, i64 } %1619, 1, !dbg !1867
  store i64 %1624, i64* %1623, align 8, !dbg !1867
  %1625 = load i128, i128* %221, align 16, !dbg !1867
  store i128 %1625, i128* %222, align 16, !dbg !1868
  %1626 = bitcast i128* %222 to { i64, i64 }*, !dbg !1868
  %1627 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1626, i32 0, i32 0, !dbg !1868
  %1628 = load i64, i64* %1627, align 16, !dbg !1868
  %1629 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1626, i32 0, i32 1, !dbg !1868
  %1630 = load i64, i64* %1629, align 8, !dbg !1868
  %1631 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1628, i64 %1630), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %1631, metadata !1869, metadata !DIExpression()), !dbg !1593
  %1632 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1631), !dbg !1870
  %1633 = bitcast i128* %223 to { i64, i64 }*, !dbg !1870
  %1634 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1633, i32 0, i32 0, !dbg !1870
  %1635 = extractvalue { i64, i64 } %1632, 0, !dbg !1870
  store i64 %1635, i64* %1634, align 16, !dbg !1870
  %1636 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1633, i32 0, i32 1, !dbg !1870
  %1637 = extractvalue { i64, i64 } %1632, 1, !dbg !1870
  store i64 %1637, i64* %1636, align 8, !dbg !1870
  %1638 = load i128, i128* %223, align 16, !dbg !1870
  store i128 %1260, i128* %224, align 16, !dbg !1871
  %1639 = bitcast i128* %224 to { i64, i64 }*, !dbg !1871
  %1640 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1639, i32 0, i32 0, !dbg !1871
  %1641 = load i64, i64* %1640, align 16, !dbg !1871
  %1642 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1639, i32 0, i32 1, !dbg !1871
  %1643 = load i64, i64* %1642, align 8, !dbg !1871
  store i128 %1638, i128* %225, align 16, !dbg !1871
  %1644 = bitcast i128* %225 to { i64, i64 }*, !dbg !1871
  %1645 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1644, i32 0, i32 0, !dbg !1871
  %1646 = load i64, i64* %1645, align 16, !dbg !1871
  %1647 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1644, i32 0, i32 1, !dbg !1871
  %1648 = load i64, i64* %1647, align 8, !dbg !1871
  %1649 = call { i64, i64 } @FStar_UInt128_add(i64 %1641, i64 %1643, i64 %1646, i64 %1648), !dbg !1871
  %1650 = bitcast i128* %226 to { i64, i64 }*, !dbg !1871
  %1651 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1650, i32 0, i32 0, !dbg !1871
  %1652 = extractvalue { i64, i64 } %1649, 0, !dbg !1871
  store i64 %1652, i64* %1651, align 16, !dbg !1871
  %1653 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1650, i32 0, i32 1, !dbg !1871
  %1654 = extractvalue { i64, i64 } %1649, 1, !dbg !1871
  store i64 %1654, i64* %1653, align 8, !dbg !1871
  %1655 = load i128, i128* %226, align 16, !dbg !1871
  call void @llvm.dbg.value(metadata i128 %1655, metadata !1872, metadata !DIExpression()), !dbg !1593
  store i128 %1655, i128* %227, align 16, !dbg !1873
  %1656 = bitcast i128* %227 to { i64, i64 }*, !dbg !1873
  %1657 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1656, i32 0, i32 0, !dbg !1873
  %1658 = load i64, i64* %1657, align 16, !dbg !1873
  %1659 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1656, i32 0, i32 1, !dbg !1873
  %1660 = load i64, i64* %1659, align 8, !dbg !1873
  %1661 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1658, i64 %1660), !dbg !1873
  %1662 = and i64 %1661, 2251799813685247, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %1662, metadata !1875, metadata !DIExpression()), !dbg !1593
  store i128 %1655, i128* %228, align 16, !dbg !1876
  %1663 = bitcast i128* %228 to { i64, i64 }*, !dbg !1876
  %1664 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1663, i32 0, i32 0, !dbg !1876
  %1665 = load i64, i64* %1664, align 16, !dbg !1876
  %1666 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1663, i32 0, i32 1, !dbg !1876
  %1667 = load i64, i64* %1666, align 8, !dbg !1876
  %1668 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1665, i64 %1667, i32 51), !dbg !1876
  %1669 = bitcast i128* %229 to { i64, i64 }*, !dbg !1876
  %1670 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1669, i32 0, i32 0, !dbg !1876
  %1671 = extractvalue { i64, i64 } %1668, 0, !dbg !1876
  store i64 %1671, i64* %1670, align 16, !dbg !1876
  %1672 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1669, i32 0, i32 1, !dbg !1876
  %1673 = extractvalue { i64, i64 } %1668, 1, !dbg !1876
  store i64 %1673, i64* %1672, align 8, !dbg !1876
  %1674 = load i128, i128* %229, align 16, !dbg !1876
  store i128 %1674, i128* %230, align 16, !dbg !1877
  %1675 = bitcast i128* %230 to { i64, i64 }*, !dbg !1877
  %1676 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1675, i32 0, i32 0, !dbg !1877
  %1677 = load i64, i64* %1676, align 16, !dbg !1877
  %1678 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1675, i32 0, i32 1, !dbg !1877
  %1679 = load i64, i64* %1678, align 8, !dbg !1877
  %1680 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1677, i64 %1679), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %1680, metadata !1878, metadata !DIExpression()), !dbg !1593
  %1681 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1680), !dbg !1879
  %1682 = bitcast i128* %231 to { i64, i64 }*, !dbg !1879
  %1683 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1682, i32 0, i32 0, !dbg !1879
  %1684 = extractvalue { i64, i64 } %1681, 0, !dbg !1879
  store i64 %1684, i64* %1683, align 16, !dbg !1879
  %1685 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1682, i32 0, i32 1, !dbg !1879
  %1686 = extractvalue { i64, i64 } %1681, 1, !dbg !1879
  store i64 %1686, i64* %1685, align 8, !dbg !1879
  %1687 = load i128, i128* %231, align 16, !dbg !1879
  store i128 %1284, i128* %232, align 16, !dbg !1880
  %1688 = bitcast i128* %232 to { i64, i64 }*, !dbg !1880
  %1689 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1688, i32 0, i32 0, !dbg !1880
  %1690 = load i64, i64* %1689, align 16, !dbg !1880
  %1691 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1688, i32 0, i32 1, !dbg !1880
  %1692 = load i64, i64* %1691, align 8, !dbg !1880
  store i128 %1687, i128* %233, align 16, !dbg !1880
  %1693 = bitcast i128* %233 to { i64, i64 }*, !dbg !1880
  %1694 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1693, i32 0, i32 0, !dbg !1880
  %1695 = load i64, i64* %1694, align 16, !dbg !1880
  %1696 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1693, i32 0, i32 1, !dbg !1880
  %1697 = load i64, i64* %1696, align 8, !dbg !1880
  %1698 = call { i64, i64 } @FStar_UInt128_add(i64 %1690, i64 %1692, i64 %1695, i64 %1697), !dbg !1880
  %1699 = bitcast i128* %234 to { i64, i64 }*, !dbg !1880
  %1700 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1699, i32 0, i32 0, !dbg !1880
  %1701 = extractvalue { i64, i64 } %1698, 0, !dbg !1880
  store i64 %1701, i64* %1700, align 16, !dbg !1880
  %1702 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1699, i32 0, i32 1, !dbg !1880
  %1703 = extractvalue { i64, i64 } %1698, 1, !dbg !1880
  store i64 %1703, i64* %1702, align 8, !dbg !1880
  %1704 = load i128, i128* %234, align 16, !dbg !1880
  call void @llvm.dbg.value(metadata i128 %1704, metadata !1881, metadata !DIExpression()), !dbg !1593
  store i128 %1704, i128* %235, align 16, !dbg !1882
  %1705 = bitcast i128* %235 to { i64, i64 }*, !dbg !1882
  %1706 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1705, i32 0, i32 0, !dbg !1882
  %1707 = load i64, i64* %1706, align 16, !dbg !1882
  %1708 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1705, i32 0, i32 1, !dbg !1882
  %1709 = load i64, i64* %1708, align 8, !dbg !1882
  %1710 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1707, i64 %1709), !dbg !1882
  %1711 = and i64 %1710, 2251799813685247, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %1711, metadata !1884, metadata !DIExpression()), !dbg !1593
  store i128 %1704, i128* %236, align 16, !dbg !1885
  %1712 = bitcast i128* %236 to { i64, i64 }*, !dbg !1885
  %1713 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1712, i32 0, i32 0, !dbg !1885
  %1714 = load i64, i64* %1713, align 16, !dbg !1885
  %1715 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1712, i32 0, i32 1, !dbg !1885
  %1716 = load i64, i64* %1715, align 8, !dbg !1885
  %1717 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1714, i64 %1716, i32 51), !dbg !1885
  %1718 = bitcast i128* %237 to { i64, i64 }*, !dbg !1885
  %1719 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1718, i32 0, i32 0, !dbg !1885
  %1720 = extractvalue { i64, i64 } %1717, 0, !dbg !1885
  store i64 %1720, i64* %1719, align 16, !dbg !1885
  %1721 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1718, i32 0, i32 1, !dbg !1885
  %1722 = extractvalue { i64, i64 } %1717, 1, !dbg !1885
  store i64 %1722, i64* %1721, align 8, !dbg !1885
  %1723 = load i128, i128* %237, align 16, !dbg !1885
  store i128 %1723, i128* %238, align 16, !dbg !1886
  %1724 = bitcast i128* %238 to { i64, i64 }*, !dbg !1886
  %1725 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1724, i32 0, i32 0, !dbg !1886
  %1726 = load i64, i64* %1725, align 16, !dbg !1886
  %1727 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1724, i32 0, i32 1, !dbg !1886
  %1728 = load i64, i64* %1727, align 8, !dbg !1886
  %1729 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1726, i64 %1728), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %1729, metadata !1887, metadata !DIExpression()), !dbg !1593
  %1730 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1729), !dbg !1888
  %1731 = bitcast i128* %239 to { i64, i64 }*, !dbg !1888
  %1732 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1731, i32 0, i32 0, !dbg !1888
  %1733 = extractvalue { i64, i64 } %1730, 0, !dbg !1888
  store i64 %1733, i64* %1732, align 16, !dbg !1888
  %1734 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1731, i32 0, i32 1, !dbg !1888
  %1735 = extractvalue { i64, i64 } %1730, 1, !dbg !1888
  store i64 %1735, i64* %1734, align 8, !dbg !1888
  %1736 = load i128, i128* %239, align 16, !dbg !1888
  store i128 %1308, i128* %240, align 16, !dbg !1889
  %1737 = bitcast i128* %240 to { i64, i64 }*, !dbg !1889
  %1738 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1737, i32 0, i32 0, !dbg !1889
  %1739 = load i64, i64* %1738, align 16, !dbg !1889
  %1740 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1737, i32 0, i32 1, !dbg !1889
  %1741 = load i64, i64* %1740, align 8, !dbg !1889
  store i128 %1736, i128* %241, align 16, !dbg !1889
  %1742 = bitcast i128* %241 to { i64, i64 }*, !dbg !1889
  %1743 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1742, i32 0, i32 0, !dbg !1889
  %1744 = load i64, i64* %1743, align 16, !dbg !1889
  %1745 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1742, i32 0, i32 1, !dbg !1889
  %1746 = load i64, i64* %1745, align 8, !dbg !1889
  %1747 = call { i64, i64 } @FStar_UInt128_add(i64 %1739, i64 %1741, i64 %1744, i64 %1746), !dbg !1889
  %1748 = bitcast i128* %242 to { i64, i64 }*, !dbg !1889
  %1749 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1748, i32 0, i32 0, !dbg !1889
  %1750 = extractvalue { i64, i64 } %1747, 0, !dbg !1889
  store i64 %1750, i64* %1749, align 16, !dbg !1889
  %1751 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1748, i32 0, i32 1, !dbg !1889
  %1752 = extractvalue { i64, i64 } %1747, 1, !dbg !1889
  store i64 %1752, i64* %1751, align 8, !dbg !1889
  %1753 = load i128, i128* %242, align 16, !dbg !1889
  call void @llvm.dbg.value(metadata i128 %1753, metadata !1890, metadata !DIExpression()), !dbg !1593
  store i128 %1753, i128* %243, align 16, !dbg !1891
  %1754 = bitcast i128* %243 to { i64, i64 }*, !dbg !1891
  %1755 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1754, i32 0, i32 0, !dbg !1891
  %1756 = load i64, i64* %1755, align 16, !dbg !1891
  %1757 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1754, i32 0, i32 1, !dbg !1891
  %1758 = load i64, i64* %1757, align 8, !dbg !1891
  %1759 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1756, i64 %1758), !dbg !1891
  %1760 = and i64 %1759, 2251799813685247, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %1760, metadata !1893, metadata !DIExpression()), !dbg !1593
  store i128 %1753, i128* %244, align 16, !dbg !1894
  %1761 = bitcast i128* %244 to { i64, i64 }*, !dbg !1894
  %1762 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1761, i32 0, i32 0, !dbg !1894
  %1763 = load i64, i64* %1762, align 16, !dbg !1894
  %1764 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1761, i32 0, i32 1, !dbg !1894
  %1765 = load i64, i64* %1764, align 8, !dbg !1894
  %1766 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1763, i64 %1765, i32 51), !dbg !1894
  %1767 = bitcast i128* %245 to { i64, i64 }*, !dbg !1894
  %1768 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1767, i32 0, i32 0, !dbg !1894
  %1769 = extractvalue { i64, i64 } %1766, 0, !dbg !1894
  store i64 %1769, i64* %1768, align 16, !dbg !1894
  %1770 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1767, i32 0, i32 1, !dbg !1894
  %1771 = extractvalue { i64, i64 } %1766, 1, !dbg !1894
  store i64 %1771, i64* %1770, align 8, !dbg !1894
  %1772 = load i128, i128* %245, align 16, !dbg !1894
  store i128 %1772, i128* %246, align 16, !dbg !1895
  %1773 = bitcast i128* %246 to { i64, i64 }*, !dbg !1895
  %1774 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1773, i32 0, i32 0, !dbg !1895
  %1775 = load i64, i64* %1774, align 16, !dbg !1895
  %1776 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1773, i32 0, i32 1, !dbg !1895
  %1777 = load i64, i64* %1776, align 8, !dbg !1895
  %1778 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1775, i64 %1777), !dbg !1895
  call void @llvm.dbg.value(metadata i64 %1778, metadata !1896, metadata !DIExpression()), !dbg !1593
  %1779 = call { i64, i64 } @FStar_UInt128_uint64_to_uint128(i64 %1778), !dbg !1897
  %1780 = bitcast i128* %247 to { i64, i64 }*, !dbg !1897
  %1781 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1780, i32 0, i32 0, !dbg !1897
  %1782 = extractvalue { i64, i64 } %1779, 0, !dbg !1897
  store i64 %1782, i64* %1781, align 16, !dbg !1897
  %1783 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1780, i32 0, i32 1, !dbg !1897
  %1784 = extractvalue { i64, i64 } %1779, 1, !dbg !1897
  store i64 %1784, i64* %1783, align 8, !dbg !1897
  %1785 = load i128, i128* %247, align 16, !dbg !1897
  store i128 %1332, i128* %248, align 16, !dbg !1898
  %1786 = bitcast i128* %248 to { i64, i64 }*, !dbg !1898
  %1787 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1786, i32 0, i32 0, !dbg !1898
  %1788 = load i64, i64* %1787, align 16, !dbg !1898
  %1789 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1786, i32 0, i32 1, !dbg !1898
  %1790 = load i64, i64* %1789, align 8, !dbg !1898
  store i128 %1785, i128* %249, align 16, !dbg !1898
  %1791 = bitcast i128* %249 to { i64, i64 }*, !dbg !1898
  %1792 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1791, i32 0, i32 0, !dbg !1898
  %1793 = load i64, i64* %1792, align 16, !dbg !1898
  %1794 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1791, i32 0, i32 1, !dbg !1898
  %1795 = load i64, i64* %1794, align 8, !dbg !1898
  %1796 = call { i64, i64 } @FStar_UInt128_add(i64 %1788, i64 %1790, i64 %1793, i64 %1795), !dbg !1898
  %1797 = bitcast i128* %250 to { i64, i64 }*, !dbg !1898
  %1798 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1797, i32 0, i32 0, !dbg !1898
  %1799 = extractvalue { i64, i64 } %1796, 0, !dbg !1898
  store i64 %1799, i64* %1798, align 16, !dbg !1898
  %1800 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1797, i32 0, i32 1, !dbg !1898
  %1801 = extractvalue { i64, i64 } %1796, 1, !dbg !1898
  store i64 %1801, i64* %1800, align 8, !dbg !1898
  %1802 = load i128, i128* %250, align 16, !dbg !1898
  call void @llvm.dbg.value(metadata i128 %1802, metadata !1899, metadata !DIExpression()), !dbg !1593
  store i128 %1802, i128* %251, align 16, !dbg !1900
  %1803 = bitcast i128* %251 to { i64, i64 }*, !dbg !1900
  %1804 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1803, i32 0, i32 0, !dbg !1900
  %1805 = load i64, i64* %1804, align 16, !dbg !1900
  %1806 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1803, i32 0, i32 1, !dbg !1900
  %1807 = load i64, i64* %1806, align 8, !dbg !1900
  %1808 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1805, i64 %1807), !dbg !1900
  %1809 = and i64 %1808, 2251799813685247, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %1809, metadata !1902, metadata !DIExpression()), !dbg !1593
  store i128 %1802, i128* %252, align 16, !dbg !1903
  %1810 = bitcast i128* %252 to { i64, i64 }*, !dbg !1903
  %1811 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1810, i32 0, i32 0, !dbg !1903
  %1812 = load i64, i64* %1811, align 16, !dbg !1903
  %1813 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1810, i32 0, i32 1, !dbg !1903
  %1814 = load i64, i64* %1813, align 8, !dbg !1903
  %1815 = call { i64, i64 } @FStar_UInt128_shift_right(i64 %1812, i64 %1814, i32 51), !dbg !1903
  %1816 = bitcast i128* %253 to { i64, i64 }*, !dbg !1903
  %1817 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1816, i32 0, i32 0, !dbg !1903
  %1818 = extractvalue { i64, i64 } %1815, 0, !dbg !1903
  store i64 %1818, i64* %1817, align 16, !dbg !1903
  %1819 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1816, i32 0, i32 1, !dbg !1903
  %1820 = extractvalue { i64, i64 } %1815, 1, !dbg !1903
  store i64 %1820, i64* %1819, align 8, !dbg !1903
  %1821 = load i128, i128* %253, align 16, !dbg !1903
  store i128 %1821, i128* %254, align 16, !dbg !1904
  %1822 = bitcast i128* %254 to { i64, i64 }*, !dbg !1904
  %1823 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1822, i32 0, i32 0, !dbg !1904
  %1824 = load i64, i64* %1823, align 16, !dbg !1904
  %1825 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1822, i32 0, i32 1, !dbg !1904
  %1826 = load i64, i64* %1825, align 8, !dbg !1904
  %1827 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %1824, i64 %1826), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %1827, metadata !1905, metadata !DIExpression()), !dbg !1593
  %1828 = mul i64 %1827, 19, !dbg !1906
  %1829 = add i64 %1613, %1828, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %1829, metadata !1908, metadata !DIExpression()), !dbg !1593
  %1830 = and i64 %1829, 2251799813685247, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %1830, metadata !1910, metadata !DIExpression()), !dbg !1593
  %1831 = lshr i64 %1829, 51, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %1831, metadata !1912, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1830, metadata !1913, metadata !DIExpression()), !dbg !1593
  %1832 = add i64 %1662, %1831, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %1832, metadata !1915, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1711, metadata !1916, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1760, metadata !1917, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1809, metadata !1918, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1580, metadata !1919, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1582, metadata !1920, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1461, metadata !1921, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1510, metadata !1922, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1559, metadata !1923, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1830, metadata !1924, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1832, metadata !1925, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1711, metadata !1926, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1760, metadata !1927, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %1809, metadata !1928, metadata !DIExpression()), !dbg !1593
  %1833 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1929
  store i64 %1580, i64* %1833, align 8, !dbg !1930
  %1834 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1931
  store i64 %1582, i64* %1834, align 8, !dbg !1932
  %1835 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1933
  store i64 %1461, i64* %1835, align 8, !dbg !1934
  %1836 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1935
  store i64 %1510, i64* %1836, align 8, !dbg !1936
  %1837 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1937
  store i64 %1559, i64* %1837, align 8, !dbg !1938
  %1838 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !1939
  store i64 %1830, i64* %1838, align 8, !dbg !1940
  %1839 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !1941
  store i64 %1832, i64* %1839, align 8, !dbg !1942
  %1840 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !1943
  store i64 %1711, i64* %1840, align 8, !dbg !1944
  %1841 = getelementptr inbounds i64, i64* %0, i64 8, !dbg !1945
  store i64 %1760, i64* %1841, align 8, !dbg !1946
  %1842 = getelementptr inbounds i64, i64* %0, i64 9, !dbg !1947
  store i64 %1809, i64* %1842, align 8, !dbg !1948
  ret void, !dbg !1949
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_51_secret_to_public(i8* %0, i8* %1) #0 !dbg !1950 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1953, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %1, metadata !1955, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !1956, metadata !DIExpression()), !dbg !1958
  %4 = bitcast [32 x i8]* %3 to i8*, !dbg !1958
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 32, i1 false), !dbg !1958
  call void @llvm.dbg.value(metadata i32 0, metadata !1959, metadata !DIExpression()), !dbg !1961
  br label %5, !dbg !1962

5:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %15, %14 ], !dbg !1961
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1959, metadata !DIExpression()), !dbg !1961
  %6 = icmp ult i32 %.0, 32, !dbg !1963
  br i1 %6, label %7, label %16, !dbg !1965

7:                                                ; preds = %5
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %8, metadata !1968, metadata !DIExpression()), !dbg !1969
  %9 = zext i32 %.0 to i64, !dbg !1970
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @g25519 to [32 x i8]*), i64 0, i64 %9, !dbg !1970
  %11 = load i8, i8* %10, align 1, !dbg !1970
  call void @llvm.dbg.value(metadata i8 %11, metadata !1971, metadata !DIExpression()), !dbg !1969
  %12 = zext i32 %.0 to i64, !dbg !1972
  %13 = getelementptr inbounds i8, i8* %8, i64 %12, !dbg !1972
  store i8 %11, i8* %13, align 1, !dbg !1973
  br label %14, !dbg !1974

14:                                               ; preds = %7
  %15 = add i32 %.0, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %15, metadata !1959, metadata !DIExpression()), !dbg !1961
  br label %5, !dbg !1976, !llvm.loop !1977

16:                                               ; preds = %5
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1979
  call void @Hacl_Curve25519_51_scalarmult(i8* %0, i8* %1, i8* %17), !dbg !1980
  ret void, !dbg !1981
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Hacl_Curve25519_51_ecdh(i8* %0, i8* %1, i8* %2) #0 !dbg !1982 {
  %4 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8* %1, metadata !1988, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8* %2, metadata !1989, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !1990, metadata !DIExpression()), !dbg !1991
  %5 = bitcast [32 x i8]* %4 to i8*, !dbg !1991
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 32, i1 false), !dbg !1991
  call void @Hacl_Curve25519_51_scalarmult(i8* %0, i8* %1, i8* %2), !dbg !1992
  call void @llvm.dbg.value(metadata i8 -1, metadata !1993, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1996
  br label %6, !dbg !1997

6:                                                ; preds = %20, %3
  %.01 = phi i8 [ -1, %3 ], [ %19, %20 ], !dbg !1987
  %.0 = phi i32 [ 0, %3 ], [ %21, %20 ], !dbg !1996
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1993, metadata !DIExpression()), !dbg !1987
  %7 = icmp ult i32 %.0, 32, !dbg !1998
  br i1 %7, label %8, label %22, !dbg !2000

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64, !dbg !2001
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !2001
  %11 = load i8, i8* %10, align 1, !dbg !2001
  %12 = zext i32 %.0 to i64, !dbg !2003
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %12, !dbg !2003
  %14 = load i8, i8* %13, align 1, !dbg !2003
  %15 = call zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %11, i8 zeroext %14), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %15, metadata !2005, metadata !DIExpression()), !dbg !2006
  %16 = zext i8 %15 to i32, !dbg !2007
  %17 = zext i8 %.01 to i32, !dbg !2008
  %18 = and i32 %16, %17, !dbg !2009
  %19 = trunc i32 %18 to i8, !dbg !2007
  call void @llvm.dbg.value(metadata i8 %19, metadata !1993, metadata !DIExpression()), !dbg !1987
  br label %20, !dbg !2010

20:                                               ; preds = %8
  %21 = add i32 %.0, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %21, metadata !1994, metadata !DIExpression()), !dbg !1996
  br label %6, !dbg !2012, !llvm.loop !2013

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %.01, metadata !2015, metadata !DIExpression()), !dbg !1987
  %23 = zext i8 %.01 to i32, !dbg !2016
  %24 = icmp eq i32 %23, 255, !dbg !2017
  %25 = zext i1 %24 to i8, !dbg !2018
  call void @llvm.dbg.value(metadata i8 %25, metadata !2019, metadata !DIExpression()), !dbg !1987
  %26 = trunc i8 %25 to i1, !dbg !2020
  %27 = xor i1 %26, true, !dbg !2021
  ret i1 %27, !dbg !2022
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %0, i8 zeroext %1) #0 !dbg !2023 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2026, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 %1, metadata !2028, metadata !DIExpression()), !dbg !2027
  %3 = zext i8 %0 to i32, !dbg !2029
  %4 = zext i8 %1 to i32, !dbg !2030
  %5 = xor i32 %3, %4, !dbg !2031
  %6 = trunc i32 %5 to i8, !dbg !2029
  call void @llvm.dbg.value(metadata i8 %6, metadata !2032, metadata !DIExpression()), !dbg !2027
  %7 = zext i8 %6 to i32, !dbg !2033
  %8 = xor i32 %7, -1, !dbg !2034
  %9 = add nsw i32 %8, 1, !dbg !2035
  %10 = trunc i32 %9 to i8, !dbg !2034
  call void @llvm.dbg.value(metadata i8 %10, metadata !2036, metadata !DIExpression()), !dbg !2027
  %11 = zext i8 %6 to i32, !dbg !2037
  %12 = zext i8 %10 to i32, !dbg !2038
  %13 = or i32 %11, %12, !dbg !2039
  %14 = trunc i32 %13 to i8, !dbg !2037
  call void @llvm.dbg.value(metadata i8 %14, metadata !2040, metadata !DIExpression()), !dbg !2027
  %15 = zext i8 %14 to i32, !dbg !2041
  %16 = ashr i32 %15, 7, !dbg !2042
  %17 = trunc i32 %16 to i8, !dbg !2041
  call void @llvm.dbg.value(metadata i8 %17, metadata !2043, metadata !DIExpression()), !dbg !2027
  %18 = zext i8 %17 to i32, !dbg !2044
  %19 = sub nsw i32 %18, 1, !dbg !2045
  %20 = trunc i32 %19 to i8, !dbg !2044
  ret i8 %20, !dbg !2046
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_51_secret_to_public_wrapper(i8* %0, i8* %1) #0 !dbg !2047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8* %1, metadata !2050, metadata !DIExpression()), !dbg !2049
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !2051
  call void @public_in(%struct.smack_value* %3), !dbg !2052
  %4 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !2053
  call void @public_in(%struct.smack_value* %4), !dbg !2054
  %5 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !2055
  call void @public_in(%struct.smack_value* %5), !dbg !2056
  call void @Hacl_Curve25519_51_secret_to_public(i8* %0, i8* %1), !dbg !2057
  ret void, !dbg !2058
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_51_secret_to_public_wrapper_t() #0 !dbg !2059 {
  %1 = call i8* (...) @getpt1(), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %1, metadata !2063, metadata !DIExpression()), !dbg !2064
  %2 = call i8* (...) @getpt2(), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %2, metadata !2066, metadata !DIExpression()), !dbg !2064
  call void @Hacl_Curve25519_51_secret_to_public(i8* %1, i8* %2), !dbg !2067
  ret void, !dbg !2068
}

declare dso_local i8* @getpt1(...) #4

declare dso_local i8* @getpt2(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !26}
!llvm.ident = !{!28, !28}
!llvm.module.flags = !{!29, !30, !31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g25519", scope: !2, file: !3, line: 31, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/Hacl_Curve25519_51.c", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!4 = !{}
!5 = !{!6, !11, !14, !17}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !13)
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !18, line: 86, baseType: !19)
!18 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/internal/types.h", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !18, line: 76, baseType: !20)
!20 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!21 = !{!0}
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !24)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!24 = !{!25}
!25 = !DISubrange(count: 32)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "Hacl_Curve25519_51_secret_to_public.c", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!28 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = distinct !DISubprogram(name: "Hacl_Curve25519_51_fsquare_times", scope: !3, file: !3, line: 160, type: !33, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35, !36, !6}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!37 = !DILocalVariable(name: "o", arg: 1, scope: !32, file: !3, line: 161, type: !35)
!38 = !DILocation(line: 0, scope: !32)
!39 = !DILocalVariable(name: "inp", arg: 2, scope: !32, file: !3, line: 162, type: !35)
!40 = !DILocalVariable(name: "tmp", arg: 3, scope: !32, file: !3, line: 163, type: !36)
!41 = !DILocalVariable(name: "n", arg: 4, scope: !32, file: !3, line: 164, type: !6)
!42 = !DILocation(line: 167, column: 3, scope: !32)
!43 = !DILocalVariable(name: "i", scope: !44, file: !3, line: 168, type: !6)
!44 = distinct !DILexicalBlock(scope: !32, file: !3, line: 168, column: 3)
!45 = !DILocation(line: 0, scope: !44)
!46 = !DILocation(line: 168, column: 8, scope: !44)
!47 = !DILocation(line: 168, column: 41, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !3, line: 168, column: 3)
!49 = !DILocation(line: 168, column: 37, scope: !48)
!50 = !DILocation(line: 168, column: 3, scope: !44)
!51 = !DILocation(line: 170, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 169, column: 3)
!53 = !DILocation(line: 171, column: 3, scope: !52)
!54 = !DILocation(line: 168, column: 58, scope: !48)
!55 = !DILocation(line: 168, column: 3, scope: !48)
!56 = distinct !{!56, !50, !57, !58}
!57 = !DILocation(line: 171, column: 3, scope: !44)
!58 = !{!"llvm.loop.mustprogress"}
!59 = !DILocation(line: 172, column: 1, scope: !32)
!60 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fsqr", scope: !61, file: !61, line: 372, type: !62, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!61 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/internal/Hacl_Bignum25519_51.h", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!62 = !DISubroutineType(types: !63)
!63 = !{null, !35, !35, !36}
!64 = !DILocalVariable(name: "out", arg: 1, scope: !60, file: !61, line: 372, type: !35)
!65 = !DILocation(line: 0, scope: !60)
!66 = !DILocalVariable(name: "f", arg: 2, scope: !60, file: !61, line: 372, type: !35)
!67 = !DILocalVariable(name: "uu___", arg: 3, scope: !60, file: !61, line: 372, type: !36)
!68 = !DILocation(line: 374, column: 17, scope: !60)
!69 = !DILocalVariable(name: "f0", scope: !60, file: !61, line: 374, type: !11)
!70 = !DILocation(line: 375, column: 17, scope: !60)
!71 = !DILocalVariable(name: "f1", scope: !60, file: !61, line: 375, type: !11)
!72 = !DILocation(line: 376, column: 17, scope: !60)
!73 = !DILocalVariable(name: "f2", scope: !60, file: !61, line: 376, type: !11)
!74 = !DILocation(line: 377, column: 17, scope: !60)
!75 = !DILocalVariable(name: "f3", scope: !60, file: !61, line: 377, type: !11)
!76 = !DILocation(line: 378, column: 17, scope: !60)
!77 = !DILocalVariable(name: "f4", scope: !60, file: !61, line: 378, type: !11)
!78 = !DILocation(line: 379, column: 30, scope: !60)
!79 = !DILocalVariable(name: "d0", scope: !60, file: !61, line: 379, type: !11)
!80 = !DILocation(line: 380, column: 30, scope: !60)
!81 = !DILocalVariable(name: "d1", scope: !60, file: !61, line: 380, type: !11)
!82 = !DILocation(line: 381, column: 31, scope: !60)
!83 = !DILocalVariable(name: "d2", scope: !60, file: !61, line: 381, type: !11)
!84 = !DILocation(line: 382, column: 31, scope: !60)
!85 = !DILocalVariable(name: "d3", scope: !60, file: !61, line: 382, type: !11)
!86 = !DILocation(line: 383, column: 33, scope: !60)
!87 = !DILocalVariable(name: "d419", scope: !60, file: !61, line: 383, type: !11)
!88 = !DILocation(line: 384, column: 30, scope: !60)
!89 = !DILocalVariable(name: "d4", scope: !60, file: !61, line: 384, type: !11)
!90 = !DILocation(line: 387, column: 41, scope: !60)
!91 = !DILocation(line: 388, column: 9, scope: !60)
!92 = !DILocation(line: 387, column: 23, scope: !60)
!93 = !DILocation(line: 389, column: 7, scope: !60)
!94 = !DILocation(line: 387, column: 5, scope: !60)
!95 = !DILocalVariable(name: "s0", scope: !60, file: !61, line: 386, type: !19)
!96 = !DILocation(line: 392, column: 41, scope: !60)
!97 = !DILocation(line: 393, column: 9, scope: !60)
!98 = !DILocation(line: 392, column: 23, scope: !60)
!99 = !DILocation(line: 394, column: 7, scope: !60)
!100 = !DILocation(line: 392, column: 5, scope: !60)
!101 = !DILocalVariable(name: "s1", scope: !60, file: !61, line: 391, type: !19)
!102 = !DILocation(line: 397, column: 41, scope: !60)
!103 = !DILocation(line: 398, column: 9, scope: !60)
!104 = !DILocation(line: 397, column: 23, scope: !60)
!105 = !DILocation(line: 399, column: 7, scope: !60)
!106 = !DILocation(line: 397, column: 5, scope: !60)
!107 = !DILocalVariable(name: "s2", scope: !60, file: !61, line: 396, type: !19)
!108 = !DILocation(line: 402, column: 41, scope: !60)
!109 = !DILocation(line: 403, column: 9, scope: !60)
!110 = !DILocation(line: 402, column: 23, scope: !60)
!111 = !DILocation(line: 404, column: 7, scope: !60)
!112 = !DILocation(line: 402, column: 5, scope: !60)
!113 = !DILocalVariable(name: "s3", scope: !60, file: !61, line: 401, type: !19)
!114 = !DILocation(line: 407, column: 41, scope: !60)
!115 = !DILocation(line: 408, column: 9, scope: !60)
!116 = !DILocation(line: 407, column: 23, scope: !60)
!117 = !DILocation(line: 409, column: 7, scope: !60)
!118 = !DILocation(line: 407, column: 5, scope: !60)
!119 = !DILocalVariable(name: "s4", scope: !60, file: !61, line: 406, type: !19)
!120 = !DILocalVariable(name: "o00", scope: !60, file: !61, line: 410, type: !19)
!121 = !DILocalVariable(name: "o10", scope: !60, file: !61, line: 411, type: !19)
!122 = !DILocalVariable(name: "o20", scope: !60, file: !61, line: 412, type: !19)
!123 = !DILocalVariable(name: "o30", scope: !60, file: !61, line: 413, type: !19)
!124 = !DILocalVariable(name: "o40", scope: !60, file: !61, line: 414, type: !19)
!125 = !DILocation(line: 416, column: 31, scope: !60)
!126 = !DILocation(line: 416, column: 8, scope: !60)
!127 = !DILocalVariable(name: "l_", scope: !60, file: !61, line: 416, type: !19)
!128 = !DILocation(line: 417, column: 19, scope: !60)
!129 = !DILocation(line: 417, column: 55, scope: !60)
!130 = !DILocalVariable(name: "tmp0", scope: !60, file: !61, line: 417, type: !11)
!131 = !DILocation(line: 418, column: 49, scope: !60)
!132 = !DILocation(line: 418, column: 17, scope: !60)
!133 = !DILocalVariable(name: "c0", scope: !60, file: !61, line: 418, type: !11)
!134 = !DILocation(line: 419, column: 54, scope: !60)
!135 = !DILocation(line: 419, column: 31, scope: !60)
!136 = !DILocalVariable(name: "l_0", scope: !60, file: !61, line: 419, type: !19)
!137 = !DILocation(line: 420, column: 19, scope: !60)
!138 = !DILocation(line: 420, column: 56, scope: !60)
!139 = !DILocalVariable(name: "tmp1", scope: !60, file: !61, line: 420, type: !11)
!140 = !DILocation(line: 421, column: 49, scope: !60)
!141 = !DILocation(line: 421, column: 17, scope: !60)
!142 = !DILocalVariable(name: "c1", scope: !60, file: !61, line: 421, type: !11)
!143 = !DILocation(line: 422, column: 54, scope: !60)
!144 = !DILocation(line: 422, column: 31, scope: !60)
!145 = !DILocalVariable(name: "l_1", scope: !60, file: !61, line: 422, type: !19)
!146 = !DILocation(line: 423, column: 19, scope: !60)
!147 = !DILocation(line: 423, column: 56, scope: !60)
!148 = !DILocalVariable(name: "tmp2", scope: !60, file: !61, line: 423, type: !11)
!149 = !DILocation(line: 424, column: 49, scope: !60)
!150 = !DILocation(line: 424, column: 17, scope: !60)
!151 = !DILocalVariable(name: "c2", scope: !60, file: !61, line: 424, type: !11)
!152 = !DILocation(line: 425, column: 54, scope: !60)
!153 = !DILocation(line: 425, column: 31, scope: !60)
!154 = !DILocalVariable(name: "l_2", scope: !60, file: !61, line: 425, type: !19)
!155 = !DILocation(line: 426, column: 19, scope: !60)
!156 = !DILocation(line: 426, column: 56, scope: !60)
!157 = !DILocalVariable(name: "tmp3", scope: !60, file: !61, line: 426, type: !11)
!158 = !DILocation(line: 427, column: 49, scope: !60)
!159 = !DILocation(line: 427, column: 17, scope: !60)
!160 = !DILocalVariable(name: "c3", scope: !60, file: !61, line: 427, type: !11)
!161 = !DILocation(line: 428, column: 54, scope: !60)
!162 = !DILocation(line: 428, column: 31, scope: !60)
!163 = !DILocalVariable(name: "l_3", scope: !60, file: !61, line: 428, type: !19)
!164 = !DILocation(line: 429, column: 19, scope: !60)
!165 = !DILocation(line: 429, column: 56, scope: !60)
!166 = !DILocalVariable(name: "tmp4", scope: !60, file: !61, line: 429, type: !11)
!167 = !DILocation(line: 430, column: 49, scope: !60)
!168 = !DILocation(line: 430, column: 17, scope: !60)
!169 = !DILocalVariable(name: "c4", scope: !60, file: !61, line: 430, type: !11)
!170 = !DILocation(line: 431, column: 28, scope: !60)
!171 = !DILocation(line: 431, column: 23, scope: !60)
!172 = !DILocalVariable(name: "l_4", scope: !60, file: !61, line: 431, type: !11)
!173 = !DILocation(line: 432, column: 24, scope: !60)
!174 = !DILocalVariable(name: "tmp0_", scope: !60, file: !61, line: 432, type: !11)
!175 = !DILocation(line: 433, column: 21, scope: !60)
!176 = !DILocalVariable(name: "c5", scope: !60, file: !61, line: 433, type: !11)
!177 = !DILocalVariable(name: "o0", scope: !60, file: !61, line: 434, type: !11)
!178 = !DILocation(line: 435, column: 22, scope: !60)
!179 = !DILocalVariable(name: "o1", scope: !60, file: !61, line: 435, type: !11)
!180 = !DILocalVariable(name: "o2", scope: !60, file: !61, line: 436, type: !11)
!181 = !DILocalVariable(name: "o3", scope: !60, file: !61, line: 437, type: !11)
!182 = !DILocalVariable(name: "o4", scope: !60, file: !61, line: 438, type: !11)
!183 = !DILocation(line: 439, column: 3, scope: !60)
!184 = !DILocation(line: 439, column: 11, scope: !60)
!185 = !DILocation(line: 440, column: 3, scope: !60)
!186 = !DILocation(line: 440, column: 11, scope: !60)
!187 = !DILocation(line: 441, column: 3, scope: !60)
!188 = !DILocation(line: 441, column: 11, scope: !60)
!189 = !DILocation(line: 442, column: 3, scope: !60)
!190 = !DILocation(line: 442, column: 11, scope: !60)
!191 = !DILocation(line: 443, column: 3, scope: !60)
!192 = !DILocation(line: 443, column: 11, scope: !60)
!193 = !DILocation(line: 444, column: 1, scope: !60)
!194 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !195, file: !195, line: 106, type: !196, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!195 = !DIFile(filename: "../hacl-star/dist/karamel/krmllib/dist/minimal/fstar_uint128_gcc64.h", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!196 = !DISubroutineType(types: !197)
!197 = !{!19, !11, !11}
!198 = !DILocalVariable(name: "x", arg: 1, scope: !194, file: !195, line: 106, type: !11)
!199 = !DILocation(line: 0, scope: !194)
!200 = !DILocalVariable(name: "y", arg: 2, scope: !194, file: !195, line: 106, type: !11)
!201 = !DILocation(line: 107, column: 11, scope: !194)
!202 = !DILocation(line: 107, column: 28, scope: !194)
!203 = !DILocation(line: 107, column: 26, scope: !194)
!204 = !DILocation(line: 107, column: 3, scope: !194)
!205 = distinct !DISubprogram(name: "FStar_UInt128_add", scope: !195, file: !195, line: 54, type: !206, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!206 = !DISubroutineType(types: !207)
!207 = !{!19, !17, !17}
!208 = !DILocalVariable(name: "x", arg: 1, scope: !205, file: !195, line: 54, type: !17)
!209 = !DILocation(line: 0, scope: !205)
!210 = !DILocalVariable(name: "y", arg: 2, scope: !205, file: !195, line: 54, type: !17)
!211 = !DILocation(line: 55, column: 12, scope: !205)
!212 = !DILocation(line: 55, column: 3, scope: !205)
!213 = distinct !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !195, file: !195, line: 98, type: !214, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!214 = !DISubroutineType(types: !215)
!215 = !{!19, !11}
!216 = !DILocalVariable(name: "x", arg: 1, scope: !213, file: !195, line: 98, type: !11)
!217 = !DILocation(line: 0, scope: !213)
!218 = !DILocation(line: 99, column: 10, scope: !213)
!219 = !DILocation(line: 99, column: 3, scope: !213)
!220 = distinct !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !195, file: !195, line: 102, type: !221, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!221 = !DISubroutineType(types: !222)
!222 = !{!11, !17}
!223 = !DILocalVariable(name: "x", arg: 1, scope: !220, file: !195, line: 102, type: !17)
!224 = !DILocation(line: 0, scope: !220)
!225 = !DILocation(line: 103, column: 10, scope: !220)
!226 = !DILocation(line: 103, column: 3, scope: !220)
!227 = distinct !DISubprogram(name: "FStar_UInt128_shift_right", scope: !195, file: !195, line: 94, type: !228, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!228 = !DISubroutineType(types: !229)
!229 = !{!19, !17, !6}
!230 = !DILocalVariable(name: "x", arg: 1, scope: !227, file: !195, line: 94, type: !17)
!231 = !DILocation(line: 0, scope: !227)
!232 = !DILocalVariable(name: "y", arg: 2, scope: !227, file: !195, line: 94, type: !6)
!233 = !DILocation(line: 95, column: 12, scope: !227)
!234 = !DILocation(line: 95, column: 3, scope: !227)
!235 = distinct !DISubprogram(name: "Hacl_Curve25519_51_finv", scope: !3, file: !3, line: 174, type: !62, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!236 = !DILocalVariable(name: "o", arg: 1, scope: !235, file: !3, line: 174, type: !35)
!237 = !DILocation(line: 0, scope: !235)
!238 = !DILocalVariable(name: "i", arg: 2, scope: !235, file: !3, line: 174, type: !35)
!239 = !DILocalVariable(name: "tmp", arg: 3, scope: !235, file: !3, line: 174, type: !36)
!240 = !DILocalVariable(name: "t1", scope: !235, file: !3, line: 176, type: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 20)
!244 = !DILocation(line: 176, column: 12, scope: !235)
!245 = !DILocation(line: 177, column: 18, scope: !235)
!246 = !DILocalVariable(name: "a1", scope: !235, file: !3, line: 177, type: !35)
!247 = !DILocation(line: 178, column: 18, scope: !235)
!248 = !DILocation(line: 178, column: 21, scope: !235)
!249 = !DILocalVariable(name: "b1", scope: !235, file: !3, line: 178, type: !35)
!250 = !DILocation(line: 179, column: 20, scope: !235)
!251 = !DILocation(line: 179, column: 23, scope: !235)
!252 = !DILocalVariable(name: "t010", scope: !235, file: !3, line: 179, type: !35)
!253 = !DILocalVariable(name: "tmp10", scope: !235, file: !3, line: 180, type: !36)
!254 = !DILocation(line: 181, column: 3, scope: !235)
!255 = !DILocation(line: 182, column: 3, scope: !235)
!256 = !DILocation(line: 183, column: 3, scope: !235)
!257 = !DILocation(line: 184, column: 3, scope: !235)
!258 = !DILocation(line: 185, column: 3, scope: !235)
!259 = !DILocation(line: 186, column: 3, scope: !235)
!260 = !DILocation(line: 187, column: 3, scope: !235)
!261 = !DILocation(line: 188, column: 3, scope: !235)
!262 = !DILocation(line: 189, column: 19, scope: !235)
!263 = !DILocation(line: 189, column: 22, scope: !235)
!264 = !DILocalVariable(name: "b10", scope: !235, file: !3, line: 189, type: !35)
!265 = !DILocation(line: 190, column: 19, scope: !235)
!266 = !DILocation(line: 190, column: 22, scope: !235)
!267 = !DILocalVariable(name: "c10", scope: !235, file: !3, line: 190, type: !35)
!268 = !DILocation(line: 191, column: 20, scope: !235)
!269 = !DILocation(line: 191, column: 23, scope: !235)
!270 = !DILocalVariable(name: "t011", scope: !235, file: !3, line: 191, type: !35)
!271 = !DILocalVariable(name: "tmp11", scope: !235, file: !3, line: 192, type: !36)
!272 = !DILocation(line: 193, column: 3, scope: !235)
!273 = !DILocation(line: 194, column: 3, scope: !235)
!274 = !DILocation(line: 195, column: 3, scope: !235)
!275 = !DILocation(line: 196, column: 3, scope: !235)
!276 = !DILocation(line: 197, column: 3, scope: !235)
!277 = !DILocation(line: 198, column: 3, scope: !235)
!278 = !DILocation(line: 199, column: 3, scope: !235)
!279 = !DILocation(line: 200, column: 3, scope: !235)
!280 = !DILocation(line: 201, column: 19, scope: !235)
!281 = !DILocation(line: 201, column: 22, scope: !235)
!282 = !DILocalVariable(name: "b11", scope: !235, file: !3, line: 201, type: !35)
!283 = !DILocation(line: 202, column: 18, scope: !235)
!284 = !DILocation(line: 202, column: 21, scope: !235)
!285 = !DILocalVariable(name: "c1", scope: !235, file: !3, line: 202, type: !35)
!286 = !DILocation(line: 203, column: 19, scope: !235)
!287 = !DILocation(line: 203, column: 22, scope: !235)
!288 = !DILocalVariable(name: "t01", scope: !235, file: !3, line: 203, type: !35)
!289 = !DILocalVariable(name: "tmp1", scope: !235, file: !3, line: 204, type: !36)
!290 = !DILocation(line: 205, column: 3, scope: !235)
!291 = !DILocation(line: 206, column: 3, scope: !235)
!292 = !DILocation(line: 207, column: 3, scope: !235)
!293 = !DILocation(line: 208, column: 3, scope: !235)
!294 = !DILocation(line: 209, column: 3, scope: !235)
!295 = !DILocation(line: 210, column: 17, scope: !235)
!296 = !DILocalVariable(name: "a", scope: !235, file: !3, line: 210, type: !35)
!297 = !DILocation(line: 211, column: 18, scope: !235)
!298 = !DILocation(line: 211, column: 21, scope: !235)
!299 = !DILocalVariable(name: "t0", scope: !235, file: !3, line: 211, type: !35)
!300 = !DILocation(line: 212, column: 3, scope: !235)
!301 = !DILocation(line: 213, column: 1, scope: !235)
!302 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fmul", scope: !61, file: !61, line: 80, type: !303, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !35, !35, !35, !36}
!305 = !DILocalVariable(name: "out", arg: 1, scope: !302, file: !61, line: 81, type: !35)
!306 = !DILocation(line: 0, scope: !302)
!307 = !DILocalVariable(name: "f1", arg: 2, scope: !302, file: !61, line: 82, type: !35)
!308 = !DILocalVariable(name: "f2", arg: 3, scope: !302, file: !61, line: 83, type: !35)
!309 = !DILocalVariable(name: "uu___", arg: 4, scope: !302, file: !61, line: 84, type: !36)
!310 = !DILocation(line: 87, column: 18, scope: !302)
!311 = !DILocalVariable(name: "f10", scope: !302, file: !61, line: 87, type: !11)
!312 = !DILocation(line: 88, column: 18, scope: !302)
!313 = !DILocalVariable(name: "f11", scope: !302, file: !61, line: 88, type: !11)
!314 = !DILocation(line: 89, column: 18, scope: !302)
!315 = !DILocalVariable(name: "f12", scope: !302, file: !61, line: 89, type: !11)
!316 = !DILocation(line: 90, column: 18, scope: !302)
!317 = !DILocalVariable(name: "f13", scope: !302, file: !61, line: 90, type: !11)
!318 = !DILocation(line: 91, column: 18, scope: !302)
!319 = !DILocalVariable(name: "f14", scope: !302, file: !61, line: 91, type: !11)
!320 = !DILocation(line: 92, column: 18, scope: !302)
!321 = !DILocalVariable(name: "f20", scope: !302, file: !61, line: 92, type: !11)
!322 = !DILocation(line: 93, column: 18, scope: !302)
!323 = !DILocalVariable(name: "f21", scope: !302, file: !61, line: 93, type: !11)
!324 = !DILocation(line: 94, column: 18, scope: !302)
!325 = !DILocalVariable(name: "f22", scope: !302, file: !61, line: 94, type: !11)
!326 = !DILocation(line: 95, column: 18, scope: !302)
!327 = !DILocalVariable(name: "f23", scope: !302, file: !61, line: 95, type: !11)
!328 = !DILocation(line: 96, column: 18, scope: !302)
!329 = !DILocalVariable(name: "f24", scope: !302, file: !61, line: 96, type: !11)
!330 = !DILocation(line: 97, column: 23, scope: !302)
!331 = !DILocalVariable(name: "tmp1", scope: !302, file: !61, line: 97, type: !11)
!332 = !DILocation(line: 98, column: 23, scope: !302)
!333 = !DILocalVariable(name: "tmp2", scope: !302, file: !61, line: 98, type: !11)
!334 = !DILocation(line: 99, column: 23, scope: !302)
!335 = !DILocalVariable(name: "tmp3", scope: !302, file: !61, line: 99, type: !11)
!336 = !DILocation(line: 100, column: 23, scope: !302)
!337 = !DILocalVariable(name: "tmp4", scope: !302, file: !61, line: 100, type: !11)
!338 = !DILocation(line: 101, column: 31, scope: !302)
!339 = !DILocalVariable(name: "o00", scope: !302, file: !61, line: 101, type: !19)
!340 = !DILocation(line: 102, column: 31, scope: !302)
!341 = !DILocalVariable(name: "o10", scope: !302, file: !61, line: 102, type: !19)
!342 = !DILocation(line: 103, column: 31, scope: !302)
!343 = !DILocalVariable(name: "o20", scope: !302, file: !61, line: 103, type: !19)
!344 = !DILocation(line: 104, column: 31, scope: !302)
!345 = !DILocalVariable(name: "o30", scope: !302, file: !61, line: 104, type: !19)
!346 = !DILocation(line: 105, column: 31, scope: !302)
!347 = !DILocalVariable(name: "o40", scope: !302, file: !61, line: 105, type: !19)
!348 = !DILocation(line: 106, column: 54, scope: !302)
!349 = !DILocation(line: 106, column: 31, scope: !302)
!350 = !DILocalVariable(name: "o01", scope: !302, file: !61, line: 106, type: !19)
!351 = !DILocation(line: 107, column: 54, scope: !302)
!352 = !DILocation(line: 107, column: 31, scope: !302)
!353 = !DILocalVariable(name: "o11", scope: !302, file: !61, line: 107, type: !19)
!354 = !DILocation(line: 108, column: 54, scope: !302)
!355 = !DILocation(line: 108, column: 31, scope: !302)
!356 = !DILocalVariable(name: "o21", scope: !302, file: !61, line: 108, type: !19)
!357 = !DILocation(line: 109, column: 54, scope: !302)
!358 = !DILocation(line: 109, column: 31, scope: !302)
!359 = !DILocalVariable(name: "o31", scope: !302, file: !61, line: 109, type: !19)
!360 = !DILocation(line: 110, column: 54, scope: !302)
!361 = !DILocation(line: 110, column: 31, scope: !302)
!362 = !DILocalVariable(name: "o41", scope: !302, file: !61, line: 110, type: !19)
!363 = !DILocation(line: 111, column: 54, scope: !302)
!364 = !DILocation(line: 111, column: 31, scope: !302)
!365 = !DILocalVariable(name: "o02", scope: !302, file: !61, line: 111, type: !19)
!366 = !DILocation(line: 112, column: 54, scope: !302)
!367 = !DILocation(line: 112, column: 31, scope: !302)
!368 = !DILocalVariable(name: "o12", scope: !302, file: !61, line: 112, type: !19)
!369 = !DILocation(line: 113, column: 54, scope: !302)
!370 = !DILocation(line: 113, column: 31, scope: !302)
!371 = !DILocalVariable(name: "o22", scope: !302, file: !61, line: 113, type: !19)
!372 = !DILocation(line: 114, column: 54, scope: !302)
!373 = !DILocation(line: 114, column: 31, scope: !302)
!374 = !DILocalVariable(name: "o32", scope: !302, file: !61, line: 114, type: !19)
!375 = !DILocation(line: 115, column: 54, scope: !302)
!376 = !DILocation(line: 115, column: 31, scope: !302)
!377 = !DILocalVariable(name: "o42", scope: !302, file: !61, line: 115, type: !19)
!378 = !DILocation(line: 116, column: 54, scope: !302)
!379 = !DILocation(line: 116, column: 31, scope: !302)
!380 = !DILocalVariable(name: "o03", scope: !302, file: !61, line: 116, type: !19)
!381 = !DILocation(line: 117, column: 54, scope: !302)
!382 = !DILocation(line: 117, column: 31, scope: !302)
!383 = !DILocalVariable(name: "o13", scope: !302, file: !61, line: 117, type: !19)
!384 = !DILocation(line: 118, column: 54, scope: !302)
!385 = !DILocation(line: 118, column: 31, scope: !302)
!386 = !DILocalVariable(name: "o23", scope: !302, file: !61, line: 118, type: !19)
!387 = !DILocation(line: 119, column: 54, scope: !302)
!388 = !DILocation(line: 119, column: 31, scope: !302)
!389 = !DILocalVariable(name: "o33", scope: !302, file: !61, line: 119, type: !19)
!390 = !DILocation(line: 120, column: 54, scope: !302)
!391 = !DILocation(line: 120, column: 31, scope: !302)
!392 = !DILocalVariable(name: "o43", scope: !302, file: !61, line: 120, type: !19)
!393 = !DILocation(line: 121, column: 54, scope: !302)
!394 = !DILocation(line: 121, column: 31, scope: !302)
!395 = !DILocalVariable(name: "o04", scope: !302, file: !61, line: 121, type: !19)
!396 = !DILocation(line: 122, column: 54, scope: !302)
!397 = !DILocation(line: 122, column: 31, scope: !302)
!398 = !DILocalVariable(name: "o14", scope: !302, file: !61, line: 122, type: !19)
!399 = !DILocation(line: 123, column: 54, scope: !302)
!400 = !DILocation(line: 123, column: 31, scope: !302)
!401 = !DILocalVariable(name: "o24", scope: !302, file: !61, line: 123, type: !19)
!402 = !DILocation(line: 124, column: 54, scope: !302)
!403 = !DILocation(line: 124, column: 31, scope: !302)
!404 = !DILocalVariable(name: "o34", scope: !302, file: !61, line: 124, type: !19)
!405 = !DILocation(line: 125, column: 54, scope: !302)
!406 = !DILocation(line: 125, column: 31, scope: !302)
!407 = !DILocalVariable(name: "o44", scope: !302, file: !61, line: 125, type: !19)
!408 = !DILocalVariable(name: "tmp_w0", scope: !302, file: !61, line: 126, type: !19)
!409 = !DILocalVariable(name: "tmp_w1", scope: !302, file: !61, line: 127, type: !19)
!410 = !DILocalVariable(name: "tmp_w2", scope: !302, file: !61, line: 128, type: !19)
!411 = !DILocalVariable(name: "tmp_w3", scope: !302, file: !61, line: 129, type: !19)
!412 = !DILocalVariable(name: "tmp_w4", scope: !302, file: !61, line: 130, type: !19)
!413 = !DILocation(line: 132, column: 34, scope: !302)
!414 = !DILocation(line: 132, column: 8, scope: !302)
!415 = !DILocalVariable(name: "l_", scope: !302, file: !61, line: 132, type: !19)
!416 = !DILocation(line: 133, column: 20, scope: !302)
!417 = !DILocation(line: 133, column: 56, scope: !302)
!418 = !DILocalVariable(name: "tmp01", scope: !302, file: !61, line: 133, type: !11)
!419 = !DILocation(line: 134, column: 49, scope: !302)
!420 = !DILocation(line: 134, column: 17, scope: !302)
!421 = !DILocalVariable(name: "c0", scope: !302, file: !61, line: 134, type: !11)
!422 = !DILocation(line: 135, column: 57, scope: !302)
!423 = !DILocation(line: 135, column: 31, scope: !302)
!424 = !DILocalVariable(name: "l_0", scope: !302, file: !61, line: 135, type: !19)
!425 = !DILocation(line: 136, column: 20, scope: !302)
!426 = !DILocation(line: 136, column: 57, scope: !302)
!427 = !DILocalVariable(name: "tmp11", scope: !302, file: !61, line: 136, type: !11)
!428 = !DILocation(line: 137, column: 49, scope: !302)
!429 = !DILocation(line: 137, column: 17, scope: !302)
!430 = !DILocalVariable(name: "c1", scope: !302, file: !61, line: 137, type: !11)
!431 = !DILocation(line: 138, column: 57, scope: !302)
!432 = !DILocation(line: 138, column: 31, scope: !302)
!433 = !DILocalVariable(name: "l_1", scope: !302, file: !61, line: 138, type: !19)
!434 = !DILocation(line: 139, column: 20, scope: !302)
!435 = !DILocation(line: 139, column: 57, scope: !302)
!436 = !DILocalVariable(name: "tmp21", scope: !302, file: !61, line: 139, type: !11)
!437 = !DILocation(line: 140, column: 49, scope: !302)
!438 = !DILocation(line: 140, column: 17, scope: !302)
!439 = !DILocalVariable(name: "c2", scope: !302, file: !61, line: 140, type: !11)
!440 = !DILocation(line: 141, column: 57, scope: !302)
!441 = !DILocation(line: 141, column: 31, scope: !302)
!442 = !DILocalVariable(name: "l_2", scope: !302, file: !61, line: 141, type: !19)
!443 = !DILocation(line: 142, column: 20, scope: !302)
!444 = !DILocation(line: 142, column: 57, scope: !302)
!445 = !DILocalVariable(name: "tmp31", scope: !302, file: !61, line: 142, type: !11)
!446 = !DILocation(line: 143, column: 49, scope: !302)
!447 = !DILocation(line: 143, column: 17, scope: !302)
!448 = !DILocalVariable(name: "c3", scope: !302, file: !61, line: 143, type: !11)
!449 = !DILocation(line: 144, column: 57, scope: !302)
!450 = !DILocation(line: 144, column: 31, scope: !302)
!451 = !DILocalVariable(name: "l_3", scope: !302, file: !61, line: 144, type: !19)
!452 = !DILocation(line: 145, column: 20, scope: !302)
!453 = !DILocation(line: 145, column: 57, scope: !302)
!454 = !DILocalVariable(name: "tmp41", scope: !302, file: !61, line: 145, type: !11)
!455 = !DILocation(line: 146, column: 49, scope: !302)
!456 = !DILocation(line: 146, column: 17, scope: !302)
!457 = !DILocalVariable(name: "c4", scope: !302, file: !61, line: 146, type: !11)
!458 = !DILocation(line: 147, column: 29, scope: !302)
!459 = !DILocation(line: 147, column: 24, scope: !302)
!460 = !DILocalVariable(name: "l_4", scope: !302, file: !61, line: 147, type: !11)
!461 = !DILocation(line: 148, column: 24, scope: !302)
!462 = !DILocalVariable(name: "tmp0_", scope: !302, file: !61, line: 148, type: !11)
!463 = !DILocation(line: 149, column: 21, scope: !302)
!464 = !DILocalVariable(name: "c5", scope: !302, file: !61, line: 149, type: !11)
!465 = !DILocalVariable(name: "o0", scope: !302, file: !61, line: 150, type: !11)
!466 = !DILocation(line: 151, column: 23, scope: !302)
!467 = !DILocalVariable(name: "o1", scope: !302, file: !61, line: 151, type: !11)
!468 = !DILocalVariable(name: "o2", scope: !302, file: !61, line: 152, type: !11)
!469 = !DILocalVariable(name: "o3", scope: !302, file: !61, line: 153, type: !11)
!470 = !DILocalVariable(name: "o4", scope: !302, file: !61, line: 154, type: !11)
!471 = !DILocation(line: 155, column: 3, scope: !302)
!472 = !DILocation(line: 155, column: 11, scope: !302)
!473 = !DILocation(line: 156, column: 3, scope: !302)
!474 = !DILocation(line: 156, column: 11, scope: !302)
!475 = !DILocation(line: 157, column: 3, scope: !302)
!476 = !DILocation(line: 157, column: 11, scope: !302)
!477 = !DILocation(line: 158, column: 3, scope: !302)
!478 = !DILocation(line: 158, column: 11, scope: !302)
!479 = !DILocation(line: 159, column: 3, scope: !302)
!480 = !DILocation(line: 159, column: 11, scope: !302)
!481 = !DILocation(line: 160, column: 1, scope: !302)
!482 = distinct !DISubprogram(name: "Hacl_Curve25519_51_scalarmult", scope: !3, file: !3, line: 241, type: !483, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485, !485, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!486 = !DILocalVariable(name: "out", arg: 1, scope: !482, file: !3, line: 241, type: !485)
!487 = !DILocation(line: 0, scope: !482)
!488 = !DILocalVariable(name: "priv", arg: 2, scope: !482, file: !3, line: 241, type: !485)
!489 = !DILocalVariable(name: "pub", arg: 3, scope: !482, file: !3, line: 241, type: !485)
!490 = !DILocalVariable(name: "init", scope: !482, file: !3, line: 243, type: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 640, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 10)
!494 = !DILocation(line: 243, column: 12, scope: !482)
!495 = !DILocalVariable(name: "tmp", scope: !482, file: !3, line: 244, type: !496)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 4)
!499 = !DILocation(line: 244, column: 12, scope: !482)
!500 = !DILocation(line: 245, column: 3, scope: !482)
!501 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 245, type: !6)
!502 = distinct !DILexicalBlock(scope: !482, file: !3, line: 245, column: 3)
!503 = !DILocation(line: 0, scope: !502)
!504 = !DILocation(line: 245, column: 3, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !3, line: 245, column: 3)
!506 = !DILocalVariable(name: "os", scope: !505, file: !3, line: 245, type: !35)
!507 = !DILocation(line: 0, scope: !505)
!508 = !DILocalVariable(name: "bj", scope: !505, file: !3, line: 245, type: !485)
!509 = !DILocalVariable(name: "u", scope: !505, file: !3, line: 245, type: !11)
!510 = !DILocalVariable(name: "r", scope: !505, file: !3, line: 245, type: !11)
!511 = !DILocalVariable(name: "x", scope: !505, file: !3, line: 245, type: !11)
!512 = !DILocation(line: 245, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !502, file: !3, line: 245, column: 3)
!514 = !DILocalVariable(name: "os", scope: !513, file: !3, line: 245, type: !35)
!515 = !DILocation(line: 0, scope: !513)
!516 = !DILocalVariable(name: "bj", scope: !513, file: !3, line: 245, type: !485)
!517 = !DILocalVariable(name: "u", scope: !513, file: !3, line: 245, type: !11)
!518 = !DILocalVariable(name: "r", scope: !513, file: !3, line: 245, type: !11)
!519 = !DILocalVariable(name: "x", scope: !513, file: !3, line: 245, type: !11)
!520 = !DILocation(line: 245, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !502, file: !3, line: 245, column: 3)
!522 = !DILocalVariable(name: "os", scope: !521, file: !3, line: 245, type: !35)
!523 = !DILocation(line: 0, scope: !521)
!524 = !DILocalVariable(name: "bj", scope: !521, file: !3, line: 245, type: !485)
!525 = !DILocalVariable(name: "u", scope: !521, file: !3, line: 245, type: !11)
!526 = !DILocalVariable(name: "r", scope: !521, file: !3, line: 245, type: !11)
!527 = !DILocalVariable(name: "x", scope: !521, file: !3, line: 245, type: !11)
!528 = !DILocation(line: 245, column: 3, scope: !529)
!529 = distinct !DILexicalBlock(scope: !502, file: !3, line: 245, column: 3)
!530 = !DILocalVariable(name: "os", scope: !529, file: !3, line: 245, type: !35)
!531 = !DILocation(line: 0, scope: !529)
!532 = !DILocalVariable(name: "bj", scope: !529, file: !3, line: 245, type: !485)
!533 = !DILocalVariable(name: "u", scope: !529, file: !3, line: 245, type: !11)
!534 = !DILocalVariable(name: "r", scope: !529, file: !3, line: 245, type: !11)
!535 = !DILocalVariable(name: "x", scope: !529, file: !3, line: 245, type: !11)
!536 = !DILocation(line: 245, column: 3, scope: !502)
!537 = !DILocation(line: 255, column: 19, scope: !482)
!538 = !DILocalVariable(name: "tmp3", scope: !482, file: !3, line: 255, type: !11)
!539 = !DILocation(line: 256, column: 18, scope: !482)
!540 = !DILocation(line: 256, column: 3, scope: !482)
!541 = !DILocation(line: 256, column: 11, scope: !482)
!542 = !DILocation(line: 257, column: 17, scope: !482)
!543 = !DILocalVariable(name: "x", scope: !482, file: !3, line: 257, type: !35)
!544 = !DILocation(line: 258, column: 17, scope: !482)
!545 = !DILocation(line: 258, column: 22, scope: !482)
!546 = !DILocalVariable(name: "z", scope: !482, file: !3, line: 258, type: !35)
!547 = !DILocation(line: 259, column: 3, scope: !482)
!548 = !DILocation(line: 259, column: 9, scope: !482)
!549 = !DILocation(line: 260, column: 3, scope: !482)
!550 = !DILocation(line: 260, column: 9, scope: !482)
!551 = !DILocation(line: 261, column: 3, scope: !482)
!552 = !DILocation(line: 261, column: 9, scope: !482)
!553 = !DILocation(line: 262, column: 3, scope: !482)
!554 = !DILocation(line: 262, column: 9, scope: !482)
!555 = !DILocation(line: 263, column: 3, scope: !482)
!556 = !DILocation(line: 263, column: 9, scope: !482)
!557 = !DILocation(line: 264, column: 18, scope: !482)
!558 = !DILocation(line: 264, column: 26, scope: !482)
!559 = !DILocalVariable(name: "f0l", scope: !482, file: !3, line: 264, type: !11)
!560 = !DILocation(line: 265, column: 18, scope: !482)
!561 = !DILocation(line: 265, column: 26, scope: !482)
!562 = !DILocalVariable(name: "f0h", scope: !482, file: !3, line: 265, type: !11)
!563 = !DILocation(line: 266, column: 19, scope: !482)
!564 = !DILocation(line: 266, column: 27, scope: !482)
!565 = !DILocation(line: 266, column: 54, scope: !482)
!566 = !DILocalVariable(name: "f1l", scope: !482, file: !3, line: 266, type: !11)
!567 = !DILocation(line: 267, column: 18, scope: !482)
!568 = !DILocation(line: 267, column: 26, scope: !482)
!569 = !DILocalVariable(name: "f1h", scope: !482, file: !3, line: 267, type: !11)
!570 = !DILocation(line: 268, column: 19, scope: !482)
!571 = !DILocation(line: 268, column: 27, scope: !482)
!572 = !DILocation(line: 268, column: 51, scope: !482)
!573 = !DILocalVariable(name: "f2l", scope: !482, file: !3, line: 268, type: !11)
!574 = !DILocation(line: 269, column: 18, scope: !482)
!575 = !DILocation(line: 269, column: 26, scope: !482)
!576 = !DILocalVariable(name: "f2h", scope: !482, file: !3, line: 269, type: !11)
!577 = !DILocation(line: 270, column: 19, scope: !482)
!578 = !DILocation(line: 270, column: 27, scope: !482)
!579 = !DILocation(line: 270, column: 47, scope: !482)
!580 = !DILocalVariable(name: "f3l", scope: !482, file: !3, line: 270, type: !11)
!581 = !DILocation(line: 271, column: 18, scope: !482)
!582 = !DILocation(line: 271, column: 26, scope: !482)
!583 = !DILocalVariable(name: "f3h", scope: !482, file: !3, line: 271, type: !11)
!584 = !DILocation(line: 272, column: 3, scope: !482)
!585 = !DILocation(line: 272, column: 9, scope: !482)
!586 = !DILocation(line: 273, column: 15, scope: !482)
!587 = !DILocation(line: 273, column: 3, scope: !482)
!588 = !DILocation(line: 273, column: 9, scope: !482)
!589 = !DILocation(line: 274, column: 15, scope: !482)
!590 = !DILocation(line: 274, column: 3, scope: !482)
!591 = !DILocation(line: 274, column: 9, scope: !482)
!592 = !DILocation(line: 275, column: 15, scope: !482)
!593 = !DILocation(line: 275, column: 3, scope: !482)
!594 = !DILocation(line: 275, column: 9, scope: !482)
!595 = !DILocation(line: 276, column: 3, scope: !482)
!596 = !DILocation(line: 276, column: 9, scope: !482)
!597 = !DILocation(line: 277, column: 21, scope: !482)
!598 = !DILocation(line: 277, column: 33, scope: !482)
!599 = !DILocation(line: 277, column: 3, scope: !482)
!600 = !DILocation(line: 278, column: 21, scope: !482)
!601 = !DILocation(line: 278, column: 3, scope: !482)
!602 = !DILocation(line: 279, column: 1, scope: !482)
!603 = distinct !DISubprogram(name: "load64", scope: !604, file: !604, line: 172, type: !605, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!604 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/lowstar_endianness.h", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!605 = !DISubroutineType(types: !606)
!606 = !{!11, !485}
!607 = !DILocalVariable(name: "b", arg: 1, scope: !603, file: !604, line: 172, type: !485)
!608 = !DILocation(line: 0, scope: !603)
!609 = !DILocalVariable(name: "x", scope: !603, file: !604, line: 173, type: !11)
!610 = !DILocation(line: 173, column: 12, scope: !603)
!611 = !DILocation(line: 174, column: 3, scope: !603)
!612 = !DILocation(line: 175, column: 10, scope: !603)
!613 = !DILocation(line: 175, column: 3, scope: !603)
!614 = distinct !DISubprogram(name: "__uint64_identity", scope: !615, file: !615, line: 45, type: !616, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!615 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h", directory: "")
!616 = !DISubroutineType(types: !617)
!617 = !{!12, !12}
!618 = !DILocalVariable(name: "__x", arg: 1, scope: !614, file: !615, line: 45, type: !12)
!619 = !DILocation(line: 0, scope: !614)
!620 = !DILocation(line: 47, column: 3, scope: !614)
!621 = distinct !DISubprogram(name: "montgomery_ladder", scope: !3, file: !3, line: 101, type: !622, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !35, !485, !35}
!624 = !DILocalVariable(name: "out", arg: 1, scope: !621, file: !3, line: 101, type: !35)
!625 = !DILocation(line: 0, scope: !621)
!626 = !DILocalVariable(name: "key", arg: 2, scope: !621, file: !3, line: 101, type: !485)
!627 = !DILocalVariable(name: "init", arg: 3, scope: !621, file: !3, line: 101, type: !35)
!628 = !DILocalVariable(name: "tmp2", scope: !621, file: !3, line: 103, type: !629)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1280, elements: !492)
!630 = !DILocation(line: 103, column: 25, scope: !621)
!631 = !DILocalVariable(name: "_i", scope: !632, file: !3, line: 104, type: !6)
!632 = distinct !DILexicalBlock(scope: !621, file: !3, line: 104, column: 3)
!633 = !DILocation(line: 0, scope: !632)
!634 = !DILocation(line: 104, column: 8, scope: !632)
!635 = !DILocation(line: 104, column: 29, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !3, line: 104, column: 3)
!637 = !DILocation(line: 104, column: 3, scope: !632)
!638 = !DILocation(line: 105, column: 16, scope: !636)
!639 = !DILocation(line: 105, column: 5, scope: !636)
!640 = !DILocation(line: 105, column: 14, scope: !636)
!641 = !DILocation(line: 104, column: 46, scope: !636)
!642 = !DILocation(line: 104, column: 3, scope: !636)
!643 = distinct !{!643, !637, !644, !58}
!644 = !DILocation(line: 105, column: 60, scope: !632)
!645 = !DILocalVariable(name: "p01_tmp1_swap", scope: !621, file: !3, line: 106, type: !646)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2624, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 41)
!649 = !DILocation(line: 106, column: 12, scope: !621)
!650 = !DILocation(line: 107, column: 18, scope: !621)
!651 = !DILocalVariable(name: "p0", scope: !621, file: !3, line: 107, type: !35)
!652 = !DILocation(line: 108, column: 19, scope: !621)
!653 = !DILocalVariable(name: "p01", scope: !621, file: !3, line: 108, type: !35)
!654 = !DILocalVariable(name: "p03", scope: !621, file: !3, line: 109, type: !35)
!655 = !DILocation(line: 110, column: 23, scope: !621)
!656 = !DILocalVariable(name: "p11", scope: !621, file: !3, line: 110, type: !35)
!657 = !DILocation(line: 111, column: 3, scope: !621)
!658 = !DILocalVariable(name: "x0", scope: !621, file: !3, line: 112, type: !35)
!659 = !DILocation(line: 113, column: 22, scope: !621)
!660 = !DILocalVariable(name: "z0", scope: !621, file: !3, line: 113, type: !35)
!661 = !DILocation(line: 114, column: 3, scope: !621)
!662 = !DILocation(line: 114, column: 10, scope: !621)
!663 = !DILocation(line: 115, column: 3, scope: !621)
!664 = !DILocation(line: 115, column: 10, scope: !621)
!665 = !DILocation(line: 116, column: 3, scope: !621)
!666 = !DILocation(line: 116, column: 10, scope: !621)
!667 = !DILocation(line: 117, column: 3, scope: !621)
!668 = !DILocation(line: 117, column: 10, scope: !621)
!669 = !DILocation(line: 118, column: 3, scope: !621)
!670 = !DILocation(line: 118, column: 10, scope: !621)
!671 = !DILocation(line: 119, column: 3, scope: !621)
!672 = !DILocation(line: 119, column: 10, scope: !621)
!673 = !DILocation(line: 120, column: 3, scope: !621)
!674 = !DILocation(line: 120, column: 10, scope: !621)
!675 = !DILocation(line: 121, column: 3, scope: !621)
!676 = !DILocation(line: 121, column: 10, scope: !621)
!677 = !DILocation(line: 122, column: 3, scope: !621)
!678 = !DILocation(line: 122, column: 10, scope: !621)
!679 = !DILocation(line: 123, column: 3, scope: !621)
!680 = !DILocation(line: 123, column: 10, scope: !621)
!681 = !DILocation(line: 124, column: 24, scope: !621)
!682 = !DILocalVariable(name: "p01_tmp1", scope: !621, file: !3, line: 124, type: !35)
!683 = !DILocation(line: 125, column: 25, scope: !621)
!684 = !DILocalVariable(name: "p01_tmp11", scope: !621, file: !3, line: 125, type: !35)
!685 = !DILocation(line: 126, column: 19, scope: !621)
!686 = !DILocalVariable(name: "nq1", scope: !621, file: !3, line: 126, type: !35)
!687 = !DILocation(line: 127, column: 22, scope: !621)
!688 = !DILocation(line: 127, column: 36, scope: !621)
!689 = !DILocalVariable(name: "nq_p11", scope: !621, file: !3, line: 127, type: !35)
!690 = !DILocation(line: 128, column: 20, scope: !621)
!691 = !DILocation(line: 128, column: 34, scope: !621)
!692 = !DILocalVariable(name: "swap", scope: !621, file: !3, line: 128, type: !35)
!693 = !DILocation(line: 129, column: 3, scope: !621)
!694 = !DILocation(line: 130, column: 41, scope: !621)
!695 = !DILocation(line: 130, column: 3, scope: !621)
!696 = !DILocation(line: 131, column: 3, scope: !621)
!697 = !DILocation(line: 131, column: 12, scope: !621)
!698 = !DILocalVariable(name: "i", scope: !699, file: !3, line: 132, type: !6)
!699 = distinct !DILexicalBlock(scope: !621, file: !3, line: 132, column: 3)
!700 = !DILocation(line: 0, scope: !699)
!701 = !DILocation(line: 132, column: 8, scope: !699)
!702 = !DILocation(line: 132, column: 37, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 132, column: 3)
!704 = !DILocation(line: 132, column: 3, scope: !699)
!705 = !DILocation(line: 134, column: 27, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 133, column: 3)
!707 = !DILocalVariable(name: "p01_tmp12", scope: !706, file: !3, line: 134, type: !35)
!708 = !DILocation(line: 0, scope: !706)
!709 = !DILocation(line: 135, column: 23, scope: !706)
!710 = !DILocation(line: 135, column: 37, scope: !706)
!711 = !DILocalVariable(name: "swap1", scope: !706, file: !3, line: 135, type: !35)
!712 = !DILocalVariable(name: "nq2", scope: !706, file: !3, line: 136, type: !35)
!713 = !DILocation(line: 137, column: 34, scope: !706)
!714 = !DILocalVariable(name: "nq_p12", scope: !706, file: !3, line: 137, type: !35)
!715 = !DILocation(line: 140, column: 38, scope: !706)
!716 = !DILocation(line: 141, column: 7, scope: !706)
!717 = !DILocation(line: 140, column: 18, scope: !706)
!718 = !DILocation(line: 142, column: 26, scope: !706)
!719 = !DILocation(line: 142, column: 31, scope: !706)
!720 = !DILocation(line: 142, column: 7, scope: !706)
!721 = !DILocation(line: 143, column: 7, scope: !706)
!722 = !DILocation(line: 140, column: 7, scope: !706)
!723 = !DILocalVariable(name: "bit", scope: !706, file: !3, line: 139, type: !11)
!724 = !DILocation(line: 144, column: 19, scope: !706)
!725 = !DILocation(line: 144, column: 29, scope: !706)
!726 = !DILocalVariable(name: "sw", scope: !706, file: !3, line: 144, type: !11)
!727 = !DILocation(line: 145, column: 5, scope: !706)
!728 = !DILocation(line: 146, column: 43, scope: !706)
!729 = !DILocation(line: 146, column: 5, scope: !706)
!730 = !DILocation(line: 147, column: 5, scope: !706)
!731 = !DILocation(line: 147, column: 15, scope: !706)
!732 = !DILocation(line: 148, column: 3, scope: !706)
!733 = !DILocation(line: 132, column: 56, scope: !703)
!734 = !DILocation(line: 132, column: 3, scope: !703)
!735 = distinct !{!735, !704, !736, !58}
!736 = !DILocation(line: 148, column: 3, scope: !699)
!737 = !DILocation(line: 149, column: 17, scope: !621)
!738 = !DILocalVariable(name: "sw", scope: !621, file: !3, line: 149, type: !11)
!739 = !DILocation(line: 150, column: 3, scope: !621)
!740 = !DILocalVariable(name: "nq10", scope: !621, file: !3, line: 151, type: !35)
!741 = !DILocation(line: 152, column: 29, scope: !621)
!742 = !DILocalVariable(name: "tmp1", scope: !621, file: !3, line: 152, type: !35)
!743 = !DILocation(line: 153, column: 28, scope: !621)
!744 = !DILocation(line: 153, column: 3, scope: !621)
!745 = !DILocation(line: 154, column: 28, scope: !621)
!746 = !DILocation(line: 154, column: 3, scope: !621)
!747 = !DILocation(line: 155, column: 28, scope: !621)
!748 = !DILocation(line: 155, column: 3, scope: !621)
!749 = !DILocation(line: 156, column: 3, scope: !621)
!750 = !DILocation(line: 157, column: 1, scope: !621)
!751 = distinct !DISubprogram(name: "encode_point", scope: !3, file: !3, line: 215, type: !752, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !485, !35}
!754 = !DILocalVariable(name: "o", arg: 1, scope: !751, file: !3, line: 215, type: !485)
!755 = !DILocation(line: 0, scope: !751)
!756 = !DILocalVariable(name: "i", arg: 2, scope: !751, file: !3, line: 215, type: !35)
!757 = !DILocalVariable(name: "x", scope: !751, file: !3, line: 217, type: !35)
!758 = !DILocation(line: 218, column: 19, scope: !751)
!759 = !DILocalVariable(name: "z", scope: !751, file: !3, line: 218, type: !35)
!760 = !DILocalVariable(name: "tmp", scope: !751, file: !3, line: 219, type: !761)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 5)
!764 = !DILocation(line: 219, column: 12, scope: !751)
!765 = !DILocalVariable(name: "u64s", scope: !751, file: !3, line: 220, type: !496)
!766 = !DILocation(line: 220, column: 12, scope: !751)
!767 = !DILocalVariable(name: "tmp_w", scope: !751, file: !3, line: 221, type: !629)
!768 = !DILocation(line: 221, column: 25, scope: !751)
!769 = !DILocalVariable(name: "_i", scope: !770, file: !3, line: 222, type: !6)
!770 = distinct !DILexicalBlock(scope: !751, file: !3, line: 222, column: 3)
!771 = !DILocation(line: 0, scope: !770)
!772 = !DILocation(line: 222, column: 8, scope: !770)
!773 = !DILocation(line: 222, column: 29, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 222, column: 3)
!775 = !DILocation(line: 222, column: 3, scope: !770)
!776 = !DILocation(line: 223, column: 17, scope: !774)
!777 = !DILocation(line: 223, column: 5, scope: !774)
!778 = !DILocation(line: 223, column: 15, scope: !774)
!779 = !DILocation(line: 222, column: 46, scope: !774)
!780 = !DILocation(line: 222, column: 3, scope: !774)
!781 = distinct !{!781, !775, !782, !58}
!782 = !DILocation(line: 223, column: 61, scope: !770)
!783 = !DILocation(line: 224, column: 27, scope: !751)
!784 = !DILocation(line: 224, column: 35, scope: !751)
!785 = !DILocation(line: 224, column: 3, scope: !751)
!786 = !DILocation(line: 225, column: 37, scope: !751)
!787 = !DILocation(line: 225, column: 42, scope: !751)
!788 = !DILocation(line: 225, column: 50, scope: !751)
!789 = !DILocation(line: 225, column: 3, scope: !751)
!790 = !DILocation(line: 226, column: 44, scope: !751)
!791 = !DILocation(line: 226, column: 50, scope: !751)
!792 = !DILocation(line: 226, column: 3, scope: !751)
!793 = !DILocation(line: 227, column: 3, scope: !751)
!794 = !DILocalVariable(name: "i0", scope: !795, file: !3, line: 227, type: !6)
!795 = distinct !DILexicalBlock(scope: !751, file: !3, line: 227, column: 3)
!796 = !DILocation(line: 0, scope: !795)
!797 = !DILocation(line: 227, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 227, column: 3)
!799 = !DILocation(line: 227, column: 3, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !3, line: 227, column: 3)
!801 = !DILocation(line: 227, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !795, file: !3, line: 227, column: 3)
!803 = !DILocation(line: 227, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !795, file: !3, line: 227, column: 3)
!805 = !DILocation(line: 227, column: 3, scope: !795)
!806 = !DILocation(line: 232, column: 1, scope: !751)
!807 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_store_felem", scope: !61, file: !61, line: 601, type: !808, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !35, !35}
!810 = !DILocalVariable(name: "u64s", arg: 1, scope: !807, file: !61, line: 601, type: !35)
!811 = !DILocation(line: 0, scope: !807)
!812 = !DILocalVariable(name: "f", arg: 2, scope: !807, file: !61, line: 601, type: !35)
!813 = !DILocation(line: 603, column: 17, scope: !807)
!814 = !DILocalVariable(name: "f0", scope: !807, file: !61, line: 603, type: !11)
!815 = !DILocation(line: 604, column: 17, scope: !807)
!816 = !DILocalVariable(name: "f1", scope: !807, file: !61, line: 604, type: !11)
!817 = !DILocation(line: 605, column: 17, scope: !807)
!818 = !DILocalVariable(name: "f2", scope: !807, file: !61, line: 605, type: !11)
!819 = !DILocation(line: 606, column: 17, scope: !807)
!820 = !DILocalVariable(name: "f3", scope: !807, file: !61, line: 606, type: !11)
!821 = !DILocation(line: 607, column: 17, scope: !807)
!822 = !DILocalVariable(name: "f4", scope: !807, file: !61, line: 607, type: !11)
!823 = !DILocation(line: 608, column: 20, scope: !807)
!824 = !DILocalVariable(name: "l_", scope: !807, file: !61, line: 608, type: !11)
!825 = !DILocation(line: 609, column: 22, scope: !807)
!826 = !DILocalVariable(name: "tmp0", scope: !807, file: !61, line: 609, type: !11)
!827 = !DILocation(line: 610, column: 20, scope: !807)
!828 = !DILocalVariable(name: "c0", scope: !807, file: !61, line: 610, type: !11)
!829 = !DILocation(line: 611, column: 21, scope: !807)
!830 = !DILocalVariable(name: "l_0", scope: !807, file: !61, line: 611, type: !11)
!831 = !DILocation(line: 612, column: 23, scope: !807)
!832 = !DILocalVariable(name: "tmp1", scope: !807, file: !61, line: 612, type: !11)
!833 = !DILocation(line: 613, column: 21, scope: !807)
!834 = !DILocalVariable(name: "c1", scope: !807, file: !61, line: 613, type: !11)
!835 = !DILocation(line: 614, column: 21, scope: !807)
!836 = !DILocalVariable(name: "l_1", scope: !807, file: !61, line: 614, type: !11)
!837 = !DILocation(line: 615, column: 23, scope: !807)
!838 = !DILocalVariable(name: "tmp2", scope: !807, file: !61, line: 615, type: !11)
!839 = !DILocation(line: 616, column: 21, scope: !807)
!840 = !DILocalVariable(name: "c2", scope: !807, file: !61, line: 616, type: !11)
!841 = !DILocation(line: 617, column: 21, scope: !807)
!842 = !DILocalVariable(name: "l_2", scope: !807, file: !61, line: 617, type: !11)
!843 = !DILocation(line: 618, column: 23, scope: !807)
!844 = !DILocalVariable(name: "tmp3", scope: !807, file: !61, line: 618, type: !11)
!845 = !DILocation(line: 619, column: 21, scope: !807)
!846 = !DILocalVariable(name: "c3", scope: !807, file: !61, line: 619, type: !11)
!847 = !DILocation(line: 620, column: 21, scope: !807)
!848 = !DILocalVariable(name: "l_3", scope: !807, file: !61, line: 620, type: !11)
!849 = !DILocation(line: 621, column: 23, scope: !807)
!850 = !DILocalVariable(name: "tmp4", scope: !807, file: !61, line: 621, type: !11)
!851 = !DILocation(line: 622, column: 21, scope: !807)
!852 = !DILocalVariable(name: "c4", scope: !807, file: !61, line: 622, type: !11)
!853 = !DILocation(line: 623, column: 28, scope: !807)
!854 = !DILocation(line: 623, column: 23, scope: !807)
!855 = !DILocalVariable(name: "l_4", scope: !807, file: !61, line: 623, type: !11)
!856 = !DILocation(line: 624, column: 24, scope: !807)
!857 = !DILocalVariable(name: "tmp0_", scope: !807, file: !61, line: 624, type: !11)
!858 = !DILocation(line: 625, column: 21, scope: !807)
!859 = !DILocalVariable(name: "c5", scope: !807, file: !61, line: 625, type: !11)
!860 = !DILocalVariable(name: "f01", scope: !807, file: !61, line: 626, type: !11)
!861 = !DILocation(line: 627, column: 23, scope: !807)
!862 = !DILocalVariable(name: "f11", scope: !807, file: !61, line: 627, type: !11)
!863 = !DILocalVariable(name: "f21", scope: !807, file: !61, line: 628, type: !11)
!864 = !DILocalVariable(name: "f31", scope: !807, file: !61, line: 629, type: !11)
!865 = !DILocalVariable(name: "f41", scope: !807, file: !61, line: 630, type: !11)
!866 = !DILocation(line: 631, column: 17, scope: !807)
!867 = !DILocalVariable(name: "m0", scope: !807, file: !61, line: 631, type: !11)
!868 = !DILocation(line: 632, column: 17, scope: !807)
!869 = !DILocalVariable(name: "m1", scope: !807, file: !61, line: 632, type: !11)
!870 = !DILocation(line: 633, column: 17, scope: !807)
!871 = !DILocalVariable(name: "m2", scope: !807, file: !61, line: 633, type: !11)
!872 = !DILocation(line: 634, column: 17, scope: !807)
!873 = !DILocalVariable(name: "m3", scope: !807, file: !61, line: 634, type: !11)
!874 = !DILocation(line: 635, column: 17, scope: !807)
!875 = !DILocalVariable(name: "m4", scope: !807, file: !61, line: 635, type: !11)
!876 = !DILocation(line: 636, column: 25, scope: !807)
!877 = !DILocation(line: 636, column: 31, scope: !807)
!878 = !DILocation(line: 636, column: 37, scope: !807)
!879 = !DILocation(line: 636, column: 43, scope: !807)
!880 = !DILocalVariable(name: "mask", scope: !807, file: !61, line: 636, type: !11)
!881 = !DILocation(line: 637, column: 30, scope: !807)
!882 = !DILocation(line: 637, column: 22, scope: !807)
!883 = !DILocalVariable(name: "f0_", scope: !807, file: !61, line: 637, type: !11)
!884 = !DILocation(line: 638, column: 30, scope: !807)
!885 = !DILocation(line: 638, column: 22, scope: !807)
!886 = !DILocalVariable(name: "f1_", scope: !807, file: !61, line: 638, type: !11)
!887 = !DILocation(line: 639, column: 30, scope: !807)
!888 = !DILocation(line: 639, column: 22, scope: !807)
!889 = !DILocalVariable(name: "f2_", scope: !807, file: !61, line: 639, type: !11)
!890 = !DILocation(line: 640, column: 30, scope: !807)
!891 = !DILocation(line: 640, column: 22, scope: !807)
!892 = !DILocalVariable(name: "f3_", scope: !807, file: !61, line: 640, type: !11)
!893 = !DILocation(line: 641, column: 30, scope: !807)
!894 = !DILocation(line: 641, column: 22, scope: !807)
!895 = !DILocalVariable(name: "f4_", scope: !807, file: !61, line: 641, type: !11)
!896 = !DILocalVariable(name: "f02", scope: !807, file: !61, line: 642, type: !11)
!897 = !DILocalVariable(name: "f12", scope: !807, file: !61, line: 643, type: !11)
!898 = !DILocalVariable(name: "f22", scope: !807, file: !61, line: 644, type: !11)
!899 = !DILocalVariable(name: "f32", scope: !807, file: !61, line: 645, type: !11)
!900 = !DILocalVariable(name: "f42", scope: !807, file: !61, line: 646, type: !11)
!901 = !DILocation(line: 647, column: 28, scope: !807)
!902 = !DILocation(line: 647, column: 22, scope: !807)
!903 = !DILocalVariable(name: "o00", scope: !807, file: !61, line: 647, type: !11)
!904 = !DILocation(line: 648, column: 22, scope: !807)
!905 = !DILocation(line: 648, column: 45, scope: !807)
!906 = !DILocation(line: 648, column: 39, scope: !807)
!907 = !DILocalVariable(name: "o10", scope: !807, file: !61, line: 648, type: !11)
!908 = !DILocation(line: 649, column: 22, scope: !807)
!909 = !DILocation(line: 649, column: 45, scope: !807)
!910 = !DILocation(line: 649, column: 39, scope: !807)
!911 = !DILocalVariable(name: "o20", scope: !807, file: !61, line: 649, type: !11)
!912 = !DILocation(line: 650, column: 22, scope: !807)
!913 = !DILocation(line: 650, column: 45, scope: !807)
!914 = !DILocation(line: 650, column: 39, scope: !807)
!915 = !DILocalVariable(name: "o30", scope: !807, file: !61, line: 650, type: !11)
!916 = !DILocalVariable(name: "o0", scope: !807, file: !61, line: 651, type: !11)
!917 = !DILocalVariable(name: "o1", scope: !807, file: !61, line: 652, type: !11)
!918 = !DILocalVariable(name: "o2", scope: !807, file: !61, line: 653, type: !11)
!919 = !DILocalVariable(name: "o3", scope: !807, file: !61, line: 654, type: !11)
!920 = !DILocation(line: 655, column: 3, scope: !807)
!921 = !DILocation(line: 655, column: 12, scope: !807)
!922 = !DILocation(line: 656, column: 3, scope: !807)
!923 = !DILocation(line: 656, column: 12, scope: !807)
!924 = !DILocation(line: 657, column: 3, scope: !807)
!925 = !DILocation(line: 657, column: 12, scope: !807)
!926 = !DILocation(line: 658, column: 3, scope: !807)
!927 = !DILocation(line: 658, column: 12, scope: !807)
!928 = !DILocation(line: 659, column: 1, scope: !807)
!929 = distinct !DISubprogram(name: "store64", scope: !604, file: !604, line: 186, type: !930, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !485, !11}
!932 = !DILocalVariable(name: "b", arg: 1, scope: !929, file: !604, line: 186, type: !485)
!933 = !DILocation(line: 0, scope: !929)
!934 = !DILocalVariable(name: "i", arg: 2, scope: !929, file: !604, line: 186, type: !11)
!935 = !DILocation(line: 186, column: 49, scope: !929)
!936 = !DILocation(line: 187, column: 3, scope: !929)
!937 = !DILocation(line: 188, column: 1, scope: !929)
!938 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !939, file: !939, line: 44, type: !940, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!939 = !DIFile(filename: "../hacl-star/dist/karamel/krmllib/dist/minimal/FStar_UInt_8_16_32_64.h", directory: "/home/luwei/bech-back/hacl/curve25519-51")
!940 = !DISubroutineType(types: !941)
!941 = !{!11, !11, !11}
!942 = !DILocalVariable(name: "a", arg: 1, scope: !938, file: !939, line: 44, type: !11)
!943 = !DILocation(line: 0, scope: !938)
!944 = !DILocalVariable(name: "b", arg: 2, scope: !938, file: !939, line: 44, type: !11)
!945 = !DILocalVariable(name: "x", scope: !938, file: !939, line: 46, type: !11)
!946 = !DILocalVariable(name: "y", scope: !938, file: !939, line: 47, type: !11)
!947 = !DILocation(line: 48, column: 24, scope: !938)
!948 = !DILocalVariable(name: "x_xor_y", scope: !938, file: !939, line: 48, type: !11)
!949 = !DILocation(line: 49, column: 24, scope: !938)
!950 = !DILocalVariable(name: "x_sub_y", scope: !938, file: !939, line: 49, type: !11)
!951 = !DILocation(line: 50, column: 36, scope: !938)
!952 = !DILocalVariable(name: "x_sub_y_xor_y", scope: !938, file: !939, line: 50, type: !11)
!953 = !DILocation(line: 51, column: 24, scope: !938)
!954 = !DILocalVariable(name: "q", scope: !938, file: !939, line: 51, type: !11)
!955 = !DILocation(line: 52, column: 24, scope: !938)
!956 = !DILocalVariable(name: "x_xor_q", scope: !938, file: !939, line: 52, type: !11)
!957 = !DILocation(line: 53, column: 31, scope: !938)
!958 = !DILocalVariable(name: "x_xor_q_", scope: !938, file: !939, line: 53, type: !11)
!959 = !DILocation(line: 54, column: 19, scope: !938)
!960 = !DILocation(line: 54, column: 3, scope: !938)
!961 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !939, file: !939, line: 35, type: !940, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!962 = !DILocalVariable(name: "a", arg: 1, scope: !961, file: !939, line: 35, type: !11)
!963 = !DILocation(line: 0, scope: !961)
!964 = !DILocalVariable(name: "b", arg: 2, scope: !961, file: !939, line: 35, type: !11)
!965 = !DILocation(line: 37, column: 18, scope: !961)
!966 = !DILocalVariable(name: "x", scope: !961, file: !939, line: 37, type: !11)
!967 = !DILocation(line: 38, column: 22, scope: !961)
!968 = !DILocation(line: 38, column: 25, scope: !961)
!969 = !DILocalVariable(name: "minus_x", scope: !961, file: !939, line: 38, type: !11)
!970 = !DILocation(line: 39, column: 29, scope: !961)
!971 = !DILocalVariable(name: "x_or_minus_x", scope: !961, file: !939, line: 39, type: !11)
!972 = !DILocation(line: 40, column: 31, scope: !961)
!973 = !DILocalVariable(name: "xnx", scope: !961, file: !939, line: 40, type: !11)
!974 = !DILocation(line: 41, column: 14, scope: !961)
!975 = !DILocation(line: 41, column: 3, scope: !961)
!976 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_cswap2", scope: !61, file: !61, line: 662, type: !977, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !11, !35, !35}
!979 = !DILocalVariable(name: "bit", arg: 1, scope: !976, file: !61, line: 662, type: !11)
!980 = !DILocation(line: 0, scope: !976)
!981 = !DILocalVariable(name: "p1", arg: 2, scope: !976, file: !61, line: 662, type: !35)
!982 = !DILocalVariable(name: "p2", arg: 3, scope: !976, file: !61, line: 662, type: !35)
!983 = !DILocation(line: 664, column: 32, scope: !976)
!984 = !DILocalVariable(name: "mask", scope: !976, file: !61, line: 664, type: !11)
!985 = !DILocation(line: 665, column: 3, scope: !976)
!986 = !DILocalVariable(name: "i", scope: !987, file: !61, line: 665, type: !6)
!987 = distinct !DILexicalBlock(scope: !976, file: !61, line: 665, column: 3)
!988 = !DILocation(line: 0, scope: !987)
!989 = !DILocation(line: 665, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!991 = !DILocalVariable(name: "dummy", scope: !990, file: !61, line: 665, type: !11)
!992 = !DILocation(line: 0, scope: !990)
!993 = !DILocation(line: 665, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!995 = !DILocalVariable(name: "dummy", scope: !994, file: !61, line: 665, type: !11)
!996 = !DILocation(line: 0, scope: !994)
!997 = !DILocation(line: 665, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!999 = !DILocalVariable(name: "dummy", scope: !998, file: !61, line: 665, type: !11)
!1000 = !DILocation(line: 0, scope: !998)
!1001 = !DILocation(line: 665, column: 3, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1003 = !DILocalVariable(name: "dummy", scope: !1002, file: !61, line: 665, type: !11)
!1004 = !DILocation(line: 0, scope: !1002)
!1005 = !DILocation(line: 665, column: 3, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1007 = !DILocalVariable(name: "dummy", scope: !1006, file: !61, line: 665, type: !11)
!1008 = !DILocation(line: 0, scope: !1006)
!1009 = !DILocation(line: 665, column: 3, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1011 = !DILocalVariable(name: "dummy", scope: !1010, file: !61, line: 665, type: !11)
!1012 = !DILocation(line: 0, scope: !1010)
!1013 = !DILocation(line: 665, column: 3, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1015 = !DILocalVariable(name: "dummy", scope: !1014, file: !61, line: 665, type: !11)
!1016 = !DILocation(line: 0, scope: !1014)
!1017 = !DILocation(line: 665, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1019 = !DILocalVariable(name: "dummy", scope: !1018, file: !61, line: 665, type: !11)
!1020 = !DILocation(line: 0, scope: !1018)
!1021 = !DILocation(line: 665, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1023 = !DILocalVariable(name: "dummy", scope: !1022, file: !61, line: 665, type: !11)
!1024 = !DILocation(line: 0, scope: !1022)
!1025 = !DILocation(line: 665, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !987, file: !61, line: 665, column: 3)
!1027 = !DILocalVariable(name: "dummy", scope: !1026, file: !61, line: 665, type: !11)
!1028 = !DILocation(line: 0, scope: !1026)
!1029 = !DILocation(line: 665, column: 3, scope: !987)
!1030 = !DILocation(line: 672, column: 1, scope: !976)
!1031 = distinct !DISubprogram(name: "point_add_and_double", scope: !3, file: !3, line: 33, type: !62, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1032 = !DILocalVariable(name: "q", arg: 1, scope: !1031, file: !3, line: 33, type: !35)
!1033 = !DILocation(line: 0, scope: !1031)
!1034 = !DILocalVariable(name: "p01_tmp1", arg: 2, scope: !1031, file: !3, line: 33, type: !35)
!1035 = !DILocalVariable(name: "tmp2", arg: 3, scope: !1031, file: !3, line: 33, type: !36)
!1036 = !DILocalVariable(name: "nq", scope: !1031, file: !3, line: 35, type: !35)
!1037 = !DILocation(line: 36, column: 30, scope: !1031)
!1038 = !DILocalVariable(name: "nq_p1", scope: !1031, file: !3, line: 36, type: !35)
!1039 = !DILocation(line: 37, column: 29, scope: !1031)
!1040 = !DILocalVariable(name: "tmp1", scope: !1031, file: !3, line: 37, type: !35)
!1041 = !DILocalVariable(name: "x1", scope: !1031, file: !3, line: 38, type: !35)
!1042 = !DILocalVariable(name: "x2", scope: !1031, file: !3, line: 39, type: !35)
!1043 = !DILocation(line: 40, column: 21, scope: !1031)
!1044 = !DILocalVariable(name: "z2", scope: !1031, file: !3, line: 40, type: !35)
!1045 = !DILocation(line: 41, column: 24, scope: !1031)
!1046 = !DILocalVariable(name: "z3", scope: !1031, file: !3, line: 41, type: !35)
!1047 = !DILocalVariable(name: "a", scope: !1031, file: !3, line: 42, type: !35)
!1048 = !DILocation(line: 43, column: 22, scope: !1031)
!1049 = !DILocalVariable(name: "b", scope: !1031, file: !3, line: 43, type: !35)
!1050 = !DILocalVariable(name: "ab", scope: !1031, file: !3, line: 44, type: !35)
!1051 = !DILocation(line: 45, column: 23, scope: !1031)
!1052 = !DILocalVariable(name: "dc", scope: !1031, file: !3, line: 45, type: !35)
!1053 = !DILocation(line: 46, column: 3, scope: !1031)
!1054 = !DILocation(line: 47, column: 3, scope: !1031)
!1055 = !DILocalVariable(name: "x3", scope: !1031, file: !3, line: 48, type: !35)
!1056 = !DILocation(line: 49, column: 25, scope: !1031)
!1057 = !DILocalVariable(name: "z31", scope: !1031, file: !3, line: 49, type: !35)
!1058 = !DILocalVariable(name: "d0", scope: !1031, file: !3, line: 50, type: !35)
!1059 = !DILocation(line: 51, column: 21, scope: !1031)
!1060 = !DILocalVariable(name: "c0", scope: !1031, file: !3, line: 51, type: !35)
!1061 = !DILocation(line: 52, column: 3, scope: !1031)
!1062 = !DILocation(line: 53, column: 3, scope: !1031)
!1063 = !DILocation(line: 54, column: 3, scope: !1031)
!1064 = !DILocation(line: 55, column: 3, scope: !1031)
!1065 = !DILocation(line: 56, column: 3, scope: !1031)
!1066 = !DILocalVariable(name: "a1", scope: !1031, file: !3, line: 57, type: !35)
!1067 = !DILocation(line: 58, column: 23, scope: !1031)
!1068 = !DILocalVariable(name: "b1", scope: !1031, file: !3, line: 58, type: !35)
!1069 = !DILocation(line: 59, column: 22, scope: !1031)
!1070 = !DILocalVariable(name: "d", scope: !1031, file: !3, line: 59, type: !35)
!1071 = !DILocation(line: 60, column: 22, scope: !1031)
!1072 = !DILocalVariable(name: "c", scope: !1031, file: !3, line: 60, type: !35)
!1073 = !DILocalVariable(name: "ab1", scope: !1031, file: !3, line: 61, type: !35)
!1074 = !DILocation(line: 62, column: 24, scope: !1031)
!1075 = !DILocalVariable(name: "dc1", scope: !1031, file: !3, line: 62, type: !35)
!1076 = !DILocation(line: 63, column: 3, scope: !1031)
!1077 = !DILocation(line: 64, column: 3, scope: !1031)
!1078 = !DILocation(line: 65, column: 12, scope: !1031)
!1079 = !DILocation(line: 65, column: 3, scope: !1031)
!1080 = !DILocation(line: 65, column: 10, scope: !1031)
!1081 = !DILocation(line: 66, column: 12, scope: !1031)
!1082 = !DILocation(line: 66, column: 3, scope: !1031)
!1083 = !DILocation(line: 66, column: 10, scope: !1031)
!1084 = !DILocation(line: 67, column: 12, scope: !1031)
!1085 = !DILocation(line: 67, column: 3, scope: !1031)
!1086 = !DILocation(line: 67, column: 10, scope: !1031)
!1087 = !DILocation(line: 68, column: 12, scope: !1031)
!1088 = !DILocation(line: 68, column: 3, scope: !1031)
!1089 = !DILocation(line: 68, column: 10, scope: !1031)
!1090 = !DILocation(line: 69, column: 12, scope: !1031)
!1091 = !DILocation(line: 69, column: 3, scope: !1031)
!1092 = !DILocation(line: 69, column: 10, scope: !1031)
!1093 = !DILocation(line: 70, column: 3, scope: !1031)
!1094 = !DILocation(line: 71, column: 3, scope: !1031)
!1095 = !DILocation(line: 72, column: 3, scope: !1031)
!1096 = !DILocation(line: 73, column: 3, scope: !1031)
!1097 = !DILocation(line: 74, column: 3, scope: !1031)
!1098 = !DILocation(line: 75, column: 1, scope: !1031)
!1099 = distinct !DISubprogram(name: "point_double", scope: !3, file: !3, line: 77, type: !62, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1100 = !DILocalVariable(name: "nq", arg: 1, scope: !1099, file: !3, line: 77, type: !35)
!1101 = !DILocation(line: 0, scope: !1099)
!1102 = !DILocalVariable(name: "tmp1", arg: 2, scope: !1099, file: !3, line: 77, type: !35)
!1103 = !DILocalVariable(name: "tmp2", arg: 3, scope: !1099, file: !3, line: 77, type: !36)
!1104 = !DILocalVariable(name: "x2", scope: !1099, file: !3, line: 79, type: !35)
!1105 = !DILocation(line: 80, column: 21, scope: !1099)
!1106 = !DILocalVariable(name: "z2", scope: !1099, file: !3, line: 80, type: !35)
!1107 = !DILocalVariable(name: "a", scope: !1099, file: !3, line: 81, type: !35)
!1108 = !DILocation(line: 82, column: 22, scope: !1099)
!1109 = !DILocalVariable(name: "b", scope: !1099, file: !3, line: 82, type: !35)
!1110 = !DILocation(line: 83, column: 22, scope: !1099)
!1111 = !DILocalVariable(name: "d", scope: !1099, file: !3, line: 83, type: !35)
!1112 = !DILocation(line: 84, column: 22, scope: !1099)
!1113 = !DILocalVariable(name: "c", scope: !1099, file: !3, line: 84, type: !35)
!1114 = !DILocalVariable(name: "ab", scope: !1099, file: !3, line: 85, type: !35)
!1115 = !DILocation(line: 86, column: 23, scope: !1099)
!1116 = !DILocalVariable(name: "dc", scope: !1099, file: !3, line: 86, type: !35)
!1117 = !DILocation(line: 87, column: 3, scope: !1099)
!1118 = !DILocation(line: 88, column: 3, scope: !1099)
!1119 = !DILocation(line: 89, column: 3, scope: !1099)
!1120 = !DILocation(line: 90, column: 11, scope: !1099)
!1121 = !DILocation(line: 90, column: 3, scope: !1099)
!1122 = !DILocation(line: 90, column: 9, scope: !1099)
!1123 = !DILocation(line: 91, column: 11, scope: !1099)
!1124 = !DILocation(line: 91, column: 3, scope: !1099)
!1125 = !DILocation(line: 91, column: 9, scope: !1099)
!1126 = !DILocation(line: 92, column: 11, scope: !1099)
!1127 = !DILocation(line: 92, column: 3, scope: !1099)
!1128 = !DILocation(line: 92, column: 9, scope: !1099)
!1129 = !DILocation(line: 93, column: 11, scope: !1099)
!1130 = !DILocation(line: 93, column: 3, scope: !1099)
!1131 = !DILocation(line: 93, column: 9, scope: !1099)
!1132 = !DILocation(line: 94, column: 11, scope: !1099)
!1133 = !DILocation(line: 94, column: 3, scope: !1099)
!1134 = !DILocation(line: 94, column: 9, scope: !1099)
!1135 = !DILocation(line: 95, column: 3, scope: !1099)
!1136 = !DILocation(line: 96, column: 3, scope: !1099)
!1137 = !DILocation(line: 97, column: 3, scope: !1099)
!1138 = !DILocation(line: 98, column: 3, scope: !1099)
!1139 = !DILocation(line: 99, column: 1, scope: !1099)
!1140 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fadd", scope: !61, file: !61, line: 41, type: !1141, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !35, !35, !35}
!1143 = !DILocalVariable(name: "out", arg: 1, scope: !1140, file: !61, line: 41, type: !35)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocalVariable(name: "f1", arg: 2, scope: !1140, file: !61, line: 41, type: !35)
!1146 = !DILocalVariable(name: "f2", arg: 3, scope: !1140, file: !61, line: 41, type: !35)
!1147 = !DILocation(line: 43, column: 18, scope: !1140)
!1148 = !DILocalVariable(name: "f10", scope: !1140, file: !61, line: 43, type: !11)
!1149 = !DILocation(line: 44, column: 18, scope: !1140)
!1150 = !DILocalVariable(name: "f20", scope: !1140, file: !61, line: 44, type: !11)
!1151 = !DILocation(line: 45, column: 18, scope: !1140)
!1152 = !DILocalVariable(name: "f11", scope: !1140, file: !61, line: 45, type: !11)
!1153 = !DILocation(line: 46, column: 18, scope: !1140)
!1154 = !DILocalVariable(name: "f21", scope: !1140, file: !61, line: 46, type: !11)
!1155 = !DILocation(line: 47, column: 18, scope: !1140)
!1156 = !DILocalVariable(name: "f12", scope: !1140, file: !61, line: 47, type: !11)
!1157 = !DILocation(line: 48, column: 18, scope: !1140)
!1158 = !DILocalVariable(name: "f22", scope: !1140, file: !61, line: 48, type: !11)
!1159 = !DILocation(line: 49, column: 18, scope: !1140)
!1160 = !DILocalVariable(name: "f13", scope: !1140, file: !61, line: 49, type: !11)
!1161 = !DILocation(line: 50, column: 18, scope: !1140)
!1162 = !DILocalVariable(name: "f23", scope: !1140, file: !61, line: 50, type: !11)
!1163 = !DILocation(line: 51, column: 18, scope: !1140)
!1164 = !DILocalVariable(name: "f14", scope: !1140, file: !61, line: 51, type: !11)
!1165 = !DILocation(line: 52, column: 18, scope: !1140)
!1166 = !DILocalVariable(name: "f24", scope: !1140, file: !61, line: 52, type: !11)
!1167 = !DILocation(line: 53, column: 17, scope: !1140)
!1168 = !DILocation(line: 53, column: 3, scope: !1140)
!1169 = !DILocation(line: 53, column: 11, scope: !1140)
!1170 = !DILocation(line: 54, column: 17, scope: !1140)
!1171 = !DILocation(line: 54, column: 3, scope: !1140)
!1172 = !DILocation(line: 54, column: 11, scope: !1140)
!1173 = !DILocation(line: 55, column: 17, scope: !1140)
!1174 = !DILocation(line: 55, column: 3, scope: !1140)
!1175 = !DILocation(line: 55, column: 11, scope: !1140)
!1176 = !DILocation(line: 56, column: 17, scope: !1140)
!1177 = !DILocation(line: 56, column: 3, scope: !1140)
!1178 = !DILocation(line: 56, column: 11, scope: !1140)
!1179 = !DILocation(line: 57, column: 17, scope: !1140)
!1180 = !DILocation(line: 57, column: 3, scope: !1140)
!1181 = !DILocation(line: 57, column: 11, scope: !1140)
!1182 = !DILocation(line: 58, column: 1, scope: !1140)
!1183 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fsub", scope: !61, file: !61, line: 60, type: !1141, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1184 = !DILocalVariable(name: "out", arg: 1, scope: !1183, file: !61, line: 60, type: !35)
!1185 = !DILocation(line: 0, scope: !1183)
!1186 = !DILocalVariable(name: "f1", arg: 2, scope: !1183, file: !61, line: 60, type: !35)
!1187 = !DILocalVariable(name: "f2", arg: 3, scope: !1183, file: !61, line: 60, type: !35)
!1188 = !DILocation(line: 62, column: 18, scope: !1183)
!1189 = !DILocalVariable(name: "f10", scope: !1183, file: !61, line: 62, type: !11)
!1190 = !DILocation(line: 63, column: 18, scope: !1183)
!1191 = !DILocalVariable(name: "f20", scope: !1183, file: !61, line: 63, type: !11)
!1192 = !DILocation(line: 64, column: 18, scope: !1183)
!1193 = !DILocalVariable(name: "f11", scope: !1183, file: !61, line: 64, type: !11)
!1194 = !DILocation(line: 65, column: 18, scope: !1183)
!1195 = !DILocalVariable(name: "f21", scope: !1183, file: !61, line: 65, type: !11)
!1196 = !DILocation(line: 66, column: 18, scope: !1183)
!1197 = !DILocalVariable(name: "f12", scope: !1183, file: !61, line: 66, type: !11)
!1198 = !DILocation(line: 67, column: 18, scope: !1183)
!1199 = !DILocalVariable(name: "f22", scope: !1183, file: !61, line: 67, type: !11)
!1200 = !DILocation(line: 68, column: 18, scope: !1183)
!1201 = !DILocalVariable(name: "f13", scope: !1183, file: !61, line: 68, type: !11)
!1202 = !DILocation(line: 69, column: 18, scope: !1183)
!1203 = !DILocalVariable(name: "f23", scope: !1183, file: !61, line: 69, type: !11)
!1204 = !DILocation(line: 70, column: 18, scope: !1183)
!1205 = !DILocalVariable(name: "f14", scope: !1183, file: !61, line: 70, type: !11)
!1206 = !DILocation(line: 71, column: 18, scope: !1183)
!1207 = !DILocalVariable(name: "f24", scope: !1183, file: !61, line: 71, type: !11)
!1208 = !DILocation(line: 72, column: 17, scope: !1183)
!1209 = !DILocation(line: 72, column: 47, scope: !1183)
!1210 = !DILocation(line: 72, column: 3, scope: !1183)
!1211 = !DILocation(line: 72, column: 11, scope: !1183)
!1212 = !DILocation(line: 73, column: 17, scope: !1183)
!1213 = !DILocation(line: 73, column: 47, scope: !1183)
!1214 = !DILocation(line: 73, column: 3, scope: !1183)
!1215 = !DILocation(line: 73, column: 11, scope: !1183)
!1216 = !DILocation(line: 74, column: 17, scope: !1183)
!1217 = !DILocation(line: 74, column: 47, scope: !1183)
!1218 = !DILocation(line: 74, column: 3, scope: !1183)
!1219 = !DILocation(line: 74, column: 11, scope: !1183)
!1220 = !DILocation(line: 75, column: 17, scope: !1183)
!1221 = !DILocation(line: 75, column: 47, scope: !1183)
!1222 = !DILocation(line: 75, column: 3, scope: !1183)
!1223 = !DILocation(line: 75, column: 11, scope: !1183)
!1224 = !DILocation(line: 76, column: 17, scope: !1183)
!1225 = !DILocation(line: 76, column: 47, scope: !1183)
!1226 = !DILocation(line: 76, column: 3, scope: !1183)
!1227 = !DILocation(line: 76, column: 11, scope: !1183)
!1228 = !DILocation(line: 77, column: 1, scope: !1183)
!1229 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fsqr2", scope: !61, file: !61, line: 447, type: !62, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1230 = !DILocalVariable(name: "out", arg: 1, scope: !1229, file: !61, line: 447, type: !35)
!1231 = !DILocation(line: 0, scope: !1229)
!1232 = !DILocalVariable(name: "f", arg: 2, scope: !1229, file: !61, line: 447, type: !35)
!1233 = !DILocalVariable(name: "uu___", arg: 3, scope: !1229, file: !61, line: 447, type: !36)
!1234 = !DILocation(line: 449, column: 18, scope: !1229)
!1235 = !DILocalVariable(name: "f10", scope: !1229, file: !61, line: 449, type: !11)
!1236 = !DILocation(line: 450, column: 18, scope: !1229)
!1237 = !DILocalVariable(name: "f11", scope: !1229, file: !61, line: 450, type: !11)
!1238 = !DILocation(line: 451, column: 18, scope: !1229)
!1239 = !DILocalVariable(name: "f12", scope: !1229, file: !61, line: 451, type: !11)
!1240 = !DILocation(line: 452, column: 18, scope: !1229)
!1241 = !DILocalVariable(name: "f13", scope: !1229, file: !61, line: 452, type: !11)
!1242 = !DILocation(line: 453, column: 18, scope: !1229)
!1243 = !DILocalVariable(name: "f14", scope: !1229, file: !61, line: 453, type: !11)
!1244 = !DILocation(line: 454, column: 18, scope: !1229)
!1245 = !DILocalVariable(name: "f20", scope: !1229, file: !61, line: 454, type: !11)
!1246 = !DILocation(line: 455, column: 18, scope: !1229)
!1247 = !DILocalVariable(name: "f21", scope: !1229, file: !61, line: 455, type: !11)
!1248 = !DILocation(line: 456, column: 18, scope: !1229)
!1249 = !DILocalVariable(name: "f22", scope: !1229, file: !61, line: 456, type: !11)
!1250 = !DILocation(line: 457, column: 18, scope: !1229)
!1251 = !DILocalVariable(name: "f23", scope: !1229, file: !61, line: 457, type: !11)
!1252 = !DILocation(line: 458, column: 18, scope: !1229)
!1253 = !DILocalVariable(name: "f24", scope: !1229, file: !61, line: 458, type: !11)
!1254 = !DILocation(line: 459, column: 31, scope: !1229)
!1255 = !DILocalVariable(name: "d00", scope: !1229, file: !61, line: 459, type: !11)
!1256 = !DILocation(line: 460, column: 31, scope: !1229)
!1257 = !DILocalVariable(name: "d10", scope: !1229, file: !61, line: 460, type: !11)
!1258 = !DILocation(line: 461, column: 32, scope: !1229)
!1259 = !DILocalVariable(name: "d20", scope: !1229, file: !61, line: 461, type: !11)
!1260 = !DILocation(line: 462, column: 32, scope: !1229)
!1261 = !DILocalVariable(name: "d30", scope: !1229, file: !61, line: 462, type: !11)
!1262 = !DILocation(line: 463, column: 34, scope: !1229)
!1263 = !DILocalVariable(name: "d4190", scope: !1229, file: !61, line: 463, type: !11)
!1264 = !DILocation(line: 464, column: 31, scope: !1229)
!1265 = !DILocalVariable(name: "d40", scope: !1229, file: !61, line: 464, type: !11)
!1266 = !DILocation(line: 467, column: 41, scope: !1229)
!1267 = !DILocation(line: 468, column: 9, scope: !1229)
!1268 = !DILocation(line: 467, column: 23, scope: !1229)
!1269 = !DILocation(line: 469, column: 7, scope: !1229)
!1270 = !DILocation(line: 467, column: 5, scope: !1229)
!1271 = !DILocalVariable(name: "s00", scope: !1229, file: !61, line: 466, type: !19)
!1272 = !DILocation(line: 472, column: 41, scope: !1229)
!1273 = !DILocation(line: 473, column: 9, scope: !1229)
!1274 = !DILocation(line: 472, column: 23, scope: !1229)
!1275 = !DILocation(line: 474, column: 7, scope: !1229)
!1276 = !DILocation(line: 472, column: 5, scope: !1229)
!1277 = !DILocalVariable(name: "s10", scope: !1229, file: !61, line: 471, type: !19)
!1278 = !DILocation(line: 477, column: 41, scope: !1229)
!1279 = !DILocation(line: 478, column: 9, scope: !1229)
!1280 = !DILocation(line: 477, column: 23, scope: !1229)
!1281 = !DILocation(line: 479, column: 7, scope: !1229)
!1282 = !DILocation(line: 477, column: 5, scope: !1229)
!1283 = !DILocalVariable(name: "s20", scope: !1229, file: !61, line: 476, type: !19)
!1284 = !DILocation(line: 482, column: 41, scope: !1229)
!1285 = !DILocation(line: 483, column: 9, scope: !1229)
!1286 = !DILocation(line: 482, column: 23, scope: !1229)
!1287 = !DILocation(line: 484, column: 7, scope: !1229)
!1288 = !DILocation(line: 482, column: 5, scope: !1229)
!1289 = !DILocalVariable(name: "s30", scope: !1229, file: !61, line: 481, type: !19)
!1290 = !DILocation(line: 487, column: 41, scope: !1229)
!1291 = !DILocation(line: 488, column: 9, scope: !1229)
!1292 = !DILocation(line: 487, column: 23, scope: !1229)
!1293 = !DILocation(line: 489, column: 7, scope: !1229)
!1294 = !DILocation(line: 487, column: 5, scope: !1229)
!1295 = !DILocalVariable(name: "s40", scope: !1229, file: !61, line: 486, type: !19)
!1296 = !DILocalVariable(name: "o100", scope: !1229, file: !61, line: 490, type: !19)
!1297 = !DILocalVariable(name: "o110", scope: !1229, file: !61, line: 491, type: !19)
!1298 = !DILocalVariable(name: "o120", scope: !1229, file: !61, line: 492, type: !19)
!1299 = !DILocalVariable(name: "o130", scope: !1229, file: !61, line: 493, type: !19)
!1300 = !DILocalVariable(name: "o140", scope: !1229, file: !61, line: 494, type: !19)
!1301 = !DILocation(line: 495, column: 30, scope: !1229)
!1302 = !DILocalVariable(name: "d0", scope: !1229, file: !61, line: 495, type: !11)
!1303 = !DILocation(line: 496, column: 30, scope: !1229)
!1304 = !DILocalVariable(name: "d1", scope: !1229, file: !61, line: 496, type: !11)
!1305 = !DILocation(line: 497, column: 31, scope: !1229)
!1306 = !DILocalVariable(name: "d2", scope: !1229, file: !61, line: 497, type: !11)
!1307 = !DILocation(line: 498, column: 31, scope: !1229)
!1308 = !DILocalVariable(name: "d3", scope: !1229, file: !61, line: 498, type: !11)
!1309 = !DILocation(line: 499, column: 33, scope: !1229)
!1310 = !DILocalVariable(name: "d419", scope: !1229, file: !61, line: 499, type: !11)
!1311 = !DILocation(line: 500, column: 30, scope: !1229)
!1312 = !DILocalVariable(name: "d4", scope: !1229, file: !61, line: 500, type: !11)
!1313 = !DILocation(line: 503, column: 41, scope: !1229)
!1314 = !DILocation(line: 504, column: 9, scope: !1229)
!1315 = !DILocation(line: 503, column: 23, scope: !1229)
!1316 = !DILocation(line: 505, column: 7, scope: !1229)
!1317 = !DILocation(line: 503, column: 5, scope: !1229)
!1318 = !DILocalVariable(name: "s0", scope: !1229, file: !61, line: 502, type: !19)
!1319 = !DILocation(line: 508, column: 41, scope: !1229)
!1320 = !DILocation(line: 509, column: 9, scope: !1229)
!1321 = !DILocation(line: 508, column: 23, scope: !1229)
!1322 = !DILocation(line: 510, column: 7, scope: !1229)
!1323 = !DILocation(line: 508, column: 5, scope: !1229)
!1324 = !DILocalVariable(name: "s1", scope: !1229, file: !61, line: 507, type: !19)
!1325 = !DILocation(line: 513, column: 41, scope: !1229)
!1326 = !DILocation(line: 514, column: 9, scope: !1229)
!1327 = !DILocation(line: 513, column: 23, scope: !1229)
!1328 = !DILocation(line: 515, column: 7, scope: !1229)
!1329 = !DILocation(line: 513, column: 5, scope: !1229)
!1330 = !DILocalVariable(name: "s2", scope: !1229, file: !61, line: 512, type: !19)
!1331 = !DILocation(line: 518, column: 41, scope: !1229)
!1332 = !DILocation(line: 519, column: 9, scope: !1229)
!1333 = !DILocation(line: 518, column: 23, scope: !1229)
!1334 = !DILocation(line: 520, column: 7, scope: !1229)
!1335 = !DILocation(line: 518, column: 5, scope: !1229)
!1336 = !DILocalVariable(name: "s3", scope: !1229, file: !61, line: 517, type: !19)
!1337 = !DILocation(line: 523, column: 41, scope: !1229)
!1338 = !DILocation(line: 524, column: 9, scope: !1229)
!1339 = !DILocation(line: 523, column: 23, scope: !1229)
!1340 = !DILocation(line: 525, column: 7, scope: !1229)
!1341 = !DILocation(line: 523, column: 5, scope: !1229)
!1342 = !DILocalVariable(name: "s4", scope: !1229, file: !61, line: 522, type: !19)
!1343 = !DILocalVariable(name: "o200", scope: !1229, file: !61, line: 526, type: !19)
!1344 = !DILocalVariable(name: "o210", scope: !1229, file: !61, line: 527, type: !19)
!1345 = !DILocalVariable(name: "o220", scope: !1229, file: !61, line: 528, type: !19)
!1346 = !DILocalVariable(name: "o230", scope: !1229, file: !61, line: 529, type: !19)
!1347 = !DILocalVariable(name: "o240", scope: !1229, file: !61, line: 530, type: !19)
!1348 = !DILocation(line: 532, column: 32, scope: !1229)
!1349 = !DILocation(line: 532, column: 8, scope: !1229)
!1350 = !DILocalVariable(name: "l_", scope: !1229, file: !61, line: 532, type: !19)
!1351 = !DILocation(line: 533, column: 20, scope: !1229)
!1352 = !DILocation(line: 533, column: 56, scope: !1229)
!1353 = !DILocalVariable(name: "tmp00", scope: !1229, file: !61, line: 533, type: !11)
!1354 = !DILocation(line: 534, column: 50, scope: !1229)
!1355 = !DILocation(line: 534, column: 18, scope: !1229)
!1356 = !DILocalVariable(name: "c00", scope: !1229, file: !61, line: 534, type: !11)
!1357 = !DILocation(line: 535, column: 55, scope: !1229)
!1358 = !DILocation(line: 535, column: 31, scope: !1229)
!1359 = !DILocalVariable(name: "l_0", scope: !1229, file: !61, line: 535, type: !19)
!1360 = !DILocation(line: 536, column: 20, scope: !1229)
!1361 = !DILocation(line: 536, column: 57, scope: !1229)
!1362 = !DILocalVariable(name: "tmp10", scope: !1229, file: !61, line: 536, type: !11)
!1363 = !DILocation(line: 537, column: 50, scope: !1229)
!1364 = !DILocation(line: 537, column: 18, scope: !1229)
!1365 = !DILocalVariable(name: "c10", scope: !1229, file: !61, line: 537, type: !11)
!1366 = !DILocation(line: 538, column: 55, scope: !1229)
!1367 = !DILocation(line: 538, column: 31, scope: !1229)
!1368 = !DILocalVariable(name: "l_1", scope: !1229, file: !61, line: 538, type: !19)
!1369 = !DILocation(line: 539, column: 20, scope: !1229)
!1370 = !DILocation(line: 539, column: 57, scope: !1229)
!1371 = !DILocalVariable(name: "tmp20", scope: !1229, file: !61, line: 539, type: !11)
!1372 = !DILocation(line: 540, column: 50, scope: !1229)
!1373 = !DILocation(line: 540, column: 18, scope: !1229)
!1374 = !DILocalVariable(name: "c20", scope: !1229, file: !61, line: 540, type: !11)
!1375 = !DILocation(line: 541, column: 55, scope: !1229)
!1376 = !DILocation(line: 541, column: 31, scope: !1229)
!1377 = !DILocalVariable(name: "l_2", scope: !1229, file: !61, line: 541, type: !19)
!1378 = !DILocation(line: 542, column: 20, scope: !1229)
!1379 = !DILocation(line: 542, column: 57, scope: !1229)
!1380 = !DILocalVariable(name: "tmp30", scope: !1229, file: !61, line: 542, type: !11)
!1381 = !DILocation(line: 543, column: 50, scope: !1229)
!1382 = !DILocation(line: 543, column: 18, scope: !1229)
!1383 = !DILocalVariable(name: "c30", scope: !1229, file: !61, line: 543, type: !11)
!1384 = !DILocation(line: 544, column: 55, scope: !1229)
!1385 = !DILocation(line: 544, column: 31, scope: !1229)
!1386 = !DILocalVariable(name: "l_3", scope: !1229, file: !61, line: 544, type: !19)
!1387 = !DILocation(line: 545, column: 20, scope: !1229)
!1388 = !DILocation(line: 545, column: 57, scope: !1229)
!1389 = !DILocalVariable(name: "tmp40", scope: !1229, file: !61, line: 545, type: !11)
!1390 = !DILocation(line: 546, column: 50, scope: !1229)
!1391 = !DILocation(line: 546, column: 18, scope: !1229)
!1392 = !DILocalVariable(name: "c40", scope: !1229, file: !61, line: 546, type: !11)
!1393 = !DILocation(line: 547, column: 30, scope: !1229)
!1394 = !DILocation(line: 547, column: 24, scope: !1229)
!1395 = !DILocalVariable(name: "l_4", scope: !1229, file: !61, line: 547, type: !11)
!1396 = !DILocation(line: 548, column: 24, scope: !1229)
!1397 = !DILocalVariable(name: "tmp0_", scope: !1229, file: !61, line: 548, type: !11)
!1398 = !DILocation(line: 549, column: 22, scope: !1229)
!1399 = !DILocalVariable(name: "c50", scope: !1229, file: !61, line: 549, type: !11)
!1400 = !DILocalVariable(name: "o101", scope: !1229, file: !61, line: 550, type: !11)
!1401 = !DILocation(line: 551, column: 25, scope: !1229)
!1402 = !DILocalVariable(name: "o111", scope: !1229, file: !61, line: 551, type: !11)
!1403 = !DILocalVariable(name: "o121", scope: !1229, file: !61, line: 552, type: !11)
!1404 = !DILocalVariable(name: "o131", scope: !1229, file: !61, line: 553, type: !11)
!1405 = !DILocalVariable(name: "o141", scope: !1229, file: !61, line: 554, type: !11)
!1406 = !DILocation(line: 556, column: 33, scope: !1229)
!1407 = !DILocation(line: 556, column: 9, scope: !1229)
!1408 = !DILocalVariable(name: "l_5", scope: !1229, file: !61, line: 556, type: !19)
!1409 = !DILocation(line: 557, column: 19, scope: !1229)
!1410 = !DILocation(line: 557, column: 56, scope: !1229)
!1411 = !DILocalVariable(name: "tmp0", scope: !1229, file: !61, line: 557, type: !11)
!1412 = !DILocation(line: 558, column: 49, scope: !1229)
!1413 = !DILocation(line: 558, column: 17, scope: !1229)
!1414 = !DILocalVariable(name: "c0", scope: !1229, file: !61, line: 558, type: !11)
!1415 = !DILocation(line: 559, column: 55, scope: !1229)
!1416 = !DILocation(line: 559, column: 31, scope: !1229)
!1417 = !DILocalVariable(name: "l_6", scope: !1229, file: !61, line: 559, type: !19)
!1418 = !DILocation(line: 560, column: 19, scope: !1229)
!1419 = !DILocation(line: 560, column: 56, scope: !1229)
!1420 = !DILocalVariable(name: "tmp1", scope: !1229, file: !61, line: 560, type: !11)
!1421 = !DILocation(line: 561, column: 49, scope: !1229)
!1422 = !DILocation(line: 561, column: 17, scope: !1229)
!1423 = !DILocalVariable(name: "c1", scope: !1229, file: !61, line: 561, type: !11)
!1424 = !DILocation(line: 562, column: 55, scope: !1229)
!1425 = !DILocation(line: 562, column: 31, scope: !1229)
!1426 = !DILocalVariable(name: "l_7", scope: !1229, file: !61, line: 562, type: !19)
!1427 = !DILocation(line: 563, column: 19, scope: !1229)
!1428 = !DILocation(line: 563, column: 56, scope: !1229)
!1429 = !DILocalVariable(name: "tmp2", scope: !1229, file: !61, line: 563, type: !11)
!1430 = !DILocation(line: 564, column: 49, scope: !1229)
!1431 = !DILocation(line: 564, column: 17, scope: !1229)
!1432 = !DILocalVariable(name: "c2", scope: !1229, file: !61, line: 564, type: !11)
!1433 = !DILocation(line: 565, column: 55, scope: !1229)
!1434 = !DILocation(line: 565, column: 31, scope: !1229)
!1435 = !DILocalVariable(name: "l_8", scope: !1229, file: !61, line: 565, type: !19)
!1436 = !DILocation(line: 566, column: 19, scope: !1229)
!1437 = !DILocation(line: 566, column: 56, scope: !1229)
!1438 = !DILocalVariable(name: "tmp3", scope: !1229, file: !61, line: 566, type: !11)
!1439 = !DILocation(line: 567, column: 49, scope: !1229)
!1440 = !DILocation(line: 567, column: 17, scope: !1229)
!1441 = !DILocalVariable(name: "c3", scope: !1229, file: !61, line: 567, type: !11)
!1442 = !DILocation(line: 568, column: 55, scope: !1229)
!1443 = !DILocation(line: 568, column: 31, scope: !1229)
!1444 = !DILocalVariable(name: "l_9", scope: !1229, file: !61, line: 568, type: !19)
!1445 = !DILocation(line: 569, column: 19, scope: !1229)
!1446 = !DILocation(line: 569, column: 56, scope: !1229)
!1447 = !DILocalVariable(name: "tmp4", scope: !1229, file: !61, line: 569, type: !11)
!1448 = !DILocation(line: 570, column: 49, scope: !1229)
!1449 = !DILocation(line: 570, column: 17, scope: !1229)
!1450 = !DILocalVariable(name: "c4", scope: !1229, file: !61, line: 570, type: !11)
!1451 = !DILocation(line: 571, column: 29, scope: !1229)
!1452 = !DILocation(line: 571, column: 24, scope: !1229)
!1453 = !DILocalVariable(name: "l_10", scope: !1229, file: !61, line: 571, type: !11)
!1454 = !DILocation(line: 572, column: 26, scope: !1229)
!1455 = !DILocalVariable(name: "tmp0_0", scope: !1229, file: !61, line: 572, type: !11)
!1456 = !DILocation(line: 573, column: 22, scope: !1229)
!1457 = !DILocalVariable(name: "c5", scope: !1229, file: !61, line: 573, type: !11)
!1458 = !DILocalVariable(name: "o201", scope: !1229, file: !61, line: 574, type: !11)
!1459 = !DILocation(line: 575, column: 24, scope: !1229)
!1460 = !DILocalVariable(name: "o211", scope: !1229, file: !61, line: 575, type: !11)
!1461 = !DILocalVariable(name: "o221", scope: !1229, file: !61, line: 576, type: !11)
!1462 = !DILocalVariable(name: "o231", scope: !1229, file: !61, line: 577, type: !11)
!1463 = !DILocalVariable(name: "o241", scope: !1229, file: !61, line: 578, type: !11)
!1464 = !DILocalVariable(name: "o10", scope: !1229, file: !61, line: 579, type: !11)
!1465 = !DILocalVariable(name: "o11", scope: !1229, file: !61, line: 580, type: !11)
!1466 = !DILocalVariable(name: "o12", scope: !1229, file: !61, line: 581, type: !11)
!1467 = !DILocalVariable(name: "o13", scope: !1229, file: !61, line: 582, type: !11)
!1468 = !DILocalVariable(name: "o14", scope: !1229, file: !61, line: 583, type: !11)
!1469 = !DILocalVariable(name: "o20", scope: !1229, file: !61, line: 584, type: !11)
!1470 = !DILocalVariable(name: "o21", scope: !1229, file: !61, line: 585, type: !11)
!1471 = !DILocalVariable(name: "o22", scope: !1229, file: !61, line: 586, type: !11)
!1472 = !DILocalVariable(name: "o23", scope: !1229, file: !61, line: 587, type: !11)
!1473 = !DILocalVariable(name: "o24", scope: !1229, file: !61, line: 588, type: !11)
!1474 = !DILocation(line: 589, column: 3, scope: !1229)
!1475 = !DILocation(line: 589, column: 11, scope: !1229)
!1476 = !DILocation(line: 590, column: 3, scope: !1229)
!1477 = !DILocation(line: 590, column: 11, scope: !1229)
!1478 = !DILocation(line: 591, column: 3, scope: !1229)
!1479 = !DILocation(line: 591, column: 11, scope: !1229)
!1480 = !DILocation(line: 592, column: 3, scope: !1229)
!1481 = !DILocation(line: 592, column: 11, scope: !1229)
!1482 = !DILocation(line: 593, column: 3, scope: !1229)
!1483 = !DILocation(line: 593, column: 11, scope: !1229)
!1484 = !DILocation(line: 594, column: 3, scope: !1229)
!1485 = !DILocation(line: 594, column: 11, scope: !1229)
!1486 = !DILocation(line: 595, column: 3, scope: !1229)
!1487 = !DILocation(line: 595, column: 11, scope: !1229)
!1488 = !DILocation(line: 596, column: 3, scope: !1229)
!1489 = !DILocation(line: 596, column: 11, scope: !1229)
!1490 = !DILocation(line: 597, column: 3, scope: !1229)
!1491 = !DILocation(line: 597, column: 11, scope: !1229)
!1492 = !DILocation(line: 598, column: 3, scope: !1229)
!1493 = !DILocation(line: 598, column: 11, scope: !1229)
!1494 = !DILocation(line: 599, column: 1, scope: !1229)
!1495 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fmul1", scope: !61, file: !61, line: 328, type: !1496, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !35, !35, !11}
!1498 = !DILocalVariable(name: "out", arg: 1, scope: !1495, file: !61, line: 328, type: !35)
!1499 = !DILocation(line: 0, scope: !1495)
!1500 = !DILocalVariable(name: "f1", arg: 2, scope: !1495, file: !61, line: 328, type: !35)
!1501 = !DILocalVariable(name: "f2", arg: 3, scope: !1495, file: !61, line: 328, type: !11)
!1502 = !DILocation(line: 330, column: 18, scope: !1495)
!1503 = !DILocalVariable(name: "f10", scope: !1495, file: !61, line: 330, type: !11)
!1504 = !DILocation(line: 331, column: 18, scope: !1495)
!1505 = !DILocalVariable(name: "f11", scope: !1495, file: !61, line: 331, type: !11)
!1506 = !DILocation(line: 332, column: 18, scope: !1495)
!1507 = !DILocalVariable(name: "f12", scope: !1495, file: !61, line: 332, type: !11)
!1508 = !DILocation(line: 333, column: 18, scope: !1495)
!1509 = !DILocalVariable(name: "f13", scope: !1495, file: !61, line: 333, type: !11)
!1510 = !DILocation(line: 334, column: 18, scope: !1495)
!1511 = !DILocalVariable(name: "f14", scope: !1495, file: !61, line: 334, type: !11)
!1512 = !DILocation(line: 335, column: 34, scope: !1495)
!1513 = !DILocalVariable(name: "tmp_w0", scope: !1495, file: !61, line: 335, type: !19)
!1514 = !DILocation(line: 336, column: 34, scope: !1495)
!1515 = !DILocalVariable(name: "tmp_w1", scope: !1495, file: !61, line: 336, type: !19)
!1516 = !DILocation(line: 337, column: 34, scope: !1495)
!1517 = !DILocalVariable(name: "tmp_w2", scope: !1495, file: !61, line: 337, type: !19)
!1518 = !DILocation(line: 338, column: 34, scope: !1495)
!1519 = !DILocalVariable(name: "tmp_w3", scope: !1495, file: !61, line: 338, type: !19)
!1520 = !DILocation(line: 339, column: 34, scope: !1495)
!1521 = !DILocalVariable(name: "tmp_w4", scope: !1495, file: !61, line: 339, type: !19)
!1522 = !DILocation(line: 341, column: 34, scope: !1495)
!1523 = !DILocation(line: 341, column: 8, scope: !1495)
!1524 = !DILocalVariable(name: "l_", scope: !1495, file: !61, line: 341, type: !19)
!1525 = !DILocation(line: 342, column: 19, scope: !1495)
!1526 = !DILocation(line: 342, column: 55, scope: !1495)
!1527 = !DILocalVariable(name: "tmp0", scope: !1495, file: !61, line: 342, type: !11)
!1528 = !DILocation(line: 343, column: 49, scope: !1495)
!1529 = !DILocation(line: 343, column: 17, scope: !1495)
!1530 = !DILocalVariable(name: "c0", scope: !1495, file: !61, line: 343, type: !11)
!1531 = !DILocation(line: 344, column: 57, scope: !1495)
!1532 = !DILocation(line: 344, column: 31, scope: !1495)
!1533 = !DILocalVariable(name: "l_0", scope: !1495, file: !61, line: 344, type: !19)
!1534 = !DILocation(line: 345, column: 19, scope: !1495)
!1535 = !DILocation(line: 345, column: 56, scope: !1495)
!1536 = !DILocalVariable(name: "tmp1", scope: !1495, file: !61, line: 345, type: !11)
!1537 = !DILocation(line: 346, column: 49, scope: !1495)
!1538 = !DILocation(line: 346, column: 17, scope: !1495)
!1539 = !DILocalVariable(name: "c1", scope: !1495, file: !61, line: 346, type: !11)
!1540 = !DILocation(line: 347, column: 57, scope: !1495)
!1541 = !DILocation(line: 347, column: 31, scope: !1495)
!1542 = !DILocalVariable(name: "l_1", scope: !1495, file: !61, line: 347, type: !19)
!1543 = !DILocation(line: 348, column: 19, scope: !1495)
!1544 = !DILocation(line: 348, column: 56, scope: !1495)
!1545 = !DILocalVariable(name: "tmp2", scope: !1495, file: !61, line: 348, type: !11)
!1546 = !DILocation(line: 349, column: 49, scope: !1495)
!1547 = !DILocation(line: 349, column: 17, scope: !1495)
!1548 = !DILocalVariable(name: "c2", scope: !1495, file: !61, line: 349, type: !11)
!1549 = !DILocation(line: 350, column: 57, scope: !1495)
!1550 = !DILocation(line: 350, column: 31, scope: !1495)
!1551 = !DILocalVariable(name: "l_2", scope: !1495, file: !61, line: 350, type: !19)
!1552 = !DILocation(line: 351, column: 19, scope: !1495)
!1553 = !DILocation(line: 351, column: 56, scope: !1495)
!1554 = !DILocalVariable(name: "tmp3", scope: !1495, file: !61, line: 351, type: !11)
!1555 = !DILocation(line: 352, column: 49, scope: !1495)
!1556 = !DILocation(line: 352, column: 17, scope: !1495)
!1557 = !DILocalVariable(name: "c3", scope: !1495, file: !61, line: 352, type: !11)
!1558 = !DILocation(line: 353, column: 57, scope: !1495)
!1559 = !DILocation(line: 353, column: 31, scope: !1495)
!1560 = !DILocalVariable(name: "l_3", scope: !1495, file: !61, line: 353, type: !19)
!1561 = !DILocation(line: 354, column: 19, scope: !1495)
!1562 = !DILocation(line: 354, column: 56, scope: !1495)
!1563 = !DILocalVariable(name: "tmp4", scope: !1495, file: !61, line: 354, type: !11)
!1564 = !DILocation(line: 355, column: 49, scope: !1495)
!1565 = !DILocation(line: 355, column: 17, scope: !1495)
!1566 = !DILocalVariable(name: "c4", scope: !1495, file: !61, line: 355, type: !11)
!1567 = !DILocation(line: 356, column: 28, scope: !1495)
!1568 = !DILocation(line: 356, column: 23, scope: !1495)
!1569 = !DILocalVariable(name: "l_4", scope: !1495, file: !61, line: 356, type: !11)
!1570 = !DILocation(line: 357, column: 24, scope: !1495)
!1571 = !DILocalVariable(name: "tmp0_", scope: !1495, file: !61, line: 357, type: !11)
!1572 = !DILocation(line: 358, column: 21, scope: !1495)
!1573 = !DILocalVariable(name: "c5", scope: !1495, file: !61, line: 358, type: !11)
!1574 = !DILocalVariable(name: "o0", scope: !1495, file: !61, line: 359, type: !11)
!1575 = !DILocation(line: 360, column: 22, scope: !1495)
!1576 = !DILocalVariable(name: "o1", scope: !1495, file: !61, line: 360, type: !11)
!1577 = !DILocalVariable(name: "o2", scope: !1495, file: !61, line: 361, type: !11)
!1578 = !DILocalVariable(name: "o3", scope: !1495, file: !61, line: 362, type: !11)
!1579 = !DILocalVariable(name: "o4", scope: !1495, file: !61, line: 363, type: !11)
!1580 = !DILocation(line: 364, column: 3, scope: !1495)
!1581 = !DILocation(line: 364, column: 11, scope: !1495)
!1582 = !DILocation(line: 365, column: 3, scope: !1495)
!1583 = !DILocation(line: 365, column: 11, scope: !1495)
!1584 = !DILocation(line: 366, column: 3, scope: !1495)
!1585 = !DILocation(line: 366, column: 11, scope: !1495)
!1586 = !DILocation(line: 367, column: 3, scope: !1495)
!1587 = !DILocation(line: 367, column: 11, scope: !1495)
!1588 = !DILocation(line: 368, column: 3, scope: !1495)
!1589 = !DILocation(line: 368, column: 11, scope: !1495)
!1590 = !DILocation(line: 369, column: 1, scope: !1495)
!1591 = distinct !DISubprogram(name: "Hacl_Impl_Curve25519_Field51_fmul2", scope: !61, file: !61, line: 163, type: !303, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1592 = !DILocalVariable(name: "out", arg: 1, scope: !1591, file: !61, line: 164, type: !35)
!1593 = !DILocation(line: 0, scope: !1591)
!1594 = !DILocalVariable(name: "f1", arg: 2, scope: !1591, file: !61, line: 165, type: !35)
!1595 = !DILocalVariable(name: "f2", arg: 3, scope: !1591, file: !61, line: 166, type: !35)
!1596 = !DILocalVariable(name: "uu___", arg: 4, scope: !1591, file: !61, line: 167, type: !36)
!1597 = !DILocation(line: 170, column: 18, scope: !1591)
!1598 = !DILocalVariable(name: "f10", scope: !1591, file: !61, line: 170, type: !11)
!1599 = !DILocation(line: 171, column: 18, scope: !1591)
!1600 = !DILocalVariable(name: "f11", scope: !1591, file: !61, line: 171, type: !11)
!1601 = !DILocation(line: 172, column: 18, scope: !1591)
!1602 = !DILocalVariable(name: "f12", scope: !1591, file: !61, line: 172, type: !11)
!1603 = !DILocation(line: 173, column: 18, scope: !1591)
!1604 = !DILocalVariable(name: "f13", scope: !1591, file: !61, line: 173, type: !11)
!1605 = !DILocation(line: 174, column: 18, scope: !1591)
!1606 = !DILocalVariable(name: "f14", scope: !1591, file: !61, line: 174, type: !11)
!1607 = !DILocation(line: 175, column: 18, scope: !1591)
!1608 = !DILocalVariable(name: "f20", scope: !1591, file: !61, line: 175, type: !11)
!1609 = !DILocation(line: 176, column: 18, scope: !1591)
!1610 = !DILocalVariable(name: "f21", scope: !1591, file: !61, line: 176, type: !11)
!1611 = !DILocation(line: 177, column: 18, scope: !1591)
!1612 = !DILocalVariable(name: "f22", scope: !1591, file: !61, line: 177, type: !11)
!1613 = !DILocation(line: 178, column: 18, scope: !1591)
!1614 = !DILocalVariable(name: "f23", scope: !1591, file: !61, line: 178, type: !11)
!1615 = !DILocation(line: 179, column: 18, scope: !1591)
!1616 = !DILocalVariable(name: "f24", scope: !1591, file: !61, line: 179, type: !11)
!1617 = !DILocation(line: 180, column: 18, scope: !1591)
!1618 = !DILocalVariable(name: "f30", scope: !1591, file: !61, line: 180, type: !11)
!1619 = !DILocation(line: 181, column: 18, scope: !1591)
!1620 = !DILocalVariable(name: "f31", scope: !1591, file: !61, line: 181, type: !11)
!1621 = !DILocation(line: 182, column: 18, scope: !1591)
!1622 = !DILocalVariable(name: "f32", scope: !1591, file: !61, line: 182, type: !11)
!1623 = !DILocation(line: 183, column: 18, scope: !1591)
!1624 = !DILocalVariable(name: "f33", scope: !1591, file: !61, line: 183, type: !11)
!1625 = !DILocation(line: 184, column: 18, scope: !1591)
!1626 = !DILocalVariable(name: "f34", scope: !1591, file: !61, line: 184, type: !11)
!1627 = !DILocation(line: 185, column: 18, scope: !1591)
!1628 = !DILocalVariable(name: "f40", scope: !1591, file: !61, line: 185, type: !11)
!1629 = !DILocation(line: 186, column: 18, scope: !1591)
!1630 = !DILocalVariable(name: "f41", scope: !1591, file: !61, line: 186, type: !11)
!1631 = !DILocation(line: 187, column: 18, scope: !1591)
!1632 = !DILocalVariable(name: "f42", scope: !1591, file: !61, line: 187, type: !11)
!1633 = !DILocation(line: 188, column: 18, scope: !1591)
!1634 = !DILocalVariable(name: "f43", scope: !1591, file: !61, line: 188, type: !11)
!1635 = !DILocation(line: 189, column: 18, scope: !1591)
!1636 = !DILocalVariable(name: "f44", scope: !1591, file: !61, line: 189, type: !11)
!1637 = !DILocation(line: 190, column: 24, scope: !1591)
!1638 = !DILocalVariable(name: "tmp11", scope: !1591, file: !61, line: 190, type: !11)
!1639 = !DILocation(line: 191, column: 24, scope: !1591)
!1640 = !DILocalVariable(name: "tmp12", scope: !1591, file: !61, line: 191, type: !11)
!1641 = !DILocation(line: 192, column: 24, scope: !1591)
!1642 = !DILocalVariable(name: "tmp13", scope: !1591, file: !61, line: 192, type: !11)
!1643 = !DILocation(line: 193, column: 24, scope: !1591)
!1644 = !DILocalVariable(name: "tmp14", scope: !1591, file: !61, line: 193, type: !11)
!1645 = !DILocation(line: 194, column: 24, scope: !1591)
!1646 = !DILocalVariable(name: "tmp21", scope: !1591, file: !61, line: 194, type: !11)
!1647 = !DILocation(line: 195, column: 24, scope: !1591)
!1648 = !DILocalVariable(name: "tmp22", scope: !1591, file: !61, line: 195, type: !11)
!1649 = !DILocation(line: 196, column: 24, scope: !1591)
!1650 = !DILocalVariable(name: "tmp23", scope: !1591, file: !61, line: 196, type: !11)
!1651 = !DILocation(line: 197, column: 24, scope: !1591)
!1652 = !DILocalVariable(name: "tmp24", scope: !1591, file: !61, line: 197, type: !11)
!1653 = !DILocation(line: 198, column: 31, scope: !1591)
!1654 = !DILocalVariable(name: "o00", scope: !1591, file: !61, line: 198, type: !19)
!1655 = !DILocation(line: 199, column: 31, scope: !1591)
!1656 = !DILocalVariable(name: "o15", scope: !1591, file: !61, line: 199, type: !19)
!1657 = !DILocation(line: 200, column: 31, scope: !1591)
!1658 = !DILocalVariable(name: "o25", scope: !1591, file: !61, line: 200, type: !19)
!1659 = !DILocation(line: 201, column: 31, scope: !1591)
!1660 = !DILocalVariable(name: "o30", scope: !1591, file: !61, line: 201, type: !19)
!1661 = !DILocation(line: 202, column: 31, scope: !1591)
!1662 = !DILocalVariable(name: "o40", scope: !1591, file: !61, line: 202, type: !19)
!1663 = !DILocation(line: 203, column: 55, scope: !1591)
!1664 = !DILocation(line: 203, column: 32, scope: !1591)
!1665 = !DILocalVariable(name: "o010", scope: !1591, file: !61, line: 203, type: !19)
!1666 = !DILocation(line: 204, column: 55, scope: !1591)
!1667 = !DILocation(line: 204, column: 32, scope: !1591)
!1668 = !DILocalVariable(name: "o110", scope: !1591, file: !61, line: 204, type: !19)
!1669 = !DILocation(line: 205, column: 55, scope: !1591)
!1670 = !DILocation(line: 205, column: 32, scope: !1591)
!1671 = !DILocalVariable(name: "o210", scope: !1591, file: !61, line: 205, type: !19)
!1672 = !DILocation(line: 206, column: 55, scope: !1591)
!1673 = !DILocation(line: 206, column: 32, scope: !1591)
!1674 = !DILocalVariable(name: "o310", scope: !1591, file: !61, line: 206, type: !19)
!1675 = !DILocation(line: 207, column: 55, scope: !1591)
!1676 = !DILocation(line: 207, column: 32, scope: !1591)
!1677 = !DILocalVariable(name: "o410", scope: !1591, file: !61, line: 207, type: !19)
!1678 = !DILocation(line: 208, column: 56, scope: !1591)
!1679 = !DILocation(line: 208, column: 32, scope: !1591)
!1680 = !DILocalVariable(name: "o020", scope: !1591, file: !61, line: 208, type: !19)
!1681 = !DILocation(line: 209, column: 56, scope: !1591)
!1682 = !DILocation(line: 209, column: 32, scope: !1591)
!1683 = !DILocalVariable(name: "o120", scope: !1591, file: !61, line: 209, type: !19)
!1684 = !DILocation(line: 210, column: 56, scope: !1591)
!1685 = !DILocation(line: 210, column: 32, scope: !1591)
!1686 = !DILocalVariable(name: "o220", scope: !1591, file: !61, line: 210, type: !19)
!1687 = !DILocation(line: 211, column: 56, scope: !1591)
!1688 = !DILocation(line: 211, column: 32, scope: !1591)
!1689 = !DILocalVariable(name: "o320", scope: !1591, file: !61, line: 211, type: !19)
!1690 = !DILocation(line: 212, column: 56, scope: !1591)
!1691 = !DILocation(line: 212, column: 32, scope: !1591)
!1692 = !DILocalVariable(name: "o420", scope: !1591, file: !61, line: 212, type: !19)
!1693 = !DILocation(line: 213, column: 56, scope: !1591)
!1694 = !DILocation(line: 213, column: 32, scope: !1591)
!1695 = !DILocalVariable(name: "o030", scope: !1591, file: !61, line: 213, type: !19)
!1696 = !DILocation(line: 214, column: 56, scope: !1591)
!1697 = !DILocation(line: 214, column: 32, scope: !1591)
!1698 = !DILocalVariable(name: "o130", scope: !1591, file: !61, line: 214, type: !19)
!1699 = !DILocation(line: 215, column: 56, scope: !1591)
!1700 = !DILocation(line: 215, column: 32, scope: !1591)
!1701 = !DILocalVariable(name: "o230", scope: !1591, file: !61, line: 215, type: !19)
!1702 = !DILocation(line: 216, column: 56, scope: !1591)
!1703 = !DILocation(line: 216, column: 32, scope: !1591)
!1704 = !DILocalVariable(name: "o330", scope: !1591, file: !61, line: 216, type: !19)
!1705 = !DILocation(line: 217, column: 56, scope: !1591)
!1706 = !DILocation(line: 217, column: 32, scope: !1591)
!1707 = !DILocalVariable(name: "o430", scope: !1591, file: !61, line: 217, type: !19)
!1708 = !DILocation(line: 218, column: 56, scope: !1591)
!1709 = !DILocation(line: 218, column: 32, scope: !1591)
!1710 = !DILocalVariable(name: "o040", scope: !1591, file: !61, line: 218, type: !19)
!1711 = !DILocation(line: 219, column: 56, scope: !1591)
!1712 = !DILocation(line: 219, column: 32, scope: !1591)
!1713 = !DILocalVariable(name: "o140", scope: !1591, file: !61, line: 219, type: !19)
!1714 = !DILocation(line: 220, column: 56, scope: !1591)
!1715 = !DILocation(line: 220, column: 32, scope: !1591)
!1716 = !DILocalVariable(name: "o240", scope: !1591, file: !61, line: 220, type: !19)
!1717 = !DILocation(line: 221, column: 56, scope: !1591)
!1718 = !DILocation(line: 221, column: 32, scope: !1591)
!1719 = !DILocalVariable(name: "o340", scope: !1591, file: !61, line: 221, type: !19)
!1720 = !DILocation(line: 222, column: 56, scope: !1591)
!1721 = !DILocation(line: 222, column: 32, scope: !1591)
!1722 = !DILocalVariable(name: "o440", scope: !1591, file: !61, line: 222, type: !19)
!1723 = !DILocalVariable(name: "tmp_w10", scope: !1591, file: !61, line: 223, type: !19)
!1724 = !DILocalVariable(name: "tmp_w11", scope: !1591, file: !61, line: 224, type: !19)
!1725 = !DILocalVariable(name: "tmp_w12", scope: !1591, file: !61, line: 225, type: !19)
!1726 = !DILocalVariable(name: "tmp_w13", scope: !1591, file: !61, line: 226, type: !19)
!1727 = !DILocalVariable(name: "tmp_w14", scope: !1591, file: !61, line: 227, type: !19)
!1728 = !DILocation(line: 228, column: 30, scope: !1591)
!1729 = !DILocalVariable(name: "o0", scope: !1591, file: !61, line: 228, type: !19)
!1730 = !DILocation(line: 229, column: 30, scope: !1591)
!1731 = !DILocalVariable(name: "o1", scope: !1591, file: !61, line: 229, type: !19)
!1732 = !DILocation(line: 230, column: 30, scope: !1591)
!1733 = !DILocalVariable(name: "o2", scope: !1591, file: !61, line: 230, type: !19)
!1734 = !DILocation(line: 231, column: 30, scope: !1591)
!1735 = !DILocalVariable(name: "o3", scope: !1591, file: !61, line: 231, type: !19)
!1736 = !DILocation(line: 232, column: 30, scope: !1591)
!1737 = !DILocalVariable(name: "o4", scope: !1591, file: !61, line: 232, type: !19)
!1738 = !DILocation(line: 233, column: 53, scope: !1591)
!1739 = !DILocation(line: 233, column: 31, scope: !1591)
!1740 = !DILocalVariable(name: "o01", scope: !1591, file: !61, line: 233, type: !19)
!1741 = !DILocation(line: 234, column: 54, scope: !1591)
!1742 = !DILocation(line: 234, column: 32, scope: !1591)
!1743 = !DILocalVariable(name: "o111", scope: !1591, file: !61, line: 234, type: !19)
!1744 = !DILocation(line: 235, column: 54, scope: !1591)
!1745 = !DILocation(line: 235, column: 32, scope: !1591)
!1746 = !DILocalVariable(name: "o211", scope: !1591, file: !61, line: 235, type: !19)
!1747 = !DILocation(line: 236, column: 53, scope: !1591)
!1748 = !DILocation(line: 236, column: 31, scope: !1591)
!1749 = !DILocalVariable(name: "o31", scope: !1591, file: !61, line: 236, type: !19)
!1750 = !DILocation(line: 237, column: 53, scope: !1591)
!1751 = !DILocation(line: 237, column: 31, scope: !1591)
!1752 = !DILocalVariable(name: "o41", scope: !1591, file: !61, line: 237, type: !19)
!1753 = !DILocation(line: 238, column: 54, scope: !1591)
!1754 = !DILocation(line: 238, column: 31, scope: !1591)
!1755 = !DILocalVariable(name: "o02", scope: !1591, file: !61, line: 238, type: !19)
!1756 = !DILocation(line: 239, column: 56, scope: !1591)
!1757 = !DILocation(line: 239, column: 32, scope: !1591)
!1758 = !DILocalVariable(name: "o121", scope: !1591, file: !61, line: 239, type: !19)
!1759 = !DILocation(line: 240, column: 56, scope: !1591)
!1760 = !DILocation(line: 240, column: 32, scope: !1591)
!1761 = !DILocalVariable(name: "o221", scope: !1591, file: !61, line: 240, type: !19)
!1762 = !DILocation(line: 241, column: 54, scope: !1591)
!1763 = !DILocation(line: 241, column: 31, scope: !1591)
!1764 = !DILocalVariable(name: "o32", scope: !1591, file: !61, line: 241, type: !19)
!1765 = !DILocation(line: 242, column: 54, scope: !1591)
!1766 = !DILocation(line: 242, column: 31, scope: !1591)
!1767 = !DILocalVariable(name: "o42", scope: !1591, file: !61, line: 242, type: !19)
!1768 = !DILocation(line: 243, column: 54, scope: !1591)
!1769 = !DILocation(line: 243, column: 31, scope: !1591)
!1770 = !DILocalVariable(name: "o03", scope: !1591, file: !61, line: 243, type: !19)
!1771 = !DILocation(line: 244, column: 56, scope: !1591)
!1772 = !DILocation(line: 244, column: 32, scope: !1591)
!1773 = !DILocalVariable(name: "o131", scope: !1591, file: !61, line: 244, type: !19)
!1774 = !DILocation(line: 245, column: 56, scope: !1591)
!1775 = !DILocation(line: 245, column: 32, scope: !1591)
!1776 = !DILocalVariable(name: "o231", scope: !1591, file: !61, line: 245, type: !19)
!1777 = !DILocation(line: 246, column: 54, scope: !1591)
!1778 = !DILocation(line: 246, column: 31, scope: !1591)
!1779 = !DILocalVariable(name: "o33", scope: !1591, file: !61, line: 246, type: !19)
!1780 = !DILocation(line: 247, column: 54, scope: !1591)
!1781 = !DILocation(line: 247, column: 31, scope: !1591)
!1782 = !DILocalVariable(name: "o43", scope: !1591, file: !61, line: 247, type: !19)
!1783 = !DILocation(line: 248, column: 54, scope: !1591)
!1784 = !DILocation(line: 248, column: 31, scope: !1591)
!1785 = !DILocalVariable(name: "o04", scope: !1591, file: !61, line: 248, type: !19)
!1786 = !DILocation(line: 249, column: 56, scope: !1591)
!1787 = !DILocation(line: 249, column: 32, scope: !1591)
!1788 = !DILocalVariable(name: "o141", scope: !1591, file: !61, line: 249, type: !19)
!1789 = !DILocation(line: 250, column: 56, scope: !1591)
!1790 = !DILocation(line: 250, column: 32, scope: !1591)
!1791 = !DILocalVariable(name: "o241", scope: !1591, file: !61, line: 250, type: !19)
!1792 = !DILocation(line: 251, column: 54, scope: !1591)
!1793 = !DILocation(line: 251, column: 31, scope: !1591)
!1794 = !DILocalVariable(name: "o34", scope: !1591, file: !61, line: 251, type: !19)
!1795 = !DILocation(line: 252, column: 54, scope: !1591)
!1796 = !DILocation(line: 252, column: 31, scope: !1591)
!1797 = !DILocalVariable(name: "o44", scope: !1591, file: !61, line: 252, type: !19)
!1798 = !DILocalVariable(name: "tmp_w20", scope: !1591, file: !61, line: 253, type: !19)
!1799 = !DILocalVariable(name: "tmp_w21", scope: !1591, file: !61, line: 254, type: !19)
!1800 = !DILocalVariable(name: "tmp_w22", scope: !1591, file: !61, line: 255, type: !19)
!1801 = !DILocalVariable(name: "tmp_w23", scope: !1591, file: !61, line: 256, type: !19)
!1802 = !DILocalVariable(name: "tmp_w24", scope: !1591, file: !61, line: 257, type: !19)
!1803 = !DILocation(line: 259, column: 35, scope: !1591)
!1804 = !DILocation(line: 259, column: 8, scope: !1591)
!1805 = !DILocalVariable(name: "l_", scope: !1591, file: !61, line: 259, type: !19)
!1806 = !DILocation(line: 260, column: 20, scope: !1591)
!1807 = !DILocation(line: 260, column: 56, scope: !1591)
!1808 = !DILocalVariable(name: "tmp00", scope: !1591, file: !61, line: 260, type: !11)
!1809 = !DILocation(line: 261, column: 50, scope: !1591)
!1810 = !DILocation(line: 261, column: 18, scope: !1591)
!1811 = !DILocalVariable(name: "c00", scope: !1591, file: !61, line: 261, type: !11)
!1812 = !DILocation(line: 262, column: 58, scope: !1591)
!1813 = !DILocation(line: 262, column: 31, scope: !1591)
!1814 = !DILocalVariable(name: "l_0", scope: !1591, file: !61, line: 262, type: !19)
!1815 = !DILocation(line: 263, column: 20, scope: !1591)
!1816 = !DILocation(line: 263, column: 57, scope: !1591)
!1817 = !DILocalVariable(name: "tmp10", scope: !1591, file: !61, line: 263, type: !11)
!1818 = !DILocation(line: 264, column: 50, scope: !1591)
!1819 = !DILocation(line: 264, column: 18, scope: !1591)
!1820 = !DILocalVariable(name: "c10", scope: !1591, file: !61, line: 264, type: !11)
!1821 = !DILocation(line: 265, column: 58, scope: !1591)
!1822 = !DILocation(line: 265, column: 31, scope: !1591)
!1823 = !DILocalVariable(name: "l_1", scope: !1591, file: !61, line: 265, type: !19)
!1824 = !DILocation(line: 266, column: 20, scope: !1591)
!1825 = !DILocation(line: 266, column: 57, scope: !1591)
!1826 = !DILocalVariable(name: "tmp20", scope: !1591, file: !61, line: 266, type: !11)
!1827 = !DILocation(line: 267, column: 50, scope: !1591)
!1828 = !DILocation(line: 267, column: 18, scope: !1591)
!1829 = !DILocalVariable(name: "c20", scope: !1591, file: !61, line: 267, type: !11)
!1830 = !DILocation(line: 268, column: 58, scope: !1591)
!1831 = !DILocation(line: 268, column: 31, scope: !1591)
!1832 = !DILocalVariable(name: "l_2", scope: !1591, file: !61, line: 268, type: !19)
!1833 = !DILocation(line: 269, column: 20, scope: !1591)
!1834 = !DILocation(line: 269, column: 57, scope: !1591)
!1835 = !DILocalVariable(name: "tmp30", scope: !1591, file: !61, line: 269, type: !11)
!1836 = !DILocation(line: 270, column: 50, scope: !1591)
!1837 = !DILocation(line: 270, column: 18, scope: !1591)
!1838 = !DILocalVariable(name: "c30", scope: !1591, file: !61, line: 270, type: !11)
!1839 = !DILocation(line: 271, column: 58, scope: !1591)
!1840 = !DILocation(line: 271, column: 31, scope: !1591)
!1841 = !DILocalVariable(name: "l_3", scope: !1591, file: !61, line: 271, type: !19)
!1842 = !DILocation(line: 272, column: 20, scope: !1591)
!1843 = !DILocation(line: 272, column: 57, scope: !1591)
!1844 = !DILocalVariable(name: "tmp40", scope: !1591, file: !61, line: 272, type: !11)
!1845 = !DILocation(line: 273, column: 50, scope: !1591)
!1846 = !DILocation(line: 273, column: 18, scope: !1591)
!1847 = !DILocalVariable(name: "c40", scope: !1591, file: !61, line: 273, type: !11)
!1848 = !DILocation(line: 274, column: 30, scope: !1591)
!1849 = !DILocation(line: 274, column: 24, scope: !1591)
!1850 = !DILocalVariable(name: "l_4", scope: !1591, file: !61, line: 274, type: !11)
!1851 = !DILocation(line: 275, column: 24, scope: !1591)
!1852 = !DILocalVariable(name: "tmp0_", scope: !1591, file: !61, line: 275, type: !11)
!1853 = !DILocation(line: 276, column: 22, scope: !1591)
!1854 = !DILocalVariable(name: "c50", scope: !1591, file: !61, line: 276, type: !11)
!1855 = !DILocalVariable(name: "o100", scope: !1591, file: !61, line: 277, type: !11)
!1856 = !DILocation(line: 278, column: 25, scope: !1591)
!1857 = !DILocalVariable(name: "o112", scope: !1591, file: !61, line: 278, type: !11)
!1858 = !DILocalVariable(name: "o122", scope: !1591, file: !61, line: 279, type: !11)
!1859 = !DILocalVariable(name: "o132", scope: !1591, file: !61, line: 280, type: !11)
!1860 = !DILocalVariable(name: "o142", scope: !1591, file: !61, line: 281, type: !11)
!1861 = !DILocation(line: 283, column: 36, scope: !1591)
!1862 = !DILocation(line: 283, column: 9, scope: !1591)
!1863 = !DILocalVariable(name: "l_5", scope: !1591, file: !61, line: 283, type: !19)
!1864 = !DILocation(line: 284, column: 19, scope: !1591)
!1865 = !DILocation(line: 284, column: 56, scope: !1591)
!1866 = !DILocalVariable(name: "tmp0", scope: !1591, file: !61, line: 284, type: !11)
!1867 = !DILocation(line: 285, column: 49, scope: !1591)
!1868 = !DILocation(line: 285, column: 17, scope: !1591)
!1869 = !DILocalVariable(name: "c0", scope: !1591, file: !61, line: 285, type: !11)
!1870 = !DILocation(line: 286, column: 58, scope: !1591)
!1871 = !DILocation(line: 286, column: 31, scope: !1591)
!1872 = !DILocalVariable(name: "l_6", scope: !1591, file: !61, line: 286, type: !19)
!1873 = !DILocation(line: 287, column: 19, scope: !1591)
!1874 = !DILocation(line: 287, column: 56, scope: !1591)
!1875 = !DILocalVariable(name: "tmp1", scope: !1591, file: !61, line: 287, type: !11)
!1876 = !DILocation(line: 288, column: 49, scope: !1591)
!1877 = !DILocation(line: 288, column: 17, scope: !1591)
!1878 = !DILocalVariable(name: "c1", scope: !1591, file: !61, line: 288, type: !11)
!1879 = !DILocation(line: 289, column: 58, scope: !1591)
!1880 = !DILocation(line: 289, column: 31, scope: !1591)
!1881 = !DILocalVariable(name: "l_7", scope: !1591, file: !61, line: 289, type: !19)
!1882 = !DILocation(line: 290, column: 19, scope: !1591)
!1883 = !DILocation(line: 290, column: 56, scope: !1591)
!1884 = !DILocalVariable(name: "tmp2", scope: !1591, file: !61, line: 290, type: !11)
!1885 = !DILocation(line: 291, column: 49, scope: !1591)
!1886 = !DILocation(line: 291, column: 17, scope: !1591)
!1887 = !DILocalVariable(name: "c2", scope: !1591, file: !61, line: 291, type: !11)
!1888 = !DILocation(line: 292, column: 58, scope: !1591)
!1889 = !DILocation(line: 292, column: 31, scope: !1591)
!1890 = !DILocalVariable(name: "l_8", scope: !1591, file: !61, line: 292, type: !19)
!1891 = !DILocation(line: 293, column: 19, scope: !1591)
!1892 = !DILocation(line: 293, column: 56, scope: !1591)
!1893 = !DILocalVariable(name: "tmp3", scope: !1591, file: !61, line: 293, type: !11)
!1894 = !DILocation(line: 294, column: 49, scope: !1591)
!1895 = !DILocation(line: 294, column: 17, scope: !1591)
!1896 = !DILocalVariable(name: "c3", scope: !1591, file: !61, line: 294, type: !11)
!1897 = !DILocation(line: 295, column: 58, scope: !1591)
!1898 = !DILocation(line: 295, column: 31, scope: !1591)
!1899 = !DILocalVariable(name: "l_9", scope: !1591, file: !61, line: 295, type: !19)
!1900 = !DILocation(line: 296, column: 19, scope: !1591)
!1901 = !DILocation(line: 296, column: 56, scope: !1591)
!1902 = !DILocalVariable(name: "tmp4", scope: !1591, file: !61, line: 296, type: !11)
!1903 = !DILocation(line: 297, column: 49, scope: !1591)
!1904 = !DILocation(line: 297, column: 17, scope: !1591)
!1905 = !DILocalVariable(name: "c4", scope: !1591, file: !61, line: 297, type: !11)
!1906 = !DILocation(line: 298, column: 29, scope: !1591)
!1907 = !DILocation(line: 298, column: 24, scope: !1591)
!1908 = !DILocalVariable(name: "l_10", scope: !1591, file: !61, line: 298, type: !11)
!1909 = !DILocation(line: 299, column: 26, scope: !1591)
!1910 = !DILocalVariable(name: "tmp0_0", scope: !1591, file: !61, line: 299, type: !11)
!1911 = !DILocation(line: 300, column: 22, scope: !1591)
!1912 = !DILocalVariable(name: "c5", scope: !1591, file: !61, line: 300, type: !11)
!1913 = !DILocalVariable(name: "o200", scope: !1591, file: !61, line: 301, type: !11)
!1914 = !DILocation(line: 302, column: 24, scope: !1591)
!1915 = !DILocalVariable(name: "o212", scope: !1591, file: !61, line: 302, type: !11)
!1916 = !DILocalVariable(name: "o222", scope: !1591, file: !61, line: 303, type: !11)
!1917 = !DILocalVariable(name: "o232", scope: !1591, file: !61, line: 304, type: !11)
!1918 = !DILocalVariable(name: "o242", scope: !1591, file: !61, line: 305, type: !11)
!1919 = !DILocalVariable(name: "o10", scope: !1591, file: !61, line: 306, type: !11)
!1920 = !DILocalVariable(name: "o11", scope: !1591, file: !61, line: 307, type: !11)
!1921 = !DILocalVariable(name: "o12", scope: !1591, file: !61, line: 308, type: !11)
!1922 = !DILocalVariable(name: "o13", scope: !1591, file: !61, line: 309, type: !11)
!1923 = !DILocalVariable(name: "o14", scope: !1591, file: !61, line: 310, type: !11)
!1924 = !DILocalVariable(name: "o20", scope: !1591, file: !61, line: 311, type: !11)
!1925 = !DILocalVariable(name: "o21", scope: !1591, file: !61, line: 312, type: !11)
!1926 = !DILocalVariable(name: "o22", scope: !1591, file: !61, line: 313, type: !11)
!1927 = !DILocalVariable(name: "o23", scope: !1591, file: !61, line: 314, type: !11)
!1928 = !DILocalVariable(name: "o24", scope: !1591, file: !61, line: 315, type: !11)
!1929 = !DILocation(line: 316, column: 3, scope: !1591)
!1930 = !DILocation(line: 316, column: 11, scope: !1591)
!1931 = !DILocation(line: 317, column: 3, scope: !1591)
!1932 = !DILocation(line: 317, column: 11, scope: !1591)
!1933 = !DILocation(line: 318, column: 3, scope: !1591)
!1934 = !DILocation(line: 318, column: 11, scope: !1591)
!1935 = !DILocation(line: 319, column: 3, scope: !1591)
!1936 = !DILocation(line: 319, column: 11, scope: !1591)
!1937 = !DILocation(line: 320, column: 3, scope: !1591)
!1938 = !DILocation(line: 320, column: 11, scope: !1591)
!1939 = !DILocation(line: 321, column: 3, scope: !1591)
!1940 = !DILocation(line: 321, column: 11, scope: !1591)
!1941 = !DILocation(line: 322, column: 3, scope: !1591)
!1942 = !DILocation(line: 322, column: 11, scope: !1591)
!1943 = !DILocation(line: 323, column: 3, scope: !1591)
!1944 = !DILocation(line: 323, column: 11, scope: !1591)
!1945 = !DILocation(line: 324, column: 3, scope: !1591)
!1946 = !DILocation(line: 324, column: 11, scope: !1591)
!1947 = !DILocation(line: 325, column: 3, scope: !1591)
!1948 = !DILocation(line: 325, column: 11, scope: !1591)
!1949 = !DILocation(line: 326, column: 1, scope: !1591)
!1950 = distinct !DISubprogram(name: "Hacl_Curve25519_51_secret_to_public", scope: !3, file: !3, line: 289, type: !1951, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !485, !485}
!1953 = !DILocalVariable(name: "pub", arg: 1, scope: !1950, file: !3, line: 289, type: !485)
!1954 = !DILocation(line: 0, scope: !1950)
!1955 = !DILocalVariable(name: "priv", arg: 2, scope: !1950, file: !3, line: 289, type: !485)
!1956 = !DILocalVariable(name: "basepoint", scope: !1950, file: !3, line: 291, type: !1957)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !24)
!1958 = !DILocation(line: 291, column: 11, scope: !1950)
!1959 = !DILocalVariable(name: "i", scope: !1960, file: !3, line: 292, type: !6)
!1960 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 292, column: 3)
!1961 = !DILocation(line: 0, scope: !1960)
!1962 = !DILocation(line: 292, column: 8, scope: !1960)
!1963 = !DILocation(line: 292, column: 37, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 292, column: 3)
!1965 = !DILocation(line: 292, column: 3, scope: !1960)
!1966 = !DILocation(line: 294, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 293, column: 3)
!1968 = !DILocalVariable(name: "os", scope: !1967, file: !3, line: 294, type: !485)
!1969 = !DILocation(line: 0, scope: !1967)
!1970 = !DILocation(line: 295, column: 17, scope: !1967)
!1971 = !DILocalVariable(name: "x", scope: !1967, file: !3, line: 295, type: !14)
!1972 = !DILocation(line: 296, column: 5, scope: !1967)
!1973 = !DILocation(line: 296, column: 11, scope: !1967)
!1974 = !DILocation(line: 297, column: 3, scope: !1967)
!1975 = !DILocation(line: 292, column: 55, scope: !1964)
!1976 = !DILocation(line: 292, column: 3, scope: !1964)
!1977 = distinct !{!1977, !1965, !1978, !58}
!1978 = !DILocation(line: 297, column: 3, scope: !1960)
!1979 = !DILocation(line: 298, column: 44, scope: !1950)
!1980 = !DILocation(line: 298, column: 3, scope: !1950)
!1981 = !DILocation(line: 299, column: 1, scope: !1950)
!1982 = distinct !DISubprogram(name: "Hacl_Curve25519_51_ecdh", scope: !3, file: !3, line: 308, type: !1983, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1985, !485, !485, !485}
!1985 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1986 = !DILocalVariable(name: "out", arg: 1, scope: !1982, file: !3, line: 308, type: !485)
!1987 = !DILocation(line: 0, scope: !1982)
!1988 = !DILocalVariable(name: "priv", arg: 2, scope: !1982, file: !3, line: 308, type: !485)
!1989 = !DILocalVariable(name: "pub", arg: 3, scope: !1982, file: !3, line: 308, type: !485)
!1990 = !DILocalVariable(name: "zeros", scope: !1982, file: !3, line: 310, type: !1957)
!1991 = !DILocation(line: 310, column: 11, scope: !1982)
!1992 = !DILocation(line: 311, column: 3, scope: !1982)
!1993 = !DILocalVariable(name: "res", scope: !1982, file: !3, line: 312, type: !14)
!1994 = !DILocalVariable(name: "i", scope: !1995, file: !3, line: 313, type: !6)
!1995 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 313, column: 3)
!1996 = !DILocation(line: 0, scope: !1995)
!1997 = !DILocation(line: 313, column: 8, scope: !1995)
!1998 = !DILocation(line: 313, column: 37, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 313, column: 3)
!2000 = !DILocation(line: 313, column: 3, scope: !1995)
!2001 = !DILocation(line: 315, column: 43, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 314, column: 3)
!2003 = !DILocation(line: 315, column: 51, scope: !2002)
!2004 = !DILocation(line: 315, column: 23, scope: !2002)
!2005 = !DILocalVariable(name: "uu____0", scope: !2002, file: !3, line: 315, type: !14)
!2006 = !DILocation(line: 0, scope: !2002)
!2007 = !DILocation(line: 316, column: 11, scope: !2002)
!2008 = !DILocation(line: 316, column: 21, scope: !2002)
!2009 = !DILocation(line: 316, column: 19, scope: !2002)
!2010 = !DILocation(line: 317, column: 3, scope: !2002)
!2011 = !DILocation(line: 313, column: 55, scope: !1999)
!2012 = !DILocation(line: 313, column: 3, scope: !1999)
!2013 = distinct !{!2013, !2000, !2014, !58}
!2014 = !DILocation(line: 317, column: 3, scope: !1995)
!2015 = !DILocalVariable(name: "z", scope: !1982, file: !3, line: 318, type: !14)
!2016 = !DILocation(line: 319, column: 12, scope: !1982)
!2017 = !DILocation(line: 319, column: 14, scope: !1982)
!2018 = !DILocation(line: 319, column: 8, scope: !1982)
!2019 = !DILocalVariable(name: "r", scope: !1982, file: !3, line: 319, type: !1985)
!2020 = !DILocation(line: 320, column: 11, scope: !1982)
!2021 = !DILocation(line: 320, column: 10, scope: !1982)
!2022 = !DILocation(line: 320, column: 3, scope: !1982)
!2023 = distinct !DISubprogram(name: "FStar_UInt8_eq_mask", scope: !939, file: !939, line: 179, type: !2024, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!14, !14, !14}
!2026 = !DILocalVariable(name: "a", arg: 1, scope: !2023, file: !939, line: 179, type: !14)
!2027 = !DILocation(line: 0, scope: !2023)
!2028 = !DILocalVariable(name: "b", arg: 2, scope: !2023, file: !939, line: 179, type: !14)
!2029 = !DILocation(line: 181, column: 15, scope: !2023)
!2030 = !DILocation(line: 181, column: 19, scope: !2023)
!2031 = !DILocation(line: 181, column: 17, scope: !2023)
!2032 = !DILocalVariable(name: "x", scope: !2023, file: !939, line: 181, type: !14)
!2033 = !DILocation(line: 182, column: 22, scope: !2023)
!2034 = !DILocation(line: 182, column: 21, scope: !2023)
!2035 = !DILocation(line: 182, column: 24, scope: !2023)
!2036 = !DILocalVariable(name: "minus_x", scope: !2023, file: !939, line: 182, type: !14)
!2037 = !DILocation(line: 183, column: 26, scope: !2023)
!2038 = !DILocation(line: 183, column: 30, scope: !2023)
!2039 = !DILocation(line: 183, column: 28, scope: !2023)
!2040 = !DILocalVariable(name: "x_or_minus_x", scope: !2023, file: !939, line: 183, type: !14)
!2041 = !DILocation(line: 184, column: 17, scope: !2023)
!2042 = !DILocation(line: 184, column: 30, scope: !2023)
!2043 = !DILocalVariable(name: "xnx", scope: !2023, file: !939, line: 184, type: !14)
!2044 = !DILocation(line: 185, column: 10, scope: !2023)
!2045 = !DILocation(line: 185, column: 14, scope: !2023)
!2046 = !DILocation(line: 185, column: 3, scope: !2023)
!2047 = distinct !DISubprogram(name: "Hacl_Curve25519_51_secret_to_public_wrapper", scope: !27, file: !27, line: 3, type: !1951, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!2048 = !DILocalVariable(name: "pub", arg: 1, scope: !2047, file: !27, line: 3, type: !485)
!2049 = !DILocation(line: 0, scope: !2047)
!2050 = !DILocalVariable(name: "priv", arg: 2, scope: !2047, file: !27, line: 3, type: !485)
!2051 = !DILocation(line: 5, column: 13, scope: !2047)
!2052 = !DILocation(line: 5, column: 3, scope: !2047)
!2053 = !DILocation(line: 6, column: 13, scope: !2047)
!2054 = !DILocation(line: 6, column: 3, scope: !2047)
!2055 = !DILocation(line: 7, column: 13, scope: !2047)
!2056 = !DILocation(line: 7, column: 3, scope: !2047)
!2057 = !DILocation(line: 8, column: 3, scope: !2047)
!2058 = !DILocation(line: 9, column: 1, scope: !2047)
!2059 = distinct !DISubprogram(name: "Hacl_Curve25519_51_secret_to_public_wrapper_t", scope: !27, file: !27, line: 14, type: !2060, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null}
!2062 = !DILocation(line: 15, column: 17, scope: !2059)
!2063 = !DILocalVariable(name: "pub", scope: !2059, file: !27, line: 15, type: !485)
!2064 = !DILocation(line: 0, scope: !2059)
!2065 = !DILocation(line: 16, column: 18, scope: !2059)
!2066 = !DILocalVariable(name: "priv", scope: !2059, file: !27, line: 16, type: !485)
!2067 = !DILocation(line: 17, column: 2, scope: !2059)
!2068 = !DILocation(line: 18, column: 1, scope: !2059)
