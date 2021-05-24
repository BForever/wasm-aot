(module
    (import "env" "printInt" (func $printInt(param i32)))
    (import "env" "getA" (func $getA (result i32)))
    (import "env" "getB" (func $getB (result i32)))
    (func $main
        call $cal)
    (func $cal
        call $getA
        call $getB
        i32.add
        call $printInt)
    
)