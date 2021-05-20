(module
    (import "env" "p" (func $p(param i32)))
    (func $cal
        i32.const 7
        i32.const 8
        i32.add
        call $p)
    (func $main
        call $cal)
)