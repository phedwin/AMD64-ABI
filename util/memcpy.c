
#include "utils.h"

void *__memcpy(void *dst, void *src, size_t size) {
	char *a = (char *)src, *b = dst;

	if (a == 0 || b == 0)
		return (void *)0;
	size_t copied;
	/* if we cant align both atleast let us align b(load is slow store is
	 * fast - logic in my head) */
	if ((uintptr_t)b & SSE_XMM_SIZE - 1) {
		copied = 0;
		while ((uintptr_t)b & SSE_XMM_SIZE - 1 && copied < size) {
			asm("movsb" ::"S"(a), "D"(b));
			a++;
			b++;
			copied++;
		}
	} else {
		copied = 0;
	}

	size_t sse_count = (size - copied) / SSE_XMM_SIZE; /* 16 B chunks */
	size_t remainder = (size - copied) % SSE_XMM_SIZE;

	if (sse_count) {
		asm("1: ;"
		    "movdqu (%0), %%xmm0; " /* unaligned load from src */
		    "movdqa %%xmm0, (%1); " /* aligned store to dst */
		    "add $16, %0 ; "
		    "add $16, %1; "
		    "dec %2 ; "
		    "jnz 1b; "
		    : "+r"(a), "+r"(b), "+r"(sse_count));
	}

	/* Copy any remaining tail bytes */
	while (remainder--) {
		asm volatile("movsb" ::"S"(a), "D"(b));
		a++;
		b++;
	}

	return dst;
}
