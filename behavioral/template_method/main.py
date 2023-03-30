from abc import ABC, abstractmethod

class TemplateMethod(ABC):
    def fire(self):
        self.step1()
        self.step2()
        self.step3()
        pass
    
    def step1(self):
        print("Step 1")
     
    @abstractmethod
    def step2(self):
        pass

    def step3(self):
        print("Step 3")

class ConcreteClass(TemplateMethod):
    def step2(self):
        print("COOL STEP 2")

instance :TemplateMethod = ConcreteClass()
instance.fire()