package main

import "fmt"

type Singleton struct {
	name string
}

var instance *Singleton

func getIntance() *Singleton {
	if instance != nil {
		return instance
	}
	instance = &Singleton{name: "Hello"}
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
