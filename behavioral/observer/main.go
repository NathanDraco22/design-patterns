package main

import "fmt"

type Observable interface {
	Register(obs Observer)
	Unregister(obs Observer)
	notify()
}

type Observer interface {
	update()
	getId() int
}

type ConcreteObservable struct {
	Observers []Observer
}

func (this *ConcreteObservable) Register(obs Observer) {
	this.Observers = append(this.Observers, obs)
	fmt.Printf("Observer %d registered\n", obs.getId())
}

func (this *ConcreteObservable) Unregister(obs Observer) {

	indexSelected := -1
	for index, value := range this.Observers {
		if value.getId() == obs.getId() {
			indexSelected = index
			break
		}
	}
	if indexSelected < 0 {
		return
	}

	this.Observers = append(
		this.Observers[:indexSelected],
		this.Observers[indexSelected+1:]...,
	)

	fmt.Printf("Observer %d deleted\n", obs.getId())

}

func (this *ConcreteObservable) notify() {
	for _, value := range this.Observers {
		value.update()
	}
}

type ConcreteObserver struct {
	ID int
}

func (this *ConcreteObserver) update() {
	fmt.Printf("Observer %d notified\n", this.ID)
}

func (this *ConcreteObserver) getId() int {
	return this.ID
}

func main() {

	observable := &ConcreteObservable{}
	observer := &ConcreteObserver{ID: 1}
	observer2 := &ConcreteObserver{ID: 2}

	observable.Register(observer)
	observable.Register(observer2)

	observable.notify()

	observable.Unregister(observer)
	observable.Unregister(observer2)

	fmt.Println(observable.Observers)

}
