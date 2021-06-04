(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (import "env" "printInt" (func (;0;) (type 0)))
  (func (;1;) (type 1)
    i32.const 100
    call 2
    call 0)
  (func (;2;) (type 2) (param i32) (result i32)
    local.get 0
    call 0
    local.get 0
    i32.const 1
    i32.add))
