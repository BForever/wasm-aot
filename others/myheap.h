#ifndef HEAP_H
#define HEAP_H
#include "types.h"

#define heap_size 1024

void *aot_calloc(u16 nele, u16 size);
void *aot_realloc(void *ptr, u16 len);
void aot_free(void *p);
void *aot_malloc(u16 len);

#endif