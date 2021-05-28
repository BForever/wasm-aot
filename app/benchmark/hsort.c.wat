(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (import "env" "malloc" (func (;0;) (type 0)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 1)))
  (func (;3;) (type 1))
  (func (;4;) (type 1)
    (local i32 i32 i32)
    i32.const 255
    local.set 0
    i32.const 1024
    call 0
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
    i32.const 256
    local.get 1
    call 5)
  (func (;5;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    call 1
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -2
      i32.add
      i32.const 2
      i32.div_s
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.tee 3
          i32.const 1
          i32.shl
          i32.const 1
          i32.or
          local.tee 2
          local.get 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 1
                i32.add
                local.tee 5
                local.get 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 2
                local.set 2
                br 1 (;@5;)
              end
              local.get 5
              local.get 2
              local.get 1
              local.get 2
              i32.const 2
              i32.shl
              i32.add
              i32.load
              local.get 1
              local.get 5
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.lt_s
              select
              local.set 2
            end
            local.get 1
            local.get 4
            i32.const 2
            i32.shl
            i32.add
            local.tee 4
            i32.load
            local.tee 5
            local.get 1
            local.get 2
            i32.const 2
            i32.shl
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            i32.ge_s
            br_if 1 (;@3;)
            local.get 4
            local.get 7
            i32.store
            local.get 6
            local.get 5
            i32.store
            local.get 2
            local.set 4
            local.get 2
            i32.const 1
            i32.shl
            i32.const 1
            i32.or
            local.tee 2
            local.get 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const -1
        i32.add
        local.set 2
        local.get 3
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        local.get 0
        i32.const -1
        i32.add
        local.tee 5
        i32.const 2
        i32.shl
        i32.add
        local.tee 2
        i32.load
        local.set 4
        local.get 2
        local.get 1
        i32.load
        i32.store
        local.get 1
        local.get 4
        i32.store
        local.get 0
        i32.const 2
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        local.set 7
        i32.const 1
        local.set 2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 1
              i32.add
              local.tee 6
              local.get 5
              i32.lt_s
              br_if 0 (;@5;)
              local.get 2
              local.set 2
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            local.get 1
            local.get 2
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.get 1
            local.get 6
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.lt_s
            select
            local.set 2
          end
          block  ;; label = @4
            local.get 4
            local.get 1
            local.get 2
            i32.const 2
            i32.shl
            i32.add
            local.tee 6
            i32.load
            local.tee 3
            i32.ge_s
            br_if 0 (;@4;)
            local.get 1
            local.get 7
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.store
            local.get 6
            local.get 4
            i32.store
            local.get 2
            local.set 7
            local.get 2
            i32.const 1
            i32.shl
            i32.const 1
            i32.or
            local.tee 2
            local.get 5
            i32.lt_s
            br_if 1 (;@3;)
          end
        end
        local.get 0
        i32.const 2
        i32.gt_s
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    call 2)
  (func (;6;) (type 3) (param i32 i32 i32)
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
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        local.tee 1
        i32.load
        local.tee 4
        local.get 0
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.tee 5
        i32.load
        local.tee 6
        i32.ge_s
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        i32.store
        local.get 5
        local.get 4
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
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 3072))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 3072))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 3))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 4))
  (export "rtcbenchmark_measure_native_performance" (func 5))
  (export "siftDown" (func 6))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
