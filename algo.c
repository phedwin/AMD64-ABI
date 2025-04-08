
/* data structure & algorithms*/

#include <stdio.h>
#include "common.h"

// Best Time to Buy and Sell Stock
// You are given an array prices where prices[i] is the price of a given stock
// on the ith day. You want to maximize your profit by choosing a single day to
// buy one stock and choosing a different day in the future to sell that stock.
// Return the maximum profit you can achieve from this transaction. If you
// cannot achieve any profit, return 0. Example 1: Input: prices = [7,1,5,3,6,4]
// Output: 5
// Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit =
// 6-1 = 5. Note that buying on day 2 and selling on day 1 is not allowed
// because you must buy before you sell.

int buy_sell_stocks(int *prices, int days) {
	if (days <= 1)
		return 0;

	int min_price = prices[0];
	int max_profit = 0;

	for (int i = 1; i < days; i++) {
		if (prices[i] < min_price)
			min_price = prices[i];

		int profit = prices[i] - min_price;
		if (profit > max_profit)
			max_profit = profit;
	}
	return max_profit;
}

/*! Test */
void main(void) {
	printf("hello world\n");
}

/*
 *   Two Sum
 *
 *   Given an array of integers nums and an integer target, return
 * indices of the two numbers such that they add up to target. You may
 * assume that each input would have exactly one solution, and you may
 * not use the same element twice. You can return the answer in any
 * order.
 */
int *two_sum(int *array, size_t size, size_t target) {
	/*! space for the two elements*/

	int *ptr = malloc(sizeof(int) * 2);

	if (ptr == 0)
		return 0;
	int k, q;

	/*! avoid*/
	memset(ptr, -1, sizeof(int) * 2);

	for (k = 0; k < size; k++) {
		int value = target - array[k];
		for (q = 0; q < size; q++) {
			if (value == array[q]) {
				ptr[0] = k;
				ptr[1] = q;
				return ptr;
			}
		}
	}
	return ptr;
}