#ifndef UTILS_H
#define UTILS_H
#include"types.h"

void* sys_malloc(u16 size);
void* sys_calloc(u16 numBlocks,u16 size);
void* sys_realloc(void* ptr,u16 size);
void sys_free(void* ptr);

void ReadLebUnsigned(u64 *o_value, u32 i_maxNumBits, bytes *io_bytes, bytes i_end);
void ReadLebSigned(i64 *o_value, u32 i_maxNumBits, bytes *io_bytes, bytes i_end);

void ReadLEB_u7(u8 *o_value, bytes *io_bytes, bytes i_end);
void ReadLEB_i7(i8 *o_value, bytes *io_bytes, bytes i_end);
void Read_u8(u8 *o_value, bytes *io_bytes, bytes i_end);

void Read_u32(u32 *o_value, bytes *io_bytes, bytes i_end);
void ReadLEB_u32(u32 *o_value, bytes *io_bytes, bytes i_end);
void ReadLEB_i32(i32 *o_value, bytes *io_bytes, bytes i_end);

void ReadLEB_i64(i64 *o_value, bytes *io_bytes, bytes i_end);

void Read_utf8(bytes *o_utf8, bytes *io_bytes, bytes i_end);

void hexdump(bytes buf, u32 buf_len);
void hexdump_pgm(bytes buf, u32 buf_len);

u32 mystrcmp(const char* S1,const char* S2);
bool is_entry_func(wasm_module_ptr module, wasm_function_ptr func);
#endif