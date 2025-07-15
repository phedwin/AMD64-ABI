
/* debug for .tdata section */
__thread int value = 0;

int main(void) {
	value++;
	return value; /* see fs:value@tpoff*/
}
