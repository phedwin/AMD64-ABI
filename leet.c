#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <stdio.h>  // For printf

int removeDuplicates(int *nums, int numsSize) {
	int i = 0;

	for (int p = 1; p < numsSize; p++)
		if (nums[p] != nums[i]) {
			i++;
			nums[i] = nums[p];
		}
	i += 1;
	return i;
}
int main(void) {
	int p[] = { 0, 0, 1, 1, 1, 2, 2, 3, 3, 4 };
	int value = removeDuplicates(p, 10);
	printf("%d", value);
}