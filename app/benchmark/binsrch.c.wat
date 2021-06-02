(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (import "env" "malloc" (func (;2;) (type 1)))
  (func (;3;) (type 0))
  (func (;4;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    call 0
    local.get 1
    local.get 0
    i32.const -1
    i32.add
    local.tee 2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 3
    i32.const 1
    i32.add
    local.set 4
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.set 6
      local.get 2
      local.set 5
      i32.const 0
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 5
            local.get 7
            i32.add
            i32.const 65534
            i32.and
            i32.const 1
            i32.shr_u
            local.tee 0
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.tee 8
            local.get 3
            i32.gt_s
            br_if 0 (;@4;)
            local.get 0
            i32.const 1
            i32.add
            local.set 7
            local.get 0
            local.get 5
            i32.const 65535
            i32.and
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 8
          local.get 4
          i32.le_s
          br_if 1 (;@2;)
          local.get 7
          i32.const 65535
          i32.and
          local.get 0
          i32.const -1
          i32.add
          local.tee 5
          i32.const 65535
          i32.and
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.const 1
      i32.add
      local.set 5
      local.get 6
      i32.const 65535
      i32.and
      i32.const 999
      i32.lt_u
      br_if 0 (;@1;)
    end
    call 1
    local.get 1
    local.get 0
    i32.store)
  (func (;5;) (type 0)
    (local i32 i32 i32)
    i32.const -30
    local.set 0
    i32.const 400
    call 2
    local.tee 1
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.store
      local.get 2
      i32.const 4
      i32.add
      local.set 2
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      i32.const 70
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 100
    local.get 1
    call 4)
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
  (export "__wasm_call_ctors" (func 3))
  (export "rtcbenchmark_measure_native_performance" (func 4))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 5))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
