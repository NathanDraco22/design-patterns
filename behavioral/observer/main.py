from abc import ABC, abstractmethod

class Observer(ABC):
    ID : int
    @abstractmethod
    def update(self) -> None:
        pass

class Observable(ABC):
    @abstractmethod
    def register_obs(self, obs : Observer) -> None:
        pass
    @abstractmethod
    def un_register_obs(self,obs : Observer) -> None:
        pass
    @abstractmethod
    def notify(self) -> None:
        pass

class ConcreteObservable(Observable):

    observers : list[Observer] = []

    def notify(self) -> None:
        for obs in self.observers:
            obs.update()

    def register_obs(self,obs: Observer):
        self.observers.append(obs)
        print(f"Observer {obs.ID} registered !!!")
    
    def un_register_obs(self, obs: Observer):
        self.observers.remove(obs)
        print( f"Observer {obs.ID} removed")


class ConcreteObserver(Observer):
    def __init__(self, ID:int) -> None:
        self.ID = ID
    
    def update(self) -> None:
        print(f"Received on Oberver {self.ID}")



observable: Observable = ConcreteObservable()

observer  : Observer = ConcreteObserver(1)
observer2 : Observer = ConcreteObserver(2)

observable.register_obs(observer)
observable.register_obs(observer2)

observable.notify()

observable.un_register_obs(observer)
observable.un_register_obs(observer2)
