(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 255
    local.set 0
    i32.const 1024
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.const 4
      i32.add
      local.set 1
      local.get 0
      i32.const -1
      i32.add
      local.tee 0
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 2
    i32.const 255
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 254
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 1
        local.get 3
        i32.const 1
        i32.gt_u
        select
        local.set 4
        i32.const 0
        local.set 0
        i32.const 1028
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 2
              i32.shl
              i32.const 1024
              i32.add
              local.tee 5
              i32.load
              local.tee 6
              local.get 1
              i32.load
              local.tee 7
              i32.gt_s
              br_if 0 (;@5;)
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              br 1 (;@4;)
            end
            local.get 5
            local.get 7
            i32.store
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 2
            i32.shl
            i32.const 1024
            i32.add
            local.get 6
            i32.store
          end
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          local.get 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 256
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0)
  (func (;2;) (type 2) (param i32 i32) (result i32)
    call 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 6144))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 2048))
  (global (;4;) i32 (i32.const 1024))
  (global (;5;) i32 (i32.const 6144))
  (global (;6;) i32 (i32.const 0))
  (global (;7;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "__original_main" (func 1))
  (export "numbers" (global 1))
  (export "main" (func 2))
  (export "__main_void" (func 1))
  (export "__dso_handle" (global 2))
  (export "__data_end" (global 3))
  (export "__global_base" (global 4))
  (export "__heap_base" (global 5))
  (export "__memory_base" (global 6))
  (export "__table_base" (global 7)))
