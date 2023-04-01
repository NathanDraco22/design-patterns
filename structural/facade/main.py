class SubSystem:

    def operation_init():
        print("subsystem init")

    def operation_power():
        print("power release!!!")

class SubSystem2:
    def operation_init():
        print("subsystem@ init")
    
    def fly_operation():
        print("fly fly fly")


class Facade:
    sub_system1 : SubSystem
    sub_system2 : SubSystem2
    def __init__(self, sub1: SubSystem, sub2: SubSystem2) -> None:
        self.sub_system1 = sub1
        self.sub_system2 = sub2
    
    def init_operation(self):
        self.sub_system1.operation_init()
        self.sub_system1.operation_power()
        self.sub_system2.operation_init()
        self.sub_system2.fly_operation()

facade : Facade = Facade(sub1= SubSystem, sub2= SubSystem2)

facade.init_operation()