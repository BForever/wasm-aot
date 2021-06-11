(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (import "env" "PrintInt32" (func (;2;) (type 1)))
  (import "env" "PrintStr" (func (;3;) (type 1)))
  (func (;4;) (type 0))
  (func (;5;) (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    call 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 52
        local.get 1
        i32.div_s
        i32.const 6
        i32.add
        local.set 3
        local.get 0
        local.get 1
        i32.const -1
        i32.add
        local.tee 4
        i32.const 2
        i32.shl
        i32.add
        local.tee 5
        i32.load
        local.set 1
        i32.const 0
        local.set 6
        loop  ;; label = @3
          local.get 6
          i32.const -1640531527
          i32.add
          local.tee 6
          i32.const 2
          i32.shr_u
          i32.const 3
          i32.and
          local.set 7
          i32.const 0
          local.set 8
          i32.const 0
          local.set 9
          loop  ;; label = @4
            local.get 0
            local.get 8
            i32.const 2
            i32.shl
            i32.add
            local.tee 10
            local.get 10
            i32.const 4
            i32.add
            i32.load
            local.tee 11
            i32.const 2
            i32.shl
            local.get 1
            i32.const 5
            i32.shr_u
            i32.xor
            local.get 11
            i32.const 3
            i32.shr_u
            local.get 1
            i32.const 4
            i32.shl
            i32.xor
            i32.add
            local.get 2
            local.get 8
            i32.const 3
            i32.and
            local.get 7
            i32.xor
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.get 1
            i32.xor
            local.get 11
            local.get 6
            i32.xor
            i32.add
            i32.xor
            local.get 10
            i32.load
            i32.add
            local.tee 1
            i32.store
            local.get 4
            local.get 9
            i32.const 1
            i32.add
            local.tee 9
            i32.const 255
            i32.and
            local.tee 8
            i32.gt_s
            br_if 0 (;@4;)
          end
          local.get 5
          local.get 0
          i32.load
          local.tee 10
          i32.const 2
          i32.shl
          local.get 1
          i32.const 5
          i32.shr_u
          i32.xor
          local.get 10
          i32.const 3
          i32.shr_u
          local.get 1
          i32.const 4
          i32.shl
          i32.xor
          i32.add
          local.get 2
          local.get 8
          i32.const 3
          i32.and
          local.get 7
          i32.xor
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 1
          i32.xor
          local.get 10
          local.get 6
          i32.xor
          i32.add
          i32.xor
          local.get 5
          i32.load
          i32.add
          local.tee 1
          i32.store
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      i32.const -2
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 1
      i32.sub
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      local.tee 1
      i32.const -1
      i32.add
      local.tee 8
      i32.const 2
      i32.shl
      i32.add
      local.set 3
      i32.const 52
      local.get 1
      i32.div_s
      i32.const 6
      i32.add
      local.tee 7
      i32.const 255
      i32.and
      i32.const -1640531527
      i32.mul
      local.set 9
      local.get 0
      i32.load
      local.set 1
      block  ;; label = @2
        local.get 8
        i32.const 255
        i32.and
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 9
          i32.const 2
          i32.shr_u
          i32.const 3
          i32.and
          local.set 6
          local.get 4
          local.set 11
          local.get 4
          local.set 8
          loop  ;; label = @4
            local.get 0
            local.get 8
            i32.const 2
            i32.shl
            i32.add
            local.tee 10
            local.get 10
            i32.load
            local.get 10
            i32.const -4
            i32.add
            i32.load
            local.tee 10
            i32.const 5
            i32.shr_u
            local.get 1
            i32.const 2
            i32.shl
            i32.xor
            local.get 10
            i32.const 4
            i32.shl
            local.get 1
            i32.const 3
            i32.shr_u
            i32.xor
            i32.add
            local.get 2
            local.get 8
            i32.const 3
            i32.and
            local.get 6
            i32.xor
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.get 10
            i32.xor
            local.get 1
            local.get 9
            i32.xor
            i32.add
            i32.xor
            i32.sub
            local.tee 1
            i32.store
            local.get 11
            i32.const -1
            i32.add
            local.tee 11
            i32.const 255
            i32.and
            local.tee 8
            br_if 0 (;@4;)
          end
          local.get 0
          local.get 0
          i32.load
          local.get 3
          i32.load
          local.tee 8
          i32.const 5
          i32.shr_u
          local.get 1
          i32.const 2
          i32.shl
          i32.xor
          local.get 8
          i32.const 4
          i32.shl
          local.get 1
          i32.const 3
          i32.shr_u
          i32.xor
          i32.add
          local.get 2
          local.get 6
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 8
          i32.xor
          local.get 1
          local.get 9
          i32.xor
          i32.add
          i32.xor
          i32.sub
          local.tee 1
          i32.store
          local.get 9
          i32.const 1640531527
          i32.add
          local.set 9
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      loop  ;; label = @2
        local.get 0
        local.get 1
        local.get 3
        i32.load
        local.tee 8
        i32.const 5
        i32.shr_u
        local.get 1
        i32.const 2
        i32.shl
        i32.xor
        local.get 8
        i32.const 4
        i32.shl
        local.get 1
        i32.const 3
        i32.shr_u
        i32.xor
        i32.add
        local.get 2
        local.get 9
        i32.const 2
        i32.shr_u
        i32.const 3
        i32.and
        local.get 4
        i32.xor
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.get 8
        i32.xor
        local.get 1
        local.get 9
        i32.xor
        i32.add
        i32.xor
        i32.sub
        local.tee 1
        i32.store
        local.get 9
        i32.const 1640531527
        i32.add
        local.set 9
        local.get 7
        i32.const -1
        i32.add
        local.tee 7
        i32.const 255
        i32.and
        br_if 0 (;@2;)
      end
    end
    call 1)
  (func (;6;) (type 0)
    (local i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i64.const 1
    i64.store offset=120
    local.get 0
    i64.const 8589934595
    i64.store offset=112
    local.get 0
    i64.const 17179869189
    i64.store offset=104
    local.get 0
    i64.const 25769803783
    i64.store offset=96
    local.get 0
    i64.const 34359738377
    i64.store offset=88
    local.get 0
    i64.const 42949672971
    i64.store offset=80
    local.get 0
    i64.const 51539607565
    i64.store offset=72
    local.get 0
    i64.const 60129542159
    i64.store offset=64
    local.get 0
    i64.const 68719476753
    i64.store offset=56
    local.get 0
    i64.const 77309411347
    i64.store offset=48
    local.get 0
    i64.const 85899345941
    i64.store offset=40
    local.get 0
    i64.const 94489280535
    i64.store offset=32
    local.get 0
    i64.const 103079215129
    i64.store offset=24
    local.get 0
    i64.const 111669149723
    i64.store offset=16
    local.get 0
    i64.const 120259084317
    i64.store offset=8
    local.get 0
    i64.const 128849018911
    i64.store
    local.get 0
    i32.const 0
    i64.load offset=1032
    i64.store offset=136
    local.get 0
    i32.const 0
    i64.load offset=1024
    i64.store offset=128
    local.get 0
    i32.const 32
    local.get 0
    i32.const 128
    i32.add
    call 5
    local.get 0
    i32.load
    call 2
    local.get 0
    i32.load offset=4
    call 2
    local.get 0
    i32.load offset=8
    call 2
    local.get 0
    i32.load offset=12
    call 2
    local.get 0
    i32.load offset=16
    call 2
    local.get 0
    i32.load offset=20
    call 2
    local.get 0
    i32.load offset=24
    call 2
    local.get 0
    i32.load offset=28
    call 2
    local.get 0
    i32.load offset=32
    call 2
    local.get 0
    i32.load offset=36
    call 2
    local.get 0
    i32.load offset=40
    call 2
    local.get 0
    i32.load offset=44
    call 2
    local.get 0
    i32.load offset=48
    call 2
    local.get 0
    i32.load offset=52
    call 2
    local.get 0
    i32.load offset=56
    call 2
    local.get 0
    i32.load offset=60
    call 2
    local.get 0
    i32.load offset=64
    call 2
    local.get 0
    i32.load offset=68
    call 2
    local.get 0
    i32.load offset=72
    call 2
    local.get 0
    i32.load offset=76
    call 2
    local.get 0
    i32.load offset=80
    call 2
    local.get 0
    i32.load offset=84
    call 2
    local.get 0
    i32.load offset=88
    call 2
    local.get 0
    i32.load offset=92
    call 2
    local.get 0
    i32.load offset=96
    call 2
    local.get 0
    i32.load offset=100
    call 2
    local.get 0
    i32.load offset=104
    call 2
    local.get 0
    i32.load offset=108
    call 2
    local.get 0
    i32.load offset=112
    call 2
    local.get 0
    i32.load offset=116
    call 2
    local.get 0
    i32.load offset=120
    call 2
    local.get 0
    i32.load offset=124
    call 2
    i32.const 1040
    call 3
    local.get 0
    i32.const 144
    i32.add
    global.set 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1072))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1046))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1072))
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
  (export "__table_base" (global 6))
  (data (;0;) (i32.const 1024) "\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00done.\00"))
