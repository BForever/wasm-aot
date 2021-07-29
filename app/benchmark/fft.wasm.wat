(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;0;) (type 0)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;1;) (type 0)))
  (import "env" "malloc" (func (;2;) (type 1)))
  (import "env" "memset" (func (;3;) (type 2)))
  (import "env" "printStr" (func (;4;) (type 1)))
  (import "env" "printInt" (func (;5;) (type 3)))
  (func (;6;) (type 0))
  (func (;7;) (type 4) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.mul
    i32.const 1
    i32.shl
    i32.const 16
    i32.shr_s)
  (func (;8;) (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 65535
    local.set 4
    call 0
    block  ;; label = @1
      i32.const 1
      local.get 2
      i32.const 65535
      i32.and
      i32.shl
      local.tee 5
      i32.const 16
      i32.shl
      local.tee 6
      i32.const 67108864
      i32.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 6
        i32.const -65536
        i32.add
        local.tee 2
        i32.const 65536
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.shr_s
        local.set 7
        i32.const 0
        local.set 2
        i32.const 1
        local.set 8
        i32.const 1
        local.set 9
        loop  ;; label = @3
          local.get 2
          i32.const 16
          i32.shl
          i32.const 16
          i32.shr_s
          local.set 10
          local.get 5
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 16
            i32.shl
            i32.const 17
            i32.shr_s
            local.tee 2
            local.get 10
            i32.add
            local.get 7
            i32.gt_s
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            local.get 10
            i32.and
            local.get 2
            i32.add
            local.tee 2
            i32.const 16
            i32.shl
            i32.const 16
            i32.shr_s
            local.tee 10
            local.get 8
            i32.le_s
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.const 1
            i32.shl
            local.tee 8
            i32.add
            local.tee 11
            i32.load16_u
            local.set 12
            local.get 11
            local.get 0
            local.get 10
            i32.const 1
            i32.shl
            local.tee 10
            i32.add
            local.tee 13
            i32.load16_u
            i32.store16
            local.get 13
            local.get 12
            i32.store16
            local.get 1
            local.get 8
            i32.add
            local.tee 8
            i32.load16_u
            local.set 11
            local.get 8
            local.get 1
            local.get 10
            i32.add
            local.tee 10
            i32.load16_u
            i32.store16
            local.get 10
            local.get 11
            i32.store16
          end
          local.get 7
          local.get 9
          i32.const 1
          i32.add
          local.tee 9
          i32.const 16
          i32.shl
          i32.const 16
          i32.shr_s
          local.tee 8
          i32.ge_s
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.set 4
      block  ;; label = @2
        local.get 6
        i32.const 65537
        i32.lt_s
        br_if 0 (;@2;)
        local.get 6
        i32.const 16
        i32.shr_s
        local.set 14
        i32.const 9
        local.set 15
        i32.const 65536
        local.set 16
        i32.const 1
        local.set 17
        i32.const 0
        local.set 4
        i32.const 1
        local.set 8
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 1
              local.set 10
              br 1 (;@4;)
            end
            i32.const 0
            local.set 2
            i32.const 0
            local.set 10
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                local.get 2
                i32.const 1
                i32.shl
                local.tee 7
                i32.add
                i32.load16_s
                local.tee 2
                local.get 2
                i32.const 31
                i32.shr_s
                local.tee 2
                i32.add
                local.get 2
                i32.xor
                i32.const 16
                i32.shl
                i32.const 16
                i32.shr_s
                i32.const 16383
                i32.gt_s
                br_if 1 (;@5;)
                local.get 1
                local.get 7
                i32.add
                i32.load16_s
                local.tee 2
                local.get 2
                i32.const 31
                i32.shr_s
                local.tee 2
                i32.add
                local.get 2
                i32.xor
                i32.const 16
                i32.shl
                i32.const 16
                i32.shr_s
                i32.const 16384
                i32.ge_s
                br_if 1 (;@5;)
                local.get 14
                local.get 10
                i32.const 1
                i32.add
                local.tee 10
                i32.const 16
                i32.shl
                i32.const 16
                i32.shr_s
                local.tee 2
                i32.gt_s
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 10
              br 1 (;@4;)
            end
            i32.const 1
            local.set 10
            local.get 4
            i32.const 1
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 17
            i32.const 1
            i32.lt_s
            br_if 0 (;@4;)
            local.get 8
            i32.const 1
            i32.shl
            local.set 18
            local.get 15
            i32.const 65535
            i32.and
            local.set 19
            i32.const 0
            local.set 2
            i32.const 0
            local.set 20
            loop  ;; label = @5
              block  ;; label = @6
                local.get 14
                local.get 20
                i32.const 16
                i32.shl
                i32.const 16
                i32.shr_s
                local.tee 7
                i32.le_s
                br_if 0 (;@6;)
                local.get 2
                local.get 19
                i32.shl
                i32.const 16
                i32.shl
                local.tee 2
                i32.const 16
                i32.shr_s
                i32.const 1
                i32.shl
                i32.const 1536
                i32.add
                i32.load16_s
                local.get 10
                i32.shr_s
                local.set 8
                local.get 2
                i32.const 15
                i32.shr_s
                i32.const 1024
                i32.add
                i32.load16_u
                local.tee 2
                i32.const 0
                local.get 2
                i32.sub
                local.get 3
                select
                i32.const 16
                i32.shl
                i32.const 16
                i32.shr_s
                local.get 10
                i32.shr_s
                local.set 9
                local.get 20
                local.set 2
                loop  ;; label = @7
                  local.get 1
                  local.get 7
                  i32.const 1
                  i32.shl
                  local.tee 7
                  i32.add
                  local.tee 5
                  i32.load16_s
                  local.set 11
                  local.get 0
                  local.get 2
                  local.get 17
                  i32.add
                  i32.const 16
                  i32.shl
                  i32.const 16
                  i32.shr_s
                  i32.const 1
                  i32.shl
                  local.tee 12
                  i32.add
                  local.tee 13
                  local.get 0
                  local.get 7
                  i32.add
                  local.tee 7
                  i32.load16_s
                  local.get 10
                  i32.shr_s
                  local.tee 6
                  local.get 13
                  i32.load16_s
                  local.tee 13
                  local.get 8
                  i32.mul
                  i32.const 15
                  i32.shr_u
                  local.get 1
                  local.get 12
                  i32.add
                  local.tee 12
                  i32.load16_s
                  local.tee 21
                  local.get 9
                  i32.mul
                  i32.const 15
                  i32.shr_u
                  i32.sub
                  local.tee 22
                  i32.sub
                  i32.store16
                  local.get 12
                  local.get 11
                  local.get 10
                  i32.shr_s
                  local.tee 11
                  local.get 21
                  local.get 8
                  i32.mul
                  i32.const 15
                  i32.shr_u
                  local.get 13
                  local.get 9
                  i32.mul
                  i32.const 15
                  i32.shr_u
                  i32.add
                  local.tee 13
                  i32.sub
                  i32.store16
                  local.get 7
                  local.get 22
                  local.get 6
                  i32.add
                  i32.store16
                  local.get 5
                  local.get 13
                  local.get 11
                  i32.add
                  i32.store16
                  local.get 14
                  local.get 2
                  local.get 18
                  i32.add
                  local.tee 2
                  i32.const 16
                  i32.shl
                  i32.const 16
                  i32.shr_s
                  local.tee 7
                  i32.gt_s
                  br_if 0 (;@7;)
                end
              end
              local.get 17
              local.get 20
              i32.const 1
              i32.add
              local.tee 20
              i32.const 16
              i32.shl
              i32.const 16
              i32.shr_s
              local.tee 2
              i32.gt_s
              br_if 0 (;@5;)
            end
          end
          local.get 16
          i32.const 15
          i32.shr_s
          local.set 8
          local.get 15
          i32.const -1
          i32.add
          local.set 15
          local.get 16
          i32.const 1
          i32.shl
          local.tee 16
          i32.const 16
          i32.shr_s
          local.tee 17
          local.get 14
          i32.lt_s
          br_if 0 (;@3;)
        end
      end
      call 1
    end
    local.get 4
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s)
  (func (;9;) (type 0)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 0
    i32.const 128
    call 2
    local.set 1
    i32.const 128
    call 2
    i32.const 0
    i32.const 128
    call 3
    local.set 2
    local.get 1
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 0
      i32.const 4
      i32.shl
      i32.store16
      local.get 3
      i32.const 2
      i32.add
      local.set 3
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 3072
    call 4
    drop
    i32.const 0
    local.set 0
    loop  ;; label = @1
      i32.const 3083
      call 4
      drop
      local.get 1
      local.get 0
      i32.add
      i32.load16_s
      call 5
      local.get 2
      local.get 0
      i32.add
      i32.load16_s
      call 5
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      i32.const 128
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 0
    local.get 1
    local.get 2
    i32.const 6
    i32.const 0
    call 8
    drop
    i32.const 3089
    call 4
    drop
    loop  ;; label = @1
      i32.const 3083
      call 4
      drop
      local.get 1
      local.get 0
      i32.add
      i32.load16_s
      call 5
      local.get 2
      local.get 0
      i32.add
      i32.load16_s
      call 5
      local.get 0
      i32.const 2
      i32.add
      local.tee 0
      i32.const 128
      i32.ne
      br_if 0 (;@1;)
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 3120))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 3099))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 3104))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 3120))
  (global (;7;) i32 (i32.const 0))
  (global (;8;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 6))
  (export "fix_mpy" (func 7))
  (export "rtcbenchmark_measure_native_performance" (func 8))
  (export "Sinewave" (global 1))
  (export "javax_rtcbench_RTCBenchmark_void_test_native" (func 9))
  (export "debugbuf1" (global 2))
  (export "__dso_handle" (global 3))
  (export "__data_end" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__memory_base" (global 7))
  (export "__table_base" (global 8))
  (data (;0;) (i32.const 1024) "\00\00\c9\00\92\01[\02$\03\ed\03\b6\04~\05G\06\10\07\d9\07\a1\08j\092\0a\fb\0a\c3\0b\8b\0cS\0d\1b\0e\e3\0e\ab\0fr\109\11\00\12\c7\12\8e\13U\14\1b\15\e1\15\a7\16m\173\18\f8\18\bd\19\82\1aF\1b\0b\1c\cf\1c\93\1dV\1e\19\1f\dc\1f\9f a!#\22\e4\22\a6#g$'%\e7%\a7&g'&(\e5(\a3)a*\1e+\db+\98,T-\10.\cc.\86/A0\fb0\b41m2&3\de3\964M5\036\b96o7$8\d88\8c9?:\f2:\a4;V<\07=\b7=g>\16?\c5?s@ A\cdAyB%C\d0CzD#E\ccEtF\1cG\c3GiH\0eI\b3IWJ\faJ\9dK?L\e0L\80M N\bfN]O\faO\97P3Q\ceQhR\01S\9aS2T\c9T_U\f4U\89V\1dW\b0WBX\d3XcY\f3Y\81Z\0f[\9c[(\5c\b3\5c=]\c6]O^\d6^]_\e2_g`\eb`na\f0aqb\f1bpc\eeckd\e7dbe\ddeVf\cefEg\bcg1h\a5h\19i\8bi\fcilj\dbjJk\b7k#l\8el\f8lam\c9m0n\95n\fan^o\c0o\22p\82p\e1p@q\9dq\f9qTr\aer\06s^s\b5s\0at^t\b1t\03uTu\a4u\f3u@v\8dv\d8v\22wkw\b3w\f9w?x\83x\c6x\08yIy\89y\c7y\04zAz|z\b5z\eez%{\5c{\91{\c4{\f7{)|Y|\88|\b6|\e2|\0e}8}a}\89}\b0}\d5}\f9}\1c~>~^~~~\9c~\b9~\d4~\ef~\08\7f \7f7\7fL\7fa\7ft\7f\86\7f\96\7f\a6\7f\b4\7f\c1\7f\cd\7f\d7\7f\e0\7f\e8\7f\ef\7f\f5\7f\f9\7f\fc\7f\fe\7f\ff\7f\fe\7f\fc\7f\f9\7f\f5\7f\ef\7f\e8\7f\e0\7f\d7\7f\cd\7f\c1\7f\b4\7f\a6\7f\96\7f\86\7ft\7fa\7fL\7f7\7f \7f\08\7f\ef~\d4~\b9~\9c~~~^~>~\1c~\f9}\d5}\b0}\89}a}8}\0e}\e2|\b6|\88|Y|)|\f7{\c4{\91{\5c{%{\eez\b5z|zAz\04z\c7y\89yIy\08y\c6x\83x?x\f9w\b3wkw\22w\d8v\8dv@v\f3u\a4uTu\03u\b1t^t\0at\b5s^s\06s\aerTr\f9q\9dq@q\e1p\82p\22p\c0o^o\fan\95n0n\c9mam\f8l\8el#l\b7kJk\dbjlj\fci\8bi\19i\a5h1h\bcgEg\cefVf\ddebe\e7dkd\eecpc\f1bqb\f0ana\eb`g`\e2_]_\d6^O^\c6]=]\b3\5c(\5c\9c[\0f[\81Z\f3YcY\d3XBX\b0W\1dW\89V\f4U_U\c9T2T\9aS\01ShR\ceQ3Q\97P\faO]O\bfN N\80M\e0L?L\9dK\faJWJ\b3I\0eIiH\c3G\1cGtF\ccE#EzD\d0C%CyB\cdA As@\c5?\16?g>\b7=\07=V<\a4;\f2:?:\8c9\d88$8o7\b96\036M5\964\de3&3m2\b41\fb0A0\86/\cc.\10.T-\98,\db+\1e+a*\a3)\e5(&(g'\a7&\e7%'%g$\a6#\e4\22#\22a!\9f \dc\1f\19\1fV\1e\93\1d\cf\1c\0b\1cF\1b\82\1a\bd\19\f8\183\18m\17\a7\16\e1\15\1b\15U\14\8e\13\c7\12\00\129\11r\10\ab\0f\e3\0e\1b\0eS\0d\8b\0c\c3\0b\fb\0a2\0aj\09\a1\08\d9\07\10\07G\06~\05\b6\04\ed\03$\03[\02\92\01\c9\00\00\007\ffn\fe\a5\fd\dc\fc\13\fcJ\fb\82\fa\b9\f9\f0\f8'\f8_\f7\96\f6\ce\f5\05\f5=\f4u\f3\ad\f2\e5\f1\1d\f1U\f0\8e\ef\c7\ee\00\ee9\edr\ec\ab\eb\e5\ea\1f\eaY\e9\93\e8\cd\e7\08\e7C\e6~\e5\ba\e4\f5\e31\e3m\e2\aa\e1\e7\e0$\e0a\df\9f\de\dd\dd\1c\ddZ\dc\99\db\d9\da\19\daY\d9\99\d8\da\d7\1b\d7]\d6\9f\d5\e2\d4%\d4h\d3\ac\d2\f0\d14\d1z\d0\bf\cf\05\cfL\ce\93\cd\da\cc\22\ccj\cb\b3\ca\fd\c9G\c9\91\c8\dc\c7(\c7t\c6\c1\c5\0e\c5\5c\c4\aa\c3\f9\c2I\c2\99\c1\ea\c0;\c0\8d\bf\e0\be3\be\87\bd\db\bc0\bc\86\bb\dd\ba4\ba\8c\b9\e4\b8=\b8\97\b7\f2\b6M\b6\a9\b5\06\b5c\b4\c1\b3 \b3\80\b2\e0\b1A\b1\a3\b0\06\b0i\af\cd\ae2\ae\98\ad\ff\acf\ac\ce\ab7\ab\a1\aa\0c\aaw\a9\e3\a8P\a8\be\a7-\a7\9d\a6\0d\a6\7f\a5\f1\a4d\a4\d8\a3M\a3\c3\a2:\a2\b1\a1*\a1\a3\a0\1e\a0\99\9f\15\9f\92\9e\10\9e\8f\9d\0f\9d\90\9c\12\9c\95\9b\19\9b\9e\9a#\9a\aa\992\99\bb\98D\98\cf\97[\97\e7\96u\96\04\96\94\95%\95\b6\94I\94\dd\93r\93\08\93\9f\927\92\d0\91k\91\06\91\a2\90@\90\de\8f~\8f\1f\8f\c0\8ec\8e\07\8e\ac\8dR\8d\fa\8c\a2\8cK\8c\f6\8b\a2\8bO\8b\fd\8a\ac\8a\5c\8a\0d\8a\c0\89s\89(\89\de\88\95\88M\88\07\88\c1\87}\87:\87\f8\86\b7\86w\869\86\fc\85\bf\85\84\85K\85\12\85\db\84\a4\84o\84<\84\09\84\d7\83\a7\83x\83J\83\1e\83\f2\82\c8\82\9f\82w\82P\82+\82\07\82\e4\81\c2\81\a2\81\82\81d\81G\81,\81\11\81\f8\80\e0\80\c9\80\b4\80\9f\80\8c\80z\80j\80Z\80L\80?\803\80)\80 \80\18\80\11\80\0b\80\07\80\04\80\02\80\01\80\02\80\04\80\07\80\0b\80\11\80\18\80 \80)\803\80?\80L\80Z\80j\80z\80\8c\80\9f\80\b4\80\c9\80\e0\80\f8\80\11\81,\81G\81d\81\82\81\a2\81\c2\81\e4\81\07\82+\82P\82w\82\9f\82\c8\82\f2\82\1e\83J\83x\83\a7\83\d7\83\09\84<\84o\84\a4\84\db\84\12\85K\85\84\85\bf\85\fc\859\86w\86\b7\86\f8\86:\87}\87\c1\87\07\88M\88\95\88\de\88(\89s\89\c0\89\0d\8a\5c\8a\ac\8a\fd\8aO\8b\a2\8b\f6\8bK\8c\a2\8c\fa\8cR\8d\ac\8d\07\8ec\8e\c0\8e\1f\8f~\8f\de\8f@\90\a2\90\06\91k\91\d0\917\92\9f\92\08\93r\93\dd\93I\94\b6\94%\95\94\95\04\96u\96\e7\96[\97\cf\97D\98\bb\982\99\aa\99#\9a\9e\9a\19\9b\95\9b\12\9c\90\9c\0f\9d\8f\9d\10\9e\92\9e\15\9f\99\9f\1e\a0\a3\a0*\a1\b1\a1:\a2\c3\a2M\a3\d8\a3d\a4\f1\a4\7f\a5\0d\a6\9d\a6-\a7\be\a7P\a8\e3\a8w\a9\0c\aa\a1\aa7\ab\ce\abf\ac\ff\ac\98\ad2\ae\cd\aei\af\06\b0\a3\b0A\b1\e0\b1\80\b2 \b3\c1\b3c\b4\06\b5\a9\b5M\b6\f2\b6\97\b7=\b8\e4\b8\8c\b94\ba\dd\ba\86\bb0\bc\db\bc\87\bd3\be\e0\be\8d\bf;\c0\ea\c0\99\c1I\c2\f9\c2\aa\c3\5c\c4\0e\c5\c1\c5t\c6(\c7\dc\c7\91\c8G\c9\fd\c9\b3\caj\cb\22\cc\da\cc\93\cdL\ce\05\cf\bf\cfz\d04\d1\f0\d1\ac\d2h\d3%\d4\e2\d4\9f\d5]\d6\1b\d7\da\d7\99\d8Y\d9\19\da\d9\da\99\dbZ\dc\1c\dd\dd\dd\9f\dea\df$\e0\e7\e0\aa\e1m\e21\e3\f5\e3\ba\e4~\e5C\e6\08\e7\cd\e7\93\e8Y\e9\1f\ea\e5\ea\ab\ebr\ec9\ed\00\ee\c7\ee\8e\efU\f0\1d\f1\e5\f1\ad\f2u\f3=\f4\05\f5\ce\f5\96\f6_\f7'\f8\f0\f8\b9\f9\82\faJ\fb\13\fc\dc\fc\a5\fdn\fe7\ffBEFORE FFT\00-----\00AFTER FFT\00"))
