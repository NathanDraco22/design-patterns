package main

import "fmt"

type IComponent interface {
	doSomething() string
}

type Component struct{}

func (this *Component) doSomething() string {
	return "I did something cool"
}

type Decorator struct {
	MyComponent Component
}

func (this *Decorator) doSomething() string {
	return fmt.Sprintf("Decorated --> %s <--", this.MyComponent.doSomething())
}

type DecoratorB struct {
	MyComponent Component
}

func (this *DecoratorB) doSomething() string {
	return fmt.Sprintf("Decorated B === %s === :D", this.MyComponent.doSomething())
}

func main() {

	myComponent := Component{}

	decoratedComponent := Decorator{
		MyComponent: myComponent,
	}

	decoratedBComponent := DecoratorB{
		MyComponent: myComponent,
	}

	fmt.Println(decoratedComponent.doSomething())
	fmt.Println(decoratedBComponent.doSomething())

}
