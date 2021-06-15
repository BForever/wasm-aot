(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32)))
  (import "env" "printInt" (func (;0;) (type 0)))
  (import "env" "rtc_startBenchmarkMeasurement_Native" (func (;1;) (type 1)))
  (import "env" "rtc_stopBenchmarkMeasurement" (func (;2;) (type 1)))
  (import "env" "malloc" (func (;3;) (type 2)))
  (func (;4;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    local.tee 7
    call 0
    local.get 7
    i32.load
    call 0
    local.get 2
    i32.const 2
    i32.shl
    local.get 0
    i32.add
    i32.const -4
    i32.add
    i32.load
    call 0)
  (func (;5;) (type 4) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -2
      i32.add
      i32.const 2
      i32.div_s
      local.set 2
      loop  ;; label = @2
        local.get 1
        local.get 2
        i32.const 2
        i32.shl
        i32.add
        local.tee 4
        i32.load
        call 0
        local.get 1
        local.get 2
        local.get 0
        call 4
        local.get 2
        i32.const 0
        i32.gt_s
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 3
      local.get 0
      i32.const 2
      i32.shl
      local.get 1
      i32.add
      i32.const -4
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 0
        local.get 2
        local.get 1
        i32.load
        i32.store
        local.get 1
        local.get 0
        i32.store
        local.get 1
        i32.const 0
        local.get 3
        i32.const -2
        i32.add
        call 4
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        i32.const 2
        i32.gt_s
        br_if 0 (;@2;)
      end
    end)
  (func (;6;) (type 1)
    (local i32 i32 i32)
    i32.const 99
    local.set 0
    i32.const 0
    local.tee 1
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.store
      local.get 2
      i32.const 4
      i32.add
      local.set 2
      local.get 0
      i32.const -1
      i32.add
      local.tee 0
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 100
    local.get 1
    call 5)
  (memory (;0;) 1 1)
  (global (;0;) (mut i32) (i32.const 1040))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1040))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1)))
