(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "printInt" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 0)))
  (import "env" "malloc" (func (;3;) (type 2)))
  (func (;4;) (type 0))
  (func (;5;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    call 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.set 2
      i32.const 0
      local.set 3
      i32.const 0
      local.get 0
      i32.sub
      i32.const 65535
      i32.and
      local.set 4
      local.get 0
      local.set 5
      i32.const 0
      local.set 6
      loop  ;; label = @2
        local.get 3
        call 1
        local.get 5
        i32.const -1
        i32.add
        local.set 5
        block  ;; label = @3
          local.get 6
          i32.const -1
          i32.xor
          i32.const 65535
          i32.and
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 65535
          i32.and
          local.set 7
          i32.const 0
          local.set 8
          local.get 2
          local.set 9
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                local.get 8
                i32.const 2
                i32.shl
                i32.add
                local.tee 10
                i32.load
                local.tee 11
                local.get 9
                i32.load
                local.tee 12
                i32.gt_s
                br_if 0 (;@6;)
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              local.get 10
              local.get 12
              i32.store
              local.get 1
              local.get 8
              i32.const 1
              i32.add
              local.tee 8
              i32.const 2
              i32.shl
              i32.add
              local.get 11
              i32.store
            end
            local.get 9
            i32.const 4
            i32.add
            local.set 9
            local.get 8
            local.get 7
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    call 2)
  (func (;6;) (type 0)
    (local i32)
    i32.const 12
    call 3
    local.tee 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 4294967298
    i64.store align=4
    i32.const 3
    local.get 0
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
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 4))
  (export "rtcbenchmark_measure_native_performance" (func 5))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 6))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
