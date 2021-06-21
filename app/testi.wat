(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32)))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 1)))
  (import "env" "malloc" (func (;3;) (type 2)))
  (func (;4;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
      local.tee 3
      local.get 2
      i32.ge_s
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.tee 4
            local.get 2
            i32.lt_s
            br_if 0 (;@4;)
            local.get 3
            local.set 3
            br 1 (;@3;)
          end
          local.get 4
          local.get 3
          local.get 0
          local.get 3
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 0
          local.get 4
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.lt_s
          select
          local.set 3
        end
        local.get 0
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.tee 4
        i32.load
        local.set 5
        local.get 0
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        local.tee 1
        i32.load
        local.tee 6
        call 0
        local.get 5
        call 0
        local.get 1
        i32.load
        local.get 4
        i32.load
        i32.ge_s
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        i32.store
        local.get 4
        local.get 6
        i32.store
        local.get 3
        local.set 1
        local.get 3
        i32.const 1
        i32.shl
        i32.const 1
        i32.or
        local.tee 3
        local.get 2
        i32.lt_s
        br_if 0 (;@2;)
      end
    end)
  (func (;5;) (type 4) (param i32 i32)
    (local i32 i32 i32)
    call 1
    block  ;; label = @1
      local.get 0
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 2
      local.get 0
      i32.const 2
      i32.shl
      local.get 1
      i32.add
      i32.const -4
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.load
        local.set 4
        local.get 3
        local.get 1
        i32.load
        i32.store
        local.get 1
        local.get 4
        i32.store
        local.get 1
        i32.const 0
        local.get 2
        i32.const -2
        i32.add
        call 4
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        i32.const 2
        i32.gt_s
        br_if 0 (;@2;)
      end
    end
    call 1
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.load
        call 0
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 0
        i32.const -1
        i32.add
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    call 2)
  (func (;6;) (type 1)
    (local i32 i32 i32)
    i32.const 99
    local.set 0
    i32.const 400
    call 3
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
      i32.const -1
      i32.add
      local.tee 0
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 100
    local.get 1
    call 5)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1040))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1040))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "siftDown" (func 4))
  (export "rtcbenchmark_measure_native_performance" (func 5))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 6))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
