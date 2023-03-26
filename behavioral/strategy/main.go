package main

import "fmt"

type Strategy interface {
	execute(value string)
}

type ConcreteStrategy struct{}

func (this ConcreteStrategy) execute(value string) {
	fmt.Printf("Executing secret strategy1 value %s\n", value)
}

type ConcreteStrategy2 struct{}

func (this ConcreteStrategy2) execute(value string) {
	fmt.Printf("Excuting powerful strategy value %s\n", value)
}

type Client struct{}

func (this Client) makeSomthingCool(value string, algo Strategy) {
	algo.execute(value)
}

func main() {

	client := Client{}

	client.makeSomthingCool(":D!!!", ConcreteStrategy{})

	client.makeSomthingCool("XD!!!", ConcreteStrategy2{})

}
