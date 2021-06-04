(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (import "env" "printInt" (func (;0;) (type 0)))
  (func (;1;) (type 1)
    (local i32 i32)
    call 2)
  (func (;2;) (type 1)
    i32.const 100
    block (result i32)  ;; label = @1
      i32.const 200
      block (result i32)  ;; label = @2
        i32.const 300
        block (result i32)  ;; label = @3
          i32.const 123
          i32.const 0
          br_if 2 (;@1;)
        end
        i32.add
      end
      i32.add
    end
    i32.add
    call 0))
