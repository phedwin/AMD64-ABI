__attribute__((section(".data"))) int value = 1;

/* section .init ? */
__attribute__((constructor)) void increment_value() {
	value += 20l;
	return;
}

/* section .fini ?*/
// __attribute__((constructor)) void zero() {
// value = 0;
// return;
// }
