#ifndef ASM_LINKAGE
#define ASM_LINKAGE

#define VARIABLE(variable) \
	.global variable;  \
	variable

#define SECTION(sect) __attribute__((__section__(sect)))

// __attribute__((__section__(".rodata"))) char buf[1024];
#define FUNCTION(func)         \
	.type func, @function; \
	.globl func;           \
	func

#endif /*! ASM_LINKAGE*/
