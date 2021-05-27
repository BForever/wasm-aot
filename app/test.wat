(module
    (import "env" "printInt" (func $printInt(param i32)))
    ;; (import "env" "getA" (func $getA (result i32)))
    ;; (import "env" "getB" (func $getB (result i32)))
    (func $main (local i32)
        ;; i32.const 5
        ;; global.set  $g
        ;; call $cal
        i32.const  10
        local.set 0
        local.get 0
        call $printInt
        )
    ;; (func $cal (local i32)
    ;;     i32.const 10
    ;;     local.set 0
    ;;     ;; call $getA
    ;;     ;; call $getB
    ;;     ;; i32.add
    ;;     ;; global.get $g
    ;;     local.get 0
    ;;     ;; i32.add
    ;;     ;; i32.add
    ;;     call $printInt)
    (global $g (mut i32) (i32.const 1) )
    
)