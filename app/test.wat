(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "getA" (func $getA (result i32)))
    (import "env" "getB" (func $getB (result i32)))
    (func $main 
        i32.const 0
        i32.const 0x7fffffff
        i32.store
        i32.const 0
        i32.load
        call $printInt
        ;; i32.const 1
        ;; local.set 0
        ;; i32.const 2
        ;; local.set 1
        ;; local.get 0
        ;; local.get 1
        ;; i32.add
        ;; global.set $g
        ;; global.get $g
        ;; call $printInt
        ;; call $mem
        ;; call $cal
        )
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
    (memory 1 1)
    
)