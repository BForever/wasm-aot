(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "rtc_startBenchmarkMeasurement_Native" (func $start))
    (import "env" "rtc_stopBenchmarkMeasurement" (func $stop))
    (import "env" "malloc" (func $malloc (param i32)(result i32)))
    
    (func $test (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      
    )

    (func $main 
      i32.const 0
      i32.const 1
      i32.const 2
      i32.const 3
      call $test
    )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (data (i32.const 0) "\00\01\03\04")
  (global (;0;) (mut i32) (i32.const 1040))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1040))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
)

