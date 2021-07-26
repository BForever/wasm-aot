(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (import "env" "malloc" (func (;2;) (type 1)))
  (import "env" "printInt" (func (;3;) (type 2)))
  (func (;4;) (type 0))
  (func (;5;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    call 0
    local.get 3
    local.get 2
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store8 offset=11
    local.get 2
    local.set 5
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 4
        i32.const 16
        i32.shl
        local.set 5
        local.get 1
        i32.load16_s
        local.tee 4
        local.get 5
        i32.const 16
        i32.shr_s
        local.get 3
        i32.const 12
        i32.add
        local.get 3
        i32.const 11
        i32.add
        call 6
        local.get 1
        i32.const 2
        i32.add
        local.set 1
        local.get 0
        i32.const -1
        i32.add
        local.tee 0
        br_if 0 (;@2;)
      end
      local.get 3
      i32.load offset=12
      local.set 5
    end
    call 1
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 5
    local.get 2
    i32.sub
    i32.const 1
    i32.add
    i32.const 255
    i32.and)
  (func (;6;) (type 4) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 0
    local.get 1
    i32.sub
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    local.get 4
    i32.const 12
    i32.add
    local.get 4
    i32.const 11
    i32.add
    call 7
    i32.const 8
    local.get 3
    i32.load8_u
    i32.sub
    local.set 1
    block  ;; label = @1
      local.get 4
      i32.load8_u offset=11
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=12
      local.set 5
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.and
            local.tee 6
            local.get 1
            i32.const 255
            i32.and
            local.tee 7
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            i32.load
            local.tee 2
            local.get 2
            i32.load8_u
            local.get 5
            local.get 1
            local.get 0
            i32.sub
            local.tee 1
            i32.const 255
            i32.and
            i32.shl
            i32.or
            i32.store8
            br 2 (;@2;)
          end
          local.get 2
          i32.load
          local.tee 8
          local.get 8
          i32.load8_u
          local.get 5
          local.get 6
          local.get 7
          i32.sub
          i32.shr_u
          i32.or
          i32.store8
          local.get 2
          local.get 2
          i32.load
          i32.const 1
          i32.add
          i32.store
          local.get 0
          local.get 1
          i32.sub
          local.set 0
          i32.const 8
          local.set 1
          local.get 0
          i32.const 255
          i32.and
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.const 0
      i32.store8 offset=11
    end
    local.get 3
    i32.const 8
    local.get 1
    i32.sub
    i32.store8
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;7;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    i32.const 32
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_s
    local.tee 3
    i32.add
    local.get 3
    i32.xor
    i32.const 65535
    i32.and
    local.tee 3
    i32.clz
    i32.sub
    i32.const 0
    local.get 3
    select
    local.tee 4
    i32.const 255
    i32.and
    local.tee 3
    i32.const 1088
    i32.add
    i32.load8_u
    local.set 5
    local.get 3
    i32.const 1
    i32.shl
    i32.const 1040
    i32.add
    i32.load16_u
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 1
        local.get 6
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      local.get 6
      local.get 3
      i32.shl
      local.get 0
      local.get 0
      i32.const 1
      i32.lt_s
      i32.sub
      i32.const -1
      local.get 3
      i32.shl
      i32.const -1
      i32.xor
      i32.and
      i32.const 65535
      i32.and
      i32.or
      i32.store
      local.get 5
      local.get 4
      i32.add
      local.set 5
    end
    local.get 2
    local.get 5
    i32.store8)
  (func (;8;) (type 1) (param i32) (result i32)
    i32.const 32
    local.get 0
    i32.clz
    i32.sub
    i32.const 0
    local.get 0
    select
    i32.const 255
    i32.and)
  (func (;9;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.load16_u offset=1032
    i32.store16
    local.get 0
    i32.const 0
    i64.load offset=1024 align=2
    i64.store
    i32.const 20
    call 2
    local.tee 1
    i64.const 0
    i64.store align=1
    local.get 1
    i32.const 16
    i32.add
    i32.const 0
    i32.store align=1
    local.get 1
    i32.const 8
    i32.add
    i64.const 0
    i64.store align=1
    block  ;; label = @1
      i32.const 5
      local.get 0
      local.get 1
      call 5
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.load8_u
        call 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1136))
  (global (;1;) i32 (i32.const 1088))
  (global (;2;) i32 (i32.const 1040))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1105))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 1136))
  (global (;7;) i32 (i32.const 0))
  (global (;8;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 4))
  (export "rtcbenchmark_measure_native_performance" (func 5))
  (export "compress" (func 6))
  (export "encode" (func 7))
  (export "si_length_tbl" (global 1))
  (export "si_tbl" (global 2))
  (export "computeBinaryLog" (func 8))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 9))
  (export "__dso_handle" (global 3))
  (export "__data_end" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__memory_base" (global 7))
  (export "__table_base" (global 8))
  (data (;0;) (i32.const 1024) "\00\00\01\00\00\00\ff\00\00\00")
  (data (;1;) (i32.const 1040) "\00\00\02\00\03\00\04\00\05\00\06\00\0e\00\1e\00>\00~\00\fe\00\fe\01\fe\03\fe\07\fe\0f\fe\1f\fe?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\03\03\03\03\04\05\06\07\08\09\0a\0b\0c\0d\0e"))
