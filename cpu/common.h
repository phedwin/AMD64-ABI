#ifndef ASM_LINKAGE
#define ASM_LINKAGE

#define VARIABLE(variable) \
	.global variable;  \
	variable

#define LOCAL(local) LOCAL__##local

#define SECTION(x) __attribute__((__section__(x)))
// __attribute__((__section__(".rodata"))) char buf[1024];

#define FUNCTION(func)         \
	.type func, @function; \
	.globl func;           \
	func

#endif /*! ASM_LINKAGE*/