#ifndef SAFETY_CHECK_H
#define SAFETY_CHECK_H

#define check_memory_bound 0
#define check_icall_bound 0
#define check_icall_type 0
//只需要在栈净增加的操作后使用，如const,call,这里测试加在const上的开销
#define check_stack_overflow 0

#define flash_data 0

#endif