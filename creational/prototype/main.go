package main

import "fmt"

type Prototype interface {
	clone() Prototype
}

type Bacter struct {
	name string
	size float32
	gen  int
}

func (this *Bacter) clone() Prototype {
	return &Bacter{
		name: this.name,
		size: this.size,
		gen:  this.gen,
	}
}

func (this Bacter) copyWith(name string, size float32, gen int) Bacter {
	newName := this.name
	newSize := this.size
	newGen := this.gen
	if name != "" {
		newName = name
	}
	if size != 0.0 {
		newSize = size
	}
	if gen != 0 {
		newGen = gen
	}
	return Bacter{
		name: newName,
		size: newSize,
		gen:  newGen,
	}
}

func main() {

	bacter1 := Bacter{name: "Cocus", size: 12.3, gen: 1}

	bacterCloned := bacter1.clone()
	bacterCopied := bacter1.copyWith("", 20.8, 2)

	fmt.Println(bacter1)
	fmt.Println(bacterCloned)
	fmt.Println(bacterCopied)

}
