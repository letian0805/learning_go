#!/bin/sh

go build -o multi_threads_go multi_threads.go

gcc -O2 -o multi_threads_c multi_threads.c -lpthread
strip multi_threads_c
