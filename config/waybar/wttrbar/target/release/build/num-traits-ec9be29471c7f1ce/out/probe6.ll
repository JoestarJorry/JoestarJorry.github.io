; ModuleID = 'probe6.d698576c4dbbd92c-cgu.0'
source_filename = "probe6.d698576c4dbbd92c-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@alloc_15c1356ab95b0d2b98ea1d91ca33573b = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/core/src/num/mod.rs" }>, align 1
@alloc_42e4369f469ed050e0a451fe83604fcd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_15c1356ab95b0d2b98ea1d91ca33573b, [16 x i8] c"K\00\00\00\00\00\00\00~\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: nonlazybind uwtable
define void @_ZN6probe65probe17h2f387d00e117de75E() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8f28e53d15899888E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h9c10299f6363b058E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_42e4369f469ed050e0a451fe83604fcd) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8f28e53d15899888E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h9c10299f6363b058E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
