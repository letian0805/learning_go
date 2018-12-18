#!/bin/sh

langs="go c py java"

for l in $langs
do
	cmd="./multi_threads_${l}"
	$cmd > "$cmd.log" &
	sleep 3
	wc -l "$cmd.log"
	ps aux|grep "multi_threads" | grep -v "grep" | grep -v "bin/sh" |grep -v "vim" |awk '{print $5"  "$6"   "$11}'
	ps aux|grep "multi_threads" | grep -v "grep" | grep -v "bin/sh" |grep -v "vim" |awk '{print $2}'|xargs kill
	rm "$cmd.log"
done
