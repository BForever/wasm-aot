(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "getA" (func (;1;) (type 1)))
  (import "env" "getB" (func (;2;) (type 1)))
  (func (;3;) (type 2)
    (local i32)
    i32.const 1
    global.set 0
    call 4)
  (func (;4;) (type 2)
    (local i32 i32)
    i32.const 2
    local.set 0
    call 1
    call 2
    i32.add
    global.get 0
    local.get 0
    i32.add
    i32.add
    call 0)
  (global (;0;) (mut i32) (i32.const 1)))
