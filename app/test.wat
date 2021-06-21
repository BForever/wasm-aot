(module
    (import "env" "printInt" (func $printInt(param i32)))
      (import "env" "rtc_startBenchmarkMeasurement_Native" (func $start))
  (import "env" "rtc_stopBenchmarkMeasurement" (func $stop))
    ;; (import "env" "getA" (func $getA (result i32)))
    ;; (import "env" "getB" (func $getB (result i32)))
    (import "env" "malloc" (func $malloc (param i32)(result i32)))
    ;; (func $test_param (param i32)(result i32)
    ;;     local.get 0
    ;;     call $printInt
    ;;     local.get 0
    ;;     i32.const 1
    ;;     i32.add
    ;; )
    ;; (func $test_br_if (param i32)
    ;;     i32.const 100
    ;;     (block (result i32)
    ;;         i32.const 200
    ;;         (block (result i32)
    ;;             i32.const 300
    ;;             (block (result i32)
    ;;                 i32.const 123
    ;;                 (br_if 2 (i32.const 1))
    ;;             ) 
    ;;             i32.add
    ;;         )
    ;;         i32.add
    ;;     )
    ;;     i32.add
    ;;     call $printInt
    ;; )
    ;; (func $test_loop (local i32 i32)
    ;;     i32.const 0x5
    ;;     local.set 0
    ;;     i32.const 0
    ;;     local.set 1
    ;;     (loop
    ;;         (block (result i32)
    ;;             i32.const 1
    ;;             (br_if 0 (i32.const 0))
    ;;             drop
    ;;             i32.const 2
    ;;         )
    ;;         local.get 1
    ;;         i32.add
    ;;         local.set 1
    ;;         local.get 0
    ;;         i32.const 1
    ;;         i32.sub
    ;;         local.tee 0
    ;;         br_if 0
    ;;     )
    ;;     local.get 1
    ;;     call $printInt
    ;; )
    ;; (func $cal 
    ;;     call $getA
    ;;     call $getB
    ;;     i32.add
    ;;     global.get $g
    ;;     i32.add
    ;;     call $printInt
    ;;     )
    ;; (func $mem (local i32 i32)
    ;;         i32.const 0
    ;;         call $printInt

    ;;     i32.const 0
    ;;     ;; call $printInt
    ;;     i64.const 1
    ;;     i64.store offset=32 align=4

    ;;         i32.const 1
    ;;         call $printInt


    ;;     i32.const 0
    ;;     i64.const 8589934595
    ;;     i64.store offset=24 align=4


    ;;         i32.const 7777
    ;;         call $printInt

            
    ;;     i32.const 0
    ;;     i64.const 17179869189
    ;;     i64.store offset=16 align=4
    ;;     i32.const 0
    ;;     i64.const 25769803783
    ;;     i64.store offset=8 align=4
    ;;     i32.const 0
    ;;     i64.const 34359738377
    ;;     i64.store align=4

    ;;         i32.const 8888
    ;;         call $printInt

    ;;     i32.const 0
    ;;     local.set 1
    ;;     (loop
    ;;         ;; i32.const 0
    ;;         ;; call $printInt

    ;;         local.get 1
    ;;         i32.load
    ;;         call $printInt
    ;;         local.get 1
    ;;         i32.const 4
    ;;         i32.add
    ;;         local.tee 1
    ;;         i32.const 40
    ;;         i32.ne
    ;;         br_if 0
    ;;     )
    ;; )
    ;; (func $div (local i32)
    ;;     i32.const 100
    ;;     i32.const -2
    ;;     i32.add
    ;;     local.tee 0
    ;;     call $printInt
    ;;     local.get 0
    ;;     i32.const 2
    ;;     i32.div_s
    ;;     call $printInt
    ;; )
    (func $siftDown (param i32 i32 i32)
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
    (func $debug (param i32 i32)
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
        call $siftDown
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
    (func $main
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
    call $debug
        ;; i32.const 100
        ;; call $test_param
        ;; call $printInt
        ;; call $mem
        ;; call $test_br_if
        ;; call $test_loop
        ;; call $div
    )
    ;; (global $g(mut i32) (i32.const 1) )
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
  (export "__table_base" (global 6))
    
)