; ModuleID = 'autocfg_887c73f3f133753d_8.d4006e42f37d5a9d-cgu.0'
source_filename = "autocfg_887c73f3f133753d_8.d4006e42f37d5a9d-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

; core::f64::<impl f64>::to_ne_bytes
; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h281e4053ab97490eE"(double %self) unnamed_addr #0 {
start:
  %_0 = alloca [8 x i8], align 1
  %_2 = bitcast double %self to i64
  store i64 %_2, ptr %_0, align 1
  %0 = load i64, ptr %_0, align 1
  ret i64 %0
}

; autocfg_887c73f3f133753d_8::probe
; Function Attrs: uwtable
define void @_ZN26autocfg_887c73f3f133753d_85probe17h60730baa513c4039E() unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 8
  %_1 = alloca [8 x i8], align 1
; call core::f64::<impl f64>::to_ne_bytes
  %1 = call i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h281e4053ab97490eE"(double 3.140000e+00)
  store i64 %1, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_1, ptr align 8 %0, i64 8, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #1 = { uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.85.1 (4eb161250 2025-03-15)"}
