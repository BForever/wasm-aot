(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "rtc_startBenchmarkMeasurement_Native" (func $start))
    (import "env" "rtc_stopBenchmarkMeasurement" (func $stop))
    (import "env" "malloc" (func $malloc (param i32)(result i32)))
    
    (func $test (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      i32.const 4
      local.set 4
      i32.const 5
      local.set 5
      i32.const 6
      local.set 6
      i32.const 7
      local.set 7
      i32.const 8
      local.set 8
      i32.const 9
      local.set 9
      i32.const 10
      local.set 10
      i32.const 11
      local.set 11
      i32.const 12
      local.set 12
      i32.const 13
      local.set 13
      i32.const 14
      local.set 14
      i32.const 15
      local.set 15
      i32.const 16
      local.set 16
      i32.const 17
      local.set 17
      i32.const 18
      local.set 18
      i32.const 19
      local.set 19
      i32.const 20
      local.set 20
      i32.const 21
      local.set 21
      i32.const 22
      local.set 22
      
      local.get 0
      call $printInt
      local.get 1
      call $printInt
      local.get 2
      call $printInt
      local.get 3
      call $printInt
      local.get 4
      call $printInt
      local.get 5
      call $printInt
      local.get 6
      call $printInt
      local.get 7
      call $printInt
      local.get 8
      call $printInt
      local.get 9
      call $printInt
      local.get 10
      call $printInt
      local.get 11
      call $printInt
      local.get 12
      call $printInt
      local.get 13
      call $printInt
      local.get 14
      call $printInt
      local.get 15
      call $printInt
      local.get 16
      call $printInt
      local.get 17
      call $printInt
      local.get 18
      call $printInt
      local.get 19
      call $printInt
      local.get 20
      call $printInt
      local.get 21
      call $printInt
      local.get 22
      call $printInt
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

