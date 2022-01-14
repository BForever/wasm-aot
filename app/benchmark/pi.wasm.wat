(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (import "env" "malloc" (func (;0;) (type 0)))
  (import "env" "memset" (func (;1;) (type 1)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;2;) (type 2)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;3;) (type 2)))
  (import "env" "printStr" (func (;4;) (type 0)))
  (func (;5;) (type 2))
  (func (;6;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 10
    i32.mul
    local.tee 2
    i32.const 3
    i32.div_s
    local.tee 3
    i32.const 2
    i32.shl
    call 0
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.const 3
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      local.set 5
      local.get 3
      local.set 6
      loop  ;; label = @2
        local.get 5
        i32.const 2
        i32.store
        local.get 5
        i32.const 4
        i32.add
        local.set 5
        local.get 6
        i32.const -1
        i32.add
        local.tee 6
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.add
      local.set 9
      local.get 3
      i32.const 1
      i32.shl
      i32.const -1
      i32.add
      local.set 10
      local.get 3
      i32.const 2
      i32.shl
      local.get 4
      i32.add
      i32.const -4
      i32.add
      local.set 11
      i32.const 0
      local.set 8
      local.get 2
      i32.const 3
      i32.lt_s
      local.set 12
      i32.const 0
      local.set 13
      i32.const 0
      local.set 7
      i32.const 0
      local.set 14
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 12
              br_if 0 (;@5;)
              i32.const 0
              local.set 15
              local.get 11
              local.set 5
              local.get 3
              local.set 6
              local.get 10
              local.set 2
              loop  ;; label = @6
                local.get 5
                local.get 5
                i32.load
                i32.const 10
                i32.mul
                local.get 15
                local.get 6
                i32.mul
                i32.add
                local.tee 15
                local.get 15
                local.get 2
                i32.div_s
                local.tee 15
                local.get 2
                i32.mul
                i32.sub
                i32.store
                local.get 5
                i32.const -4
                i32.add
                local.set 5
                local.get 2
                i32.const -2
                i32.add
                local.set 2
                local.get 6
                i32.const 1
                i32.gt_s
                local.set 16
                local.get 6
                i32.const -1
                i32.add
                local.set 6
                local.get 16
                br_if 0 (;@6;)
              end
              local.get 4
              local.get 15
              local.get 15
              i32.const 10
              i32.div_s
              local.tee 5
              i32.const 10
              i32.mul
              i32.sub
              i32.store
              block  ;; label = @6
                local.get 15
                i32.const -90
                i32.add
                i32.const 9
                i32.gt_u
                br_if 0 (;@6;)
                local.get 14
                i32.const 1
                i32.add
                local.set 14
                br 3 (;@3;)
              end
              local.get 15
              i32.const -100
              i32.add
              i32.const 9
              i32.gt_u
              br_if 1 (;@4;)
              local.get 1
              local.get 8
              i32.add
              local.get 7
              i32.const 49
              i32.add
              i32.store8
              block  ;; label = @6
                local.get 14
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 9
                local.get 8
                i32.add
                i32.const 48
                local.get 14
                call 1
                drop
              end
              local.get 14
              local.get 8
              i32.add
              i32.const 1
              i32.add
              local.set 8
              i32.const 0
              local.set 14
              i32.const 0
              local.set 7
              br 2 (;@3;)
            end
            i32.const 0
            local.set 5
            local.get 4
            i32.const 0
            i32.store
          end
          local.get 1
          local.get 8
          i32.add
          local.get 7
          i32.const 48
          i32.add
          i32.store8
          block  ;; label = @4
            local.get 14
            i32.const 1
            i32.lt_s
            br_if 0 (;@4;)
            local.get 9
            local.get 8
            i32.add
            i32.const 57
            local.get 14
            call 1
            drop
          end
          local.get 14
          local.get 8
          i32.add
          i32.const 1
          i32.add
          local.set 8
          i32.const 0
          local.set 14
          local.get 5
          local.set 7
        end
        local.get 13
        i32.const 1
        i32.add
        local.tee 13
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 8
    i32.add
    local.tee 5
    local.get 7
    i32.const 48
    i32.add
    i32.store8
    local.get 5
    i32.const 1
    i32.add
    i32.const 0
    i32.store8)
  (func (;7;) (type 4) (param i32 i32) (result i32)
    (local i32)
    i32.const 41
    call 0
    local.set 2
    call 2
    i32.const 40
    local.get 2
    call 6
    call 3
    local.get 2
    call 4
    drop
    local.get 2)
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
  (export "__wasm_call_ctors" (func 5))
  (export "ComputePi" (func 6))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 7))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
