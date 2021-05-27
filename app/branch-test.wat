(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "getA" (func $getA (result i32)))
    (import "env" "getB" (func $getB (result i32)))
    ;; (import "env" "printF32" (func $printF32(param f32)))
    ;; (import "env" "getF32A" (func $getF32A (result f32)))
    ;; (import "env" "getF32B" (func $getF32B (result f32)))
    (func $main
        call $cal)
    (func $cal
        call $getA
        call $getB
        i32.add
        call $printInt)
    (func $test_br_if
        i32.const 100
        (block (result i32)
            i32.const 200
            (block (result i32)
                i32.const 300
                (block (result i32)
                    i32.const 123
                    (br_if 2 (i32.const 1))
                ) (i32.add)
            ) (i32.add)
        ) (i32.add)
        call $printInt)
    (export "main" (func $main))
)