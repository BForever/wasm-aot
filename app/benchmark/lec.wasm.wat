(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (import "env" "malloc" (func (;2;) (type 1)))
  (import "env" "memset" (func (;3;) (type 2)))
  (import "env" "printInt" (func (;4;) (type 3)))
  (func (;5;) (type 4))
  (func (;6;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    call 0
    drop
    local.get 2
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 4
      i32.const 0
      local.set 5
      i32.const 0
      local.set 6
      local.get 2
      local.set 3
      loop  ;; label = @2
        local.get 5
        local.set 7
        i32.const 32
        local.get 1
        local.get 4
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        local.tee 5
        local.get 7
        i32.sub
        i32.const 16
        i32.shl
        local.tee 7
        i32.const 16
        i32.shr_s
        local.tee 8
        local.get 7
        i32.const 31
        i32.shr_s
        local.tee 7
        i32.add
        local.get 7
        i32.xor
        i32.const 65535
        i32.and
        local.tee 7
        i32.clz
        i32.sub
        i32.const 0
        local.get 7
        select
        local.tee 9
        i32.const 255
        i32.and
        local.tee 10
        i32.const 1584
        i32.add
        i32.load8_u
        local.set 7
        local.get 10
        i32.const 1
        i32.shl
        i32.const 1536
        i32.add
        i32.load16_u
        local.set 11
        block  ;; label = @3
          local.get 10
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 8
          i32.const 1
          i32.lt_s
          i32.sub
          i32.const -1
          local.get 10
          i32.shl
          i32.const -1
          i32.xor
          i32.and
          i32.const 65535
          i32.and
          local.get 11
          local.get 10
          i32.shl
          i32.or
          local.set 11
          local.get 9
          local.get 7
          i32.add
          local.set 7
        end
        local.get 6
        i32.const 8
        i32.add
        local.set 10
        block  ;; label = @3
          local.get 7
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 255
              i32.and
              local.tee 8
              local.get 10
              i32.const 255
              i32.and
              local.tee 6
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 3
              i32.load8_u
              local.get 11
              local.get 10
              local.get 7
              i32.sub
              local.tee 10
              i32.const 255
              i32.and
              i32.shl
              i32.or
              i32.store8
              br 2 (;@3;)
            end
            local.get 3
            local.get 3
            i32.load8_u
            local.get 11
            local.get 8
            local.get 6
            i32.sub
            i32.shr_u
            i32.or
            i32.store8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 7
            local.get 10
            i32.sub
            local.set 7
            i32.const 8
            local.set 10
            local.get 7
            i32.const 255
            i32.and
            br_if 0 (;@4;)
          end
          i32.const 8
          local.set 10
        end
        local.get 10
        i32.const -8
        i32.add
        local.set 6
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    call 1
    drop
    local.get 3
    local.get 2
    i32.sub
    i32.const 1
    i32.add
    i32.const 255
    i32.and)
  (func (;7;) (type 5) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    i32.const 32
    local.get 0
    local.get 1
    i32.sub
    i32.const 16
    i32.shl
    local.tee 0
    i32.const 16
    i32.shr_s
    local.tee 4
    local.get 0
    i32.const 31
    i32.shr_s
    local.tee 0
    i32.add
    local.get 0
    i32.xor
    i32.const 65535
    i32.and
    local.tee 0
    i32.clz
    i32.sub
    i32.const 0
    local.get 0
    select
    local.tee 5
    i32.const 255
    i32.and
    local.tee 1
    i32.const 1584
    i32.add
    i32.load8_u
    local.set 0
    local.get 1
    i32.const 1
    i32.shl
    i32.const 1536
    i32.add
    i32.load16_u
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 1
      i32.shl
      local.get 4
      local.get 4
      i32.const 1
      i32.lt_s
      i32.sub
      i32.const -1
      local.get 1
      i32.shl
      i32.const -1
      i32.xor
      i32.and
      i32.const 65535
      i32.and
      i32.or
      local.set 6
      local.get 0
      local.get 5
      i32.add
      local.set 0
    end
    i32.const 8
    local.get 3
    i32.load8_u
    i32.sub
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 255
          i32.and
          local.tee 4
          local.get 1
          i32.const 255
          i32.and
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.tee 2
          local.get 2
          i32.load8_u
          local.get 6
          local.get 1
          local.get 0
          i32.sub
          local.tee 1
          i32.const 255
          i32.and
          i32.shl
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 2
        i32.load
        local.tee 7
        local.get 7
        i32.load8_u
        local.get 6
        local.get 4
        local.get 5
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
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 8
    local.get 1
    i32.sub
    i32.store8)
  (func (;8;) (type 6) (param i32 i32 i32)
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
    i32.const 1584
    i32.add
    i32.load8_u
    local.set 5
    local.get 3
    i32.const 1
    i32.shl
    i32.const 1536
    i32.add
    i32.load16_u
    local.set 6
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      local.get 1
      local.get 6
      i32.store
      local.get 2
      local.get 5
      i32.store8
      return
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
    local.get 2
    local.get 5
    local.get 4
    i32.add
    i32.store8)
  (func (;9;) (type 1) (param i32) (result i32)
    i32.const 32
    local.get 0
    i32.clz
    i32.sub
    i32.const 0
    local.get 0
    select
    i32.const 255
    i32.and)
  (func (;10;) (type 4)
    (local i32 i32)
    block  ;; label = @1
      i32.const 256
      i32.const 1024
      i32.const 1024
      call 2
      local.tee 0
      i32.const 0
      i32.const 1024
      call 3
      call 6
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load8_u
        call 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1632))
  (global (;1;) i32 (i32.const 1584))
  (global (;2;) i32 (i32.const 1536))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1601))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 1632))
  (global (;7;) i32 (i32.const 0))
  (global (;8;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 5))
  (export "rtcbenchmark_measure_native_performance" (func 6))
  (export "si_length_tbl" (global 1))
  (export "si_tbl" (global 2))
  (export "compress" (func 7))
  (export "encode" (func 8))
  (export "computeBinaryLog" (func 9))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 10))
  (export "__dso_handle" (global 3))
  (export "__data_end" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__memory_base" (global 7))
  (export "__table_base" (global 8))
  (data (;0;) (i32.const 1024) "\17\fe\1b\fe\1d\fe\1e\fe1\fe<\fe>\fe+\fe+\feA\feG\fe:\fe0\fe%\fe\17\fe&\fe@\fe;\fe;\fe9\fe/\fe<\fe=\feZ\feU\feA\feH\feP\fep\few\few\fe^\fe#\fe\08\fe#\fe;\fe+\fe\03\fe\11\fe2\fe4\feH\feS\feS\fe9\fe?\feU\feo\fec\fe8\feJ\feQ\feQ\feE\fe1\fe8\feJ\feF\fe:\fe;\fe6\fe1\fe)\feA\feU\feP\feZ\feW\feK\feY\fei\fen\feg\fe3\fe.\feM\feD\fe>\feU\fe_\feS\feY\fe_\fe`\fe[\feQ\feY\feh\fe~\fe\9d\feo\fe\84\fe\bc\fe\7f\feq\fe{\fe\88\fe|\feW\fe\80\fe\b2\fe\bd\fe\b0\fe\bc\fe\c6\fe\b4\fe\d2\fe\dc\fe\cf\fe\dc\fe\e6\fe\e4\fe\de\fe\bf\fe\c8\fe\eb\fe\f0\fe\ee\fe\cc\fe\f2\fe\15\ff\07\ff\06\ff\eb\fe\10\ffI\ffO\ffM\ffF\ffe\ffd\ffL\ff>\ff;\ffD\ff4\ffH\ffH\ff]\ffi\ffb\ffz\ffp\ff\8b\ff\97\ff\9b\ff\9f\ff\a2\ff\b4\ff\bd\ff\e4\ff\d9\ff\c7\ff\b6\ff\cd\ff\e9\ff\df\ff\d5\ff\92\ff\7f\ff\b0\ff\f2\ff\bc\ff\99\ff\c4\ff\b6\ff\b7\ff\d8\ff\02\00\17\00\0b\00\df\ff\d1\ff\e6\ff\06\00\e6\ff\d4\ff\d6\ff\bf\ff\bc\ff\b1\ff\db\ff\ea\ff\ea\ff\00\00\fb\ff\e7\ff\dd\ff\dc\ff\d8\ff\d3\ff\c9\ff\d4\ff\c2\ff\ae\ff\a4\ff\a4\ff\ad\ff\b3\ff\cb\ff\bb\ff\b6\ff\b9\ff\b1\ff\a5\ff\9e\ff\b0\ff\cb\ff\c6\ff\c7\ff\be\ff\81\ff\93\ff\93\ff\87\ff\a1\ff\7f\ff_\ffa\ffi\ff[\ffh\ffk\ffe\ffl\ffa\ffX\ffZ\ffZ\ffC\ff`\ffb\ffH\ffB\ffT\ffj\ff=\ff;\ffL\ff7\ff+\ff%\ff\18\ff#\ff5\ff:\ff!\ff'\ffT\ffY\ff4\ff\f8\fe\10\ff-\ff!\ff\0f\ff")
  (data (;1;) (i32.const 1536) "\00\00\02\00\03\00\04\00\05\00\06\00\0e\00\1e\00>\00~\00\fe\00\fe\01\fe\03\fe\07\fe\0f\fe\1f\fe?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\03\03\03\03\04\05\06\07\08\09\0a\0b\0c\0d\0e"))
