(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 1)))
  (import "env" "malloc" (func (;3;) (type 2)))
  (func (;4;) (type 1)
    (local i32)
    i32.const 0
    i32.load
    call 0
    i32.const 20000
    i32.load
    call 0
    i32.const 4
    call 3
    local.tee 0
    call 0
    local.get 0
    i32.const 3
    i32.store
    local.get 0
    i32.load
    call 0
    i32.const 20000
    i32.const 4
    i32.store16
    i32.const 20000
    i32.load16_u
    call 0
    i32.const 0
    i32.const 5
    i32.store8
    i32.const 0
    i32.load8_u
    call 0)
  (memory (;0;) 1)
  (export "memory" (memory 0))
  (data (;0;) (i32.const 0) "\01\00\00\00")
  (data (;1;) (i32.const 20000) "\02\00\00\00\00\00\00\00"))
