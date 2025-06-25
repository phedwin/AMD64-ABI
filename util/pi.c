#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#define ARENA_BLOCK (1 << 16)  // 64 KiB

char Memory[ARENA_BLOCK];

typedef struct BlockHeader {
	size_t size;
	int free;
} BlockHeader;

typedef struct Arena {
	char *base;
	char *current;
} Arena;

Arena arena = {
	.base = Memory,
	.current = Memory,
};

void *__malloc(size_t size) {
	// Align to 8 bytes
	size = (size + 7) & ~7;

	char *p = arena.current;
	BlockHeader *hdr = (BlockHeader *)p;

	size_t total_size = sizeof(BlockHeader) + size;
	if ((uintptr_t)(p + total_size) >
	    (uintptr_t)(arena.base + ARENA_BLOCK)) {
		return (void *)0;  // no mem
	}

	hdr->size = size;
	hdr->free = 0;

	arena.current += total_size;

	return (void *)(hdr + 1);
}

void __free(void *ptr) {
	if (!ptr)
		return;

	BlockHeader *hdr = (BlockHeader *)ptr - 1;
	hdr->free = 1;

	// You could add logic to coalesce here if desired.
	// For now, just mark as free — bump allocators rarely support free.
}

// Helper for debug
void *__malloc_dbg(size_t size) {
	void *p = __malloc(size);
	printf("malloc(%zu) -> %p\n", size, p);
	return p;
}

int main(void) {}