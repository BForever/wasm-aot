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
    call 0)
  (func (;5;) (type 2)
    i32.const 100
    block (result i32)  ;; label = @1
      i32.const 200
      block (result i32)  ;; label = @2
        i32.const 300
        block (result i32)  ;; label = @3
          i32.const 123
          i32.const 1
          br_if 2 (;@1;)
        end
        i32.add
      end
      i32.add
    end
    i32.add
    call 0)
  (export "main" (func 3)))
