#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>

typedef struct{
	int num;
	int delay;
}thread_args;

void *print_time(void *args)
{
	thread_args *a = (thread_args *)args;
	printf("Thread-%d run\n", a->num);
	sleep(a->delay);
	printf("Thread-%d exit\n", a->num);
	return NULL;
}

int main(int argc, char *argv[])
{
	int i = 0;
	for(i = 0; i < 1000; i++){
		thread_args *args = (thread_args *)malloc(sizeof(thread_args));
		args->num = i;
		args->delay = 10000;
		pthread_t pid;
		pthread_create(&pid, NULL, print_time, args);
	}
	sleep(100000);
	return 0;
}
