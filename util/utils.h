#ifndef UTILITIES
#define UTILITIES

#include <stdint.h>
#include <stdio.h>

#define NULL_ 0
#define SSE_XMM_SIZE 16

/*def cat.S*/
extern void __cat(char *);
/*def dmp.S*/
extern void __hex_dmp(char *);
/*def alloc.S */
extern void *mem_alloc(size_t);

extern void *__memcpy(void *, void *, size_t);
extern void *__memset(void *m_start, unsigned char value, const size_t m_count);
#endif