

#include <stdio.h>

int cpu() {
	unsigned int eax, ebx, ecx, edx;
	char vendor[13];

	// CPUID with eax = 0 returns vendor ID string in ebx, edx, ecx
	__asm__ volatile("cpuid" : "=b"(ebx), "=d"(edx), "=c"(ecx) : "a"(0));

	// Copy registers into the vendor string
	*(unsigned int *)&vendor[0] = ebx;
	*(unsigned int *)&vendor[4] = edx;
	*(unsigned int *)&vendor[8] = ecx;
	vendor[12] = '\0';

	printf("CPU Vendor: %s\n", vendor);
	return 0;
}

int main(void) {
	cpu();
}