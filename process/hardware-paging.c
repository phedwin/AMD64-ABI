

__attribute__((section(".layout"))) char buffer[1024]; /*bss*/

int main(int arg, char **argv) {
	int k;
	for (k = 0; k < sizeof buffer; k++)
		buffer[k] = 'A';
}