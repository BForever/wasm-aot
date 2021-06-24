(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (import "env" "malloc" (func (;2;) (type 1)))
  (import "env" "printInt" (func (;3;) (type 2)))
  (func (;4;) (type 0))
  (func (;5;) (type 3) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    call 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 5
      i32.const 0
      local.set 6
      local.get 0
      local.set 7
      local.get 1
      local.set 8
      i32.const 0
      local.set 9
      loop  ;; label = @2
        local.get 1
        local.get 6
        i32.const 2
        i32.shl
        i32.add
        local.set 10
        local.get 7
        local.set 11
        local.get 8
        local.set 12
        local.get 9
        local.set 13
        local.get 9
        local.set 14
        loop  ;; label = @3
          local.get 2
          local.get 13
          i32.const 65535
          i32.and
          i32.const 2
          i32.shl
          i32.add
          local.get 10
          i32.load
          local.tee 15
          local.get 12
          i32.load
          local.tee 16
          i32.sub
          local.get 16
          local.get 15
          i32.sub
          local.get 15
          local.get 16
          i32.gt_s
          select
          local.tee 15
          i32.store
          local.get 2
          local.get 14
          i32.const 65535
          i32.and
          i32.const 2
          i32.shl
          i32.add
          local.get 15
          i32.store
          local.get 12
          i32.const 4
          i32.add
          local.set 12
          local.get 14
          local.get 0
          i32.add
          local.set 14
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          local.get 11
          i32.const -1
          i32.add
          local.tee 11
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const -1
        i32.add
        local.set 7
        local.get 8
        i32.const 4
        i32.add
        local.set 8
        local.get 5
        local.get 9
        i32.add
        local.set 9
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.shr_u
      local.set 11
      i32.const 0
      local.set 15
      i32.const 0
      local.set 16
      loop  ;; label = @2
        i32.const 0
        local.set 14
        i32.const 0
        local.set 13
        local.get 16
        local.set 12
        loop  ;; label = @3
          local.get 13
          local.get 2
          local.get 12
          i32.const 65535
          i32.and
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 3
          i32.gt_u
          i32.add
          local.set 13
          local.get 12
          i32.const 1
          i32.add
          local.set 12
          local.get 14
          i32.const 1
          i32.add
          local.tee 14
          i32.const 65535
          i32.and
          local.get 0
          i32.lt_u
          br_if 0 (;@3;)
        end
        local.get 4
        local.get 15
        i32.const 2
        i32.shl
        i32.add
        local.get 11
        local.get 13
        i32.const 65535
        i32.and
        i32.lt_u
        i32.store
        local.get 16
        local.get 0
        i32.add
        local.set 16
        local.get 15
        i32.const 1
        i32.add
        local.tee 15
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    call 1)
  (func (;6;) (type 0)
    (local i32 i32 i32)
    i32.const 80
    call 2
    local.set 0
    i32.const 1600
    call 2
    local.set 1
    i32.const 80
    call 2
    local.set 2
    local.get 0
    i64.const 81604378642
    i64.store offset=72 align=4
    local.get 0
    i64.const 73014444048
    i64.store offset=64 align=4
    local.get 0
    i64.const 64424509454
    i64.store offset=56 align=4
    local.get 0
    i64.const 55834574860
    i64.store offset=48 align=4
    local.get 0
    i64.const 38654705672
    i64.store offset=32 align=4
    local.get 0
    i64.const 30064771078
    i64.store offset=24 align=4
    local.get 0
    i64.const 21474836484
    i64.store offset=16 align=4
    local.get 0
    i64.const 4294967296
    i64.store align=4
    local.get 0
    i64.const -4294967295990
    i64.store offset=40 align=4
    local.get 0
    i64.const 12884902888
    i64.store offset=8 align=4
    i32.const 20
    local.get 0
    local.get 1
    i32.const 500
    local.get 2
    call 5
    block  ;; label = @1
      local.get 2
      i32.load
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 1
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 2
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 3
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=16
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 4
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=20
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 5
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=24
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 6
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=28
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 7
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=32
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 8
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=36
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 9
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=40
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 10
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=44
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 11
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=48
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 12
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=52
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 13
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=56
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 14
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=60
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 15
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=64
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 16
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=68
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 17
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=72
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 18
      call 3
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=76
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 19
      call 3
    end)
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
