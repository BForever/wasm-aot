mod riot_api;
use riot_api::*;


#[no_mangle]
pub extern fn  _start() {
    let s = String::from("broadcast");

    let part1 = &s[0..5];
    let part2 = &s[5..9];
    let stack = vec![1;1024];

    serialPrint(part1);
    serialPrintln(part2);

    for i in stack.iter(){
        serialPrintInt(*i);
    }

    serialPrintInt(stack[1]);
    


    // println!("{}={}+{}", s, part1, part2);
}