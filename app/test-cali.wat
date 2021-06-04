(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "getA" (func (;1;) (type 1)))
  (import "env" "getB" (func (;2;) (type 1)))
  (func (;3;) (type 2)
    call 5)
  (func (;4;) (type 2)
    i32.const 10
    i32.const 1
    i32.shr_u
    call 0)
  (func (;5;) (type 2)
    i32.const 10
    i32.const 50
    i32.lt_s
    call 0
    i32.const 10
    i32.const 50
    i32.lt_u
    call 0
    i32.const 10
    i32.const 50
    i32.le_s
    call 0
    i32.const 10
    i32.const 50
    i32.le_u
    call 0
    i32.const 10
    i32.const 50
    i32.gt_s
    call 0
    i32.const 10
    i32.const 50
    i32.gt_u
    call 0
    i32.const 10
    i32.const 50
    i32.ge_s
    call 0
    i32.const 10
    i32.const 50
    i32.ge_u
    call 0
    i32.const 10
    i32.const 50
    i32.eq
    call 0
    i32.const 10
    i32.const 50
    i32.ne
    call 0)
  (export "main" (func 3)))
