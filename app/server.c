typedef unsigned int u32;
typedef int i32;
typedef char i8;
typedef unsigned char u8;

extern void printInt(u32 num);
extern void print(u8 *str, u32 len);
extern void delay(u32 ms);
extern u32 now();
extern u32 get_argc();
extern int pipe_open(const char* name);
extern int pipe_read(u32 id,char *bytes, u32 len);
extern int pipe_write(u32 id,char *bytes, u32 len);
extern void memcpy(u8* dst,u8* src,u32 len);

int strlen(const char* str){
    int len = 0;
    while(*(str+len)){
        len++;
    }
    return len;
}
void printwl(char *bytes){
    print(bytes,strlen(bytes));
}

int _start()
{
    #define buff_len (1400)
    u8 buff[buff_len];
    printwl("[server start]\n");
    int receive_pipe = pipe_open("receive");
    int send_pipe = pipe_open("send");

    // #define COUNT_NUM 10
    // int count=0;
delay(2000);
    while (1)
    {
        u32 size;
        
        printwl("[server] recv:");
        size = pipe_read(receive_pipe,buff,buff_len-1);
        printwl(buff);
        print("\n",1);
// printwl("before memcpy\r\n");
        memcpy(buff+strlen(buff),",world!",8);
// printwl("after memcpy\r\n");
        delay(1000);

        printwl("[server] send:\r\n");
        // pipe_write(send_pipe,buff,strlen(buff)+1);
        pipe_write(send_pipe,buff,buff_len-1);
        printwl(buff);
        print("\n",1);
        delay(2000);

        // count++;
        // if(count%COUNT_NUM==0){
        //     printwl("server count: ");
        //     printInt(count/COUNT_NUM);
            // print("\n",1);
        // }
    }
}