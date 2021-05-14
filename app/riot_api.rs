#![allow(dead_code)]
#![allow(non_snake_case)]

#[link(wasm_import_module = "env")]
extern {
  #[link_name = "delay"]          fn unsafe_delay(ms: u32);
  #[link_name = "now"]          fn unsafe_now()->u32;

  #[link_name = "print"] fn unsafe_print(ptr: *const u8, size: usize);
  #[link_name = "printInt"] fn unsafe_print_int(out: u32);

  #[link_name = "pipe_write"] fn unsafe_pipe_write(ptr: *const u8, size: usize);
  #[link_name = "pipe_read"] fn unsafe_pipe_read(ptr: *mut u8, size: usize);
  #[link_name = "shm_get"] fn unsafe_shm_get()->*mut u8;

  #[link_name = "get_argc"]          fn unsafe_get_argc()->u32;
}

pub fn delay          (ms: u32)              { unsafe { unsafe_delay(ms); } }
pub fn now          ()->u32              { unsafe { unsafe_now() } }
pub fn serialPrintInt(out: u32) { unsafe { unsafe_print_int(out); } }
pub fn serialPrint     (out: &str)       { 
  unsafe {     
    unsafe_print(out.as_bytes().as_ptr() as *const u8, out.len());
  }
}

pub fn serialPrintPtr     (out: *const u8,size:usize)       { 
  unsafe {     
    unsafe_print(out, size);
  }
}

pub fn serialPrintln     (out: &str)       {   
  serialPrint(out);
  serialPrint("\n");  
}

pub fn pipe_write     (out: &str)       { 
  unsafe {     
    unsafe_pipe_write(out.as_bytes().as_ptr() as *const u8, out.len());
  }
}

pub fn pipe_read     () ->[u8;20]     { 
  unsafe {     
    let mut buff:[u8;20]=[b'\0';20];
    // buff[0]=b'a';
    unsafe_pipe_read((&mut buff).as_mut_ptr() as *mut u8, buff.len());
    return buff;
  }
}



pub fn get_argc          ()->u32              { unsafe { unsafe_get_argc() } }