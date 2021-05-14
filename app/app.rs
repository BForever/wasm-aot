#![no_std]

mod riot_api;
use riot_api::*;

struct App {
  count: u32
}

impl App {

  fn new() -> Self {
    let count = 0;
    serialPrintln("Hello from Rust 🦀");
    Self { count }
  }

  pub fn fib(&mut self,i:u32) -> u32{
    if i==0{
      return 0;
    }
    if i==1{
      return 1;
    }
    return self.fib(i-1)+self.fib(i-2);
  }
  
  fn callfib(&mut self){
    let mut v :[u32;20]= [0;20];
    serialPrintInt(v[2]);
    serialPrint("\n");
    for i in 0..19{
        v[i]=v[i]+1;
    }
    serialPrintInt(v[2]);
    serialPrint("\n");
    let i:u32 = 1;
    serialPrintInt((&i) as *const u32 as usize as u32);

    let t1 = now();
    let res = self.fib(10);
    let t2 = now();
    serialPrint("fib(24)=");
    serialPrintInt(res);
    serialPrint(", ");
    serialPrintInt(t2-t1);
    serialPrintln(" micros");
  }

  fn run(&mut self) {
    // serialPrint("[");
    // serialPrintInt(self.count);
    // self.count = self.count+1;
    // serialPrint("]");
    // serialPrintln(" Rust 🦀");
    // serialPrintln("before delay");
    delay(1000);    
    // serialPrintln("after delay");
    let t1 = now();
    let t2 = now();
    
    pipe_write("Rust 🦀");
    serialPrint("[");
    serialPrintInt(t2);
    serialPrint("]time used for a syscall: ");
    serialPrintInt(t2-t1);
    serialPrintln(" microseconds.")
  }
}

/*
 * Entry point
 */

#[no_mangle]
pub extern fn _start() {
    let mut app = App::new();    
    let argc = get_argc();
    loop {

        if argc==1{
          app.run();
        }else if argc==0{
          let res = pipe_read();
          let t = now();
          serialPrint("[");
          serialPrintInt(t);
          serialPrint("]");
          serialPrintPtr(res.as_ptr() as *const u8,res.len());
          serialPrint("\n");
        }else if argc==2{
          app.callfib();
        }
        
        // serialPrintln("result of fib(5)=");
        // serialPrintInt(app.fib(15));
        // delay(1000);
    }
}

#[panic_handler]
fn handle_panic(_: &core::panic::PanicInfo) -> ! {
    loop {}
}
