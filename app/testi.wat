(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "getA" (func (;1;) (type 1)))
  (import "env" "getB" (func (;2;) (type 1)))
  (func (;3;) (type 2)
    call 4)
  (func (;4;) (type 2)
    call 1
    call 2
    i32.add
    call 0))
