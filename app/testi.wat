(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 1)))
  (import "env" "malloc" (func (;3;) (type 2)))
  (func (;4;) (type 1)
    (local i32 i32)
    i32.const 0
    call 0
    i32.const 0
    i64.const 1
    i64.store offset=32 align=4
    i32.const 1
    call 0
    i32.const 0
    i64.const 8589934595
    i64.store offset=24 align=4
    i32.const 7777
    call 0
    i32.const 0
    i64.const 17179869189
    i64.store offset=16 align=4
    i32.const 0
    i64.const 25769803783
    i64.store offset=8 align=4
    i32.const 0
    i64.const 34359738377
    i64.store align=4
    i32.const 8888
    call 0
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 1
      i32.load
      call 0
      local.get 1
      i32.const 4
      i32.add
      local.tee 1
      i32.const 40
      i32.ne
      br_if 0 (;@1;)
    end)
  (func (;5;) (type 1)
    call 4)
  (memory (;0;) 1 1)
  (global (;0;) (mut i32) (i32.const 1040))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1040))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1)))
