(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func))
  (type (;6;) (func (result i32)))
  (import "env" "print" (func (;0;) (type 0)))
  (import "env" "pipe_open" (func (;1;) (type 1)))
  (import "env" "delay" (func (;2;) (type 2)))
  (import "env" "pipe_read" (func (;3;) (type 3)))
  (import "env" "memcpy" (func (;4;) (type 4)))
  (import "env" "pipe_write" (func (;5;) (type 3)))
  (func (;6;) (type 5))
  (func (;7;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      local.set 2
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      local.set 1
      local.get 2
      i32.load8_u
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const -1
    i32.add)
  (func (;8;) (type 2) (param i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      local.set 2
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      local.set 1
      local.get 2
      i32.load8_u
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 3
    i32.const -1
    i32.add
    call 0)
  (func (;9;) (type 6) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 1408
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1024
    i32.const 15
    call 0
    i32.const 1040
    call 1
    local.set 1
    i32.const 1048
    call 1
    local.set 2
    i32.const 2000
    call 2
    local.get 0
    i32.const -1
    i32.add
    local.set 3
    loop (result i32)  ;; label = @1
      i32.const 1053
      i32.const 14
      call 0
      local.get 1
      local.get 0
      i32.const 1399
      call 3
      drop
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 0
        local.get 4
        i32.add
        local.set 5
        local.get 4
        i32.const 1
        i32.add
        local.tee 6
        local.set 4
        local.get 5
        i32.load8_u
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 6
      i32.const -1
      i32.add
      call 0
      i32.const 1068
      i32.const 1
      call 0
      local.get 3
      local.set 4
      loop  ;; label = @2
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.load8_u
        br_if 0 (;@2;)
      end
      local.get 4
      i32.const 1070
      i32.const 8
      call 4
      i32.const 1000
      call 2
      i32.const 1078
      i32.const 16
      call 0
      local.get 2
      local.get 0
      i32.const 1399
      call 5
      drop
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 0
        local.get 4
        i32.add
        local.set 5
        local.get 4
        i32.const 1
        i32.add
        local.tee 6
        local.set 4
        local.get 5
        i32.load8_u
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 6
      i32.const -1
      i32.add
      call 0
      i32.const 1068
      i32.const 1
      call 0
      i32.const 2000
      call 2
      br 0 (;@1;)
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 5200))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1095))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 5200))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 6))
  (export "strlen" (func 7))
  (export "printwl" (func 8))
  (export "_start" (func 9))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6))
  (data (;0;) (i32.const 1024) "[server start]\0a\00receive\00send\00[server] recv:\00\0a\00,world!\00[server] send:\0d\0a\00"))
