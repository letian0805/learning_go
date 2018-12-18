#!/bin/sh

cmds="multi_threads_go multi_threads_c multi_threads.py"

for c in $cmds
do
	./$c > "$c.log" &
	sleep 1
	wc -l "$c.log"
	ps aux|grep "$c" | grep -v "grep"|awk '{print $5"  "$6"   "$11}'
	pkill multi_threads
	rm "$c.log"
done
