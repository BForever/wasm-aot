(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "getA" (func $getA (result i32)))
    (import "env" "getB" (func $getB (result i32)))
    (func $main
        i32.const 1
        global.set $g
        ;; global.get $g
        ;; call $printInt
        call $cal
        )
    (func $cal
        ;; i32.const 2
        ;; local.set 0
        call $getA
        call $getB
        i32.add
        global.get $g
        ;; local.get 0
        i32.add
        ;; i32.add
        call $printInt
        )
    (global $g(mut i32) (i32.const 1) )
    
)