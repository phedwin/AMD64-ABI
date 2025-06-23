

#include <stdio.h>

#define SSE_XMM_SIZE 16

static const void *memclr_sse2(const void *const m_start,
			       const size_t m_count) {
	// "i" is our counter of how many bytes we've cleared
	size_t i;

	// find out if "m_start" is aligned on a SSE_XMM_SIZE boundary
	if ((size_t)m_start & (SSE_XMM_SIZE - 1)) {
		i = 0;

		// we need to clear byte-by-byte until "m_start" is aligned on
		// an SSE_XMM_SIZE boundary
		// ... and lets make sure we don't copy 'too' many bytes (i <
		// m_count)
		while (((size_t)m_start + i) & (SSE_XMM_SIZE - 1) &&
		       i < m_count) {
			asm("stosb" ::"D"((size_t)m_start + i), "a"(0));
			i++;
		}
	} else {
		// if "m_start" was aligned, set our count to 0
		i = 0;
	}

	asm volatile("pxor %%xmm0,%%xmm0" ::);  // zero out XMM0
	// clear 64-byte chunks of memory (4 16-byte operations)
	for (; i + 64 <= m_count; i += 64) {
		asm volatile(
		    " movdqa %%xmm0, 0(%0);	"  // move 16 bytes from XMM0 to
						   // %0 + 0
		    " movdqa %%xmm0, 16(%0);	"
		    " movdqa %%xmm0, 32(%0);	"
		    " movdqa %%xmm0, 48(%0);	" ::"r"((size_t)m_start + i));
	}

	// copy the remaining bytes (if any)
	asm(" rep stosb; " ::"a"((size_t)(0)), "D"(((size_t)m_start) + i),
	    "c"(m_count - i));

	// "i" will contain the total amount of bytes that were actually
	// transfered
	i += m_count - i;

	// we return "m_start" + the amount of bytes that were transfered
	return (void *)(((size_t)m_start) + i);
}