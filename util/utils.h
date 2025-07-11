#ifndef UTILITIES
#define UTILITIES

#include <ctype.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define API __attribute__((visibility("default"))) extern

#define NULL_ 0
#define SSE_XMM_SIZE 16

/*def cat.S*/
extern void __cat(char *);
/*def dmp.S*/
extern void __hex_dmp(char *);
/*def alloc.S */
extern void *mem_alloc(size_t);

extern void *__memcpy(void *, void *, size_t);
extern void *__memset(void *m_start, unsigned char value, const size_t N);
#endif