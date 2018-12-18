package main

import(
	"time"
	"fmt"
)

func thread(name string, delay time.Duration){
	fmt.Println(name,"run")
	time.Sleep(delay * time.Second)
	fmt.Println(name,"exit")
}

func main(){
	for i := 0; i < 1000; i++{
		go thread(fmt.Sprintf("Thread-%d", i), 10000)
	}
	time.Sleep(1000000*time.Second)
}
