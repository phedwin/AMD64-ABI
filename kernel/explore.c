// fork & recursively exec every directory

/*ends with rst*/

#include <stdlib.h>
int TOTAL_RST_FILES = 0;

__attribute__((destructor)) void free_mem();
int string_length(char *string) {
	char *p = string;
	for (; *p; p++)
		;
	return p - string;
}

int filename_ends_with(char *filename, char *extension) {
	char *slice = malloc(sizeof(char) * 32);
	int count = 0, len = string_length(filename),
	    ext_len = string_length(extension);

	for (int start = 0,
		 k = len - ext_len /*! index bound .rst len — Its math btw*/;
	     k < len /*! hardcoding .ext len*/; k++, start++)
		slice[start] = filename[k];
	char *p1 = slice, *p2 = extension;

	while (*p1 && *p2) {
		if (*p1 == *p2) {
			count++;
		}
		p1++, p2++;
	}

	free(slice);
	return count == ext_len ? 1 : 0; /*! really ?*/
}
