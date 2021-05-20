(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (import "env" "p" (func (;0;) (type 0)))
  (func (;1;) (type 1)
    i32.const 7
    i32.const 8
    i32.add
    call 0)
  (func (;2;) (type 1)
    call 1))
