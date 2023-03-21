import abc
class Component(abc.ABC):
    @abc.abstractmethod
    def doSomething(self) -> str:
        ...

class ConcreteComponent(Component):
    def doSomething(self) -> str:
        return "I did something cool"


class Decorator(Component):

    _component: Component

    def __init__(self, component: Component) -> None:
        self._component = component

    @property
    def component(self) -> Component : 
        return self._component

    def doSomething(self) -> str:
        return f"===={self.component.doSomething()}===="


class ConcreteDecoratorA(Decorator):

    def __init__(self, component: Component) -> None:
        super().__init__(component)
    
    def doSomething(self) -> str:
        return f"Decorated A = {super().doSomething()} XD !!!"

    

def excuteSomething( component : Component ) -> str :
    return component.doSomething()


myComponent : Component = ConcreteComponent()

decorated   : Component = Decorator(myComponent)
decoraredA  : Component = ConcreteDecoratorA(myComponent)

print(excuteSomething(myComponent))
print(excuteSomething(decorated))
print(excuteSomething(decoraredA))