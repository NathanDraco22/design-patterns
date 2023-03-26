from abc import ABC, abstractmethod

class Strategy(ABC):
    @abstractmethod
    def execute(self,value:str) -> None:
        pass

class ConcreteStrategy(Strategy):
    def execute(self,value: str):
        print(f"Executing secret Strategy value : {value}")

class ConcretStrategy2(Strategy):
    def execute(self,value: str):
        print(f"Executing powerful Strategy value : {value}")

class Client:
    def do_something_cool(self,value: str, strategy: Strategy):
        strategy.execute(value)

client_instance = Client()

client_instance.do_something_cool(":)!!!!", ConcreteStrategy())
client_instance.do_something_cool(":D!!!!", ConcretStrategy2())


