(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 1)))
  (import "env" "malloc" (func (;3;) (type 2)))
  (func (;4;) (type 1)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1
        i32.const 7
        i32.lt_s
        br_if 0 (;@2;)
        call 2
        br 1 (;@1;)
      end
      i32.const 11
      i32.const 3
      i32.const 0
      select
      call 0
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 1040))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1040))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0)))
