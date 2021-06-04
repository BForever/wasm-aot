(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "getA" (func $getA (result i32)))
    (import "env" "getB" (func $getB (result i32)))
    (func $main 
        ;; call $test_i32_shr
        call $test_i32_comparison
    )
    (func $test_i32_shr
        i32.const 10
        i32.const 1
        ;; i32.shl
        ;; i32.shr_s
        i32.shr_u
        call $printInt
    )
    (func $test_i32_comparison
        i32.const 10
        i32.const 50
        i32.lt_s
        call $printInt
        i32.const 10
        i32.const 10
        i32.lt_s
        call $printInt
        i32.const 100
        i32.const 50
        i32.lt_s
        call $printInt
        i32.const 10
        i32.const 50
        i32.lt_u
        call $printInt
        i32.const 10
        i32.const 50
        i32.le_s
        call $printInt
        i32.const 10
        i32.const 50
        i32.le_u
        call $printInt
        i32.const 10
        i32.const 50
        i32.gt_s
        call $printInt
        i32.const 10
        i32.const 50
        i32.gt_u
        call $printInt
        i32.const 10
        i32.const 50
        i32.ge_s
        call $printInt
        i32.const 10
        i32.const 50
        i32.ge_u
        call $printInt
        i32.const 10
        i32.const 50
        i32.eq
        call $printInt
        i32.const 10
        i32.const 50
        i32.ne
        call $printInt
    )
    (export "main" (func $main))
)