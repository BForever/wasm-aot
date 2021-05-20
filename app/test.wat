(module
    (import "env" "p" (func $p))
    (func $main
        call $p)
    (func $sec
        call $main)
)