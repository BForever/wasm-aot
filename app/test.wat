(module
    (import "env" "printInt" (func $printInt(param i32)))
    ;; (import "env" "getA" (func $getA (result i32)))
    ;; (import "env" "getB" (func $getB (result i32)))
    (func $main (local i32 i32)
        call $test_br_if
        ;; call $test_loop
    )
    (func $test_br_if
        i32.const 100
        (block (result i32)
            i32.const 200
            (block (result i32)
                i32.const 300
                (block (result i32)
                    i32.const 123
                    (br_if 2 (i32.const 0))
                ) 
                i32.add
            )
            i32.add
        )
        i32.add
        call $printInt
    )
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
    ;; (func $mem
        ;; i32.const 0
        ;; i32.const 9999
        ;; i32.store
        ;; i32.const 0
        ;; i32.load
        ;; call $printInt
        ;; )
    ;; (global $g(mut i32) (i32.const 1) )
    ;; (memory 1 1)
    
)