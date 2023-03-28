package main

import (
	"fmt"
	"sync"
)

type Singleton struct {
	name string
}

var instance *Singleton

var locker = &sync.Mutex{}

func getIntance() *Singleton {
	if instance != nil {
		return instance
	}
	locker.Lock()
	instance = &Singleton{name: "Hello"}
	locker.Unlock()
	return instance
}

func main() {
	instance := getIntance()
	instance2 := getIntance()
	instance3 := getIntance()

	instance.name = "HELLO I'M the singleton"

	fmt.Println(instance)
	fmt.Println(instance2)
	fmt.Println(instance3)

}
