
#include <stdio.h>
#include <stdlib.h>
#if !defined EDITOR_H
#define EDITOR_H

typedef signed int i32;
typedef unsigned char u8;
typedef signed long int i64;
typedef void NO_WHERE;

#define API extern __attribute__((visibility("default")))

API struct Array *init;

#if defined(__x86_64) && defined(__linux__)
#define MEMSET(ptr, value, size) \
	__asm__ volatile("rep; stosb" ::"a"(value), "D"(ptr), "c"(size));

NO_WHERE *__memcpy(void *dst, void *src, size_t N) {
	char *pDst = dst, *pSrc = src;
	__asm__ volatile(
	    "cld;"
	    "rep; movsb" ::"D"(pDst),
	    "S"(pSrc), "c"(N));
	return pDst;
}

#define MEMCPY(dst, src, size)            \
	do {                              \
		__memcpy(dst, src, size); \
	} while (0);
#else
#error "include <string.h>"
#define MEMSET(ptr, value, size) memset(ptr, value, size)
#endif
struct Array {
	int *data;
	i64 capacity;
	i64 index;
};

/* i couldnt figure out some things in asm this is supposed to help have a
 * mental picture, if that makes sense */
#if defined(EDITOR_IMPLEMENTATION)

NO_WHERE append(struct Array *arr, i64 value) {
	if (arr->index >= arr->capacity) {
		arr->data =
		    realloc(arr->data, (arr->capacity *= 2) * sizeof(int));
		if (arr->data == 0) {
			perror("fatal");
			return;
		}
	}
	arr->data[arr->index++] = value;
	return;
}

void free_arraylist(struct Array *arr) {
	free(arr->data);
	if (arr)
		free(arr);
}
#endif
#endif