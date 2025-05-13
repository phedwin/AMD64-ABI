

// programmed IO

/*! rawdog read/write disk with CPU */

/*handle interupt*/

struct Pio {
	void (*read)();
	void (*write)();
	int (*int_handler)();
};
