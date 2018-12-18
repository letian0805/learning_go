#!/usr/bin/python
# -*- coding: UTF-8 -*-
 
import thread
import time
 
# 为线程定义一个函数
def print_time( threadName, delay):
   print "Thread-%d"%(threadName) + " run"
   time.sleep(delay)
   print threadName + " exit"
 
# 创建两个线程
try:
   for i in range(0, 999):
      thread.start_new_thread( print_time, (i, 100000, ) )
except:
   print "Error: unable to start thread"
 

time.sleep(1000000000)
