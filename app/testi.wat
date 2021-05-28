(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (import "env" "printInt" (func (;0;) (type 0)))
  (func (;1;) (type 1)
    (local i32)
    i32.const 10
    local.set 0
    local.get 0
    call 0)
  (global (;0;) (mut i32) (i32.const 1)))
