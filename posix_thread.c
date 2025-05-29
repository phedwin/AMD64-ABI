

// this is stack

#include <pthread.h>
#include <stdio.h>

int sum = 0;

pthread_attr_t attr;
pthread_attr_t attrx;
pthread_mutex_t mutex;

void *routine(void *arg) {
	int q, k = *(int *)arg;
	pthread_mutex_lock(&mutex);
	for (q = 0; q < k; q++)
		sum += q;
	pthread_mutex_unlock(&mutex);
	return 0;
}
void *worker(void *arg) {
	int q, k = *(int *)arg;
	pthread_mutex_lock(&mutex);
	for (q = 0; q < k; q++)
		sum += q;
	pthread_mutex_unlock(&mutex);
	return 0;
}

int LOOP_SIZE = 100000;
int main(void) {
	// thread_count in a single proc
	pthread_t new1 = pthread_attr_init(&attr);
	pthread_t new2 = pthread_attr_init(&attrx);

	pthread_create(&new1, &attr, routine, &LOOP_SIZE);
	pthread_create(&new2, &attrx, worker, &LOOP_SIZE);

	pthread_join(new1, 0);
	pthread_join(new2, 0);

	// int q, k = LOOP_SIZE;
	// for (q = 0; q < k; q++)
	// sum += q;

	printf("value of thread %d\n", sum);
}