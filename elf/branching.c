

// TODO  THIS!
#include <stdio.h>
#include <stdlib.h>
struct Vertex4D {};

// PIN
static char *restrict ptr = 0;

struct Rectangle {
	int width, length;
};

#define CAST_TO_INT(x) ((int *)x)

int area(void *values) {
	int *first, results = 0;

	first = CAST_TO_INT(values);

	if (values)
		results = *first * first[1];
	return results;
}
struct Window {
	int (*calculate_area)(void * /*keep this generic too */);
	int (*calculate_perimeter)(void * /*struct Rectangle*/);
};

// default resolution
static int width = 20;
static int length = 40;

int main(int a, char **p) {
	struct Rectangle rectangle = {
		.length = length,
		.width = width,
	};

	// adjust
	if (a > 2) {
		rectangle.length = atoi(p[1]);
		rectangle.width = atoi(p[2]);
	}
	struct Window *windows = malloc(sizeof(*windows));

	if (windows == 0)
		return 0;
	/*! wait is this branching[ direct or indirect braching ] ? &
	 * does it like change how the hardware behaves*/

	windows->calculate_area = area;
	int px = windows->calculate_area(&rectangle);

	printf("window area = %d\n", px);

	free(windows);
}
