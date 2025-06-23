#ifndef UTILITIES
#define UTILITIES

typedef unsigned long long int u64;
typedef signed long long int i64;

/*def cat.S*/
extern void __cat(char *);
/*def dmp.S*/
extern void __hex_dmp(char *);
/*def alloc.S */
extern void *mem_alloc(i64);

extern void *__memcpy(void *, void *, i64);
#endif