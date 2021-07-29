(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "rtc_startBenchmarkMeasurement_Native" (func $start))
    (import "env" "rtc_stopBenchmarkMeasurement" (func $stop))
    (import "env" "malloc" (func $malloc (param i32)(result i32)))
    (func $main (local i32)
      i32.const 0
      i32.load
      call $printInt
      i32.const 20000
      i32.load
      call $printInt

      i32.const 4
      call $malloc
      local.tee 0
      call $printInt

      local.get 0
      i32.const 3
      i32.store

      local.get 0
      i32.load
      call $printInt

      i32.const 20000
      i32.const 4
      i32.store16

      i32.const 20000
      i32.load16_u
      call $printInt

      i32.const 0
      i32.const 5
      i32.store8

      i32.const 0
      i32.load8_u
      call $printInt

    )
  (memory (;0;) 1)
  (data (i32.const 0) "\01\00\00\00")
  (data (i32.const 20000) "\02\00\00\00\00\00\00\00")
  (export "memory" (memory 0))
  ;; (export "__wasm_call_ctors" (func 4))
  ;; (export "siftDown" (func 5))
  ;; (export "rtcbenchmark_measure_native_performance" (func 6))
  ;; (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 7))
  ;; (export "__dso_handle" (global 1))
  ;; (export "__data_end" (global 2))
  ;; (export "__global_base" (global 3))
  ;; (export "__heap_base" (global 4))
  ;; (export "__memory_base" (global 5))
  ;; (export "__table_base" (global 6))
    
)

