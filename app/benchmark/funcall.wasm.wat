(module
  (type (;0;) (func))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (func (;2;) (type 0))
  (func (;3;) (type 0)
    call 0
    call 1)
  (func (;4;) (type 0)
    call 3)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1040))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1040))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 2))
  (export "rtcbenchmark_measure_native_performance" (func 3))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 4))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
