
int main(void) {
	int c, a = 10, b = 12;

	asm("mov %1, %%eax"
	    "add %2, %%eax"
	    "mov %%eax, %0;"
	    : "=r"(c)
	    : "r"(a), "r"(b));

	return c;
}