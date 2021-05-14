typedef unsigned int u32;
typedef int i32;
typedef char i8;
typedef unsigned char u8;


extern void printInt(u32 num);
extern void print(u8* str,u32 len);
extern void delay(u32 ms);
extern u32 now();
extern u32 get_argc();


unsigned int strlen(u8* str){
    unsigned int i=0;
	while((*str++)!='\0')
	{ 
		i++;
	}
	return i;
}

void printl(u8* str){
    print(str,strlen(str));
}

//
int main(){
    char data[] = "hello,world!";
    int argc = get_argc();
    if(argc==1){
        printl("task 0: init data=\"");
        printl(data);
        printl("\"\n");
        delay(1000);
        data[11]='?';
        printl("task 0: final data=\"");
        printl(data);
        printl("\"\ntask 0 idle...\n");
        while (1)
        {
            delay(1000);
            printl("task 0 idle...\n");
        }
        
    }else 
    {
        printl("task 1: init data=\"");
        printl(data);
        printl("\"\n");
        delay(1000);
        printl("task 1: final data=\"");
        printl(data);
        printl("\"\ntask1 idle...\n");
        while (1)
        {
            delay(1000);
            printl("task 1 idle...\n");
        }
    }
    
    
}