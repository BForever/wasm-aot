(module
  (type (;0;) (func))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (func (;2;) (type 0))
  (func (;3;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 0
    i32.const 0
    local.set 1
    loop  ;; label = @1
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 1
        i32.and
        i32.const 1024
        i32.add
        i32.load8_u
        local.tee 3
        i32.const 59
        i32.mul
        i32.const 100
        i32.div_u
        local.get 3
        i32.const 3
        i32.mul
        i32.const 10
        i32.div_u
        i32.add
        local.get 3
        i32.const 11
        i32.mul
        i32.const 100
        i32.div_u
        i32.add
        i32.store8 offset=15
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.const 160
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.const 160
      i32.ne
      br_if 0 (;@1;)
    end
    call 1
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1056))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1026))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1056))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 2))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 3))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6))
  (data (;0;) (i32.const 1024) "\02\01"))
