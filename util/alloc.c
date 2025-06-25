/*
 *    we have a linear arena - in userspace .bss
 *      @routine void *__malloc(size_t) - returns a ptr to a block of mem
 *      @routine void __free(void *) - tries to zero out the block
 ************************************************************************
 *    Here is my idea - we have blocks of linear memory in userspace right, so
 *    we can allocate & deallocate(basic mem stuff) & see if we can avoid malloc
 *    at some point
 ************************************************************************
 */

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"

#define ARENA_BLOCK 1 << 16

/* First 64 Bytes of this memory is marked used & is left for the struct
 * initialization */

__attribute((constructor)) void __used_mem();

char Memory[ARENA_BLOCK] /*64 K mem*/;

struct Arena;
/* align Arena to 8*/
struct Header {
	char *start;
	struct Arena *arena;
	struct Header *n; /* next header*/
};

typedef struct Header header;

header *head;
/* ALLOC' BLOCK */
struct Arena {
	_Bool __used;
	char *mem;    /* mem block start*/
	size_t size;  /* alloc size */
	size_t block; /* used as metadata with %rcx for free*/
	char *end;    /* end alloc */
};
typedef struct Arena arena;
arena *p_arena;
enum { NOMEM };

// void *mem_alloc(size_t size) {
// 	arena *p;
// 	if (size >= ARENA_BLOCK)
// 		return (void *)NOMEM; /*mem exhausted! */
// 	p->mem = p_arena->end;
// 	p->block = size;
// 	p->size += p->block;
// 	p->end = ;
// 	return p;
// }

int main() {
	char *str, *stq = "hello world";
	size_t w = strlen(stq);
	str = mem_alloc(w);
	__memcpy(str, stq, w);
}

void __used_mem() {
	size_t T = sizeof(struct Arena) + sizeof(struct Header);
	/* First x Bytes keep the header 0 ... x */
	head = (header *)Memory;
	p_arena = (arena *)(Memory + sizeof(struct Header) + 1); /* x..=m */
	__memset(p_arena + 1, NULL_, (1 << 8) - T);
	/* update memory */
	p_arena->end = (char *)(Memory + sizeof(char *));

	return;
}