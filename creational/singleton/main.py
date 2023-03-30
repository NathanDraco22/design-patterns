class Singleton:
    _instance = None
    def __new__(cls):
        print("se ha llamado el new")
        if cls._instance is None:
            cls._instance = super().__new__(cls)
        return cls._instance
    

valor = object.__new__(Singleton)
print(valor)
instance_1 = Singleton()
instance_2 = Singleton()

# print(instance_1 is instance_2)
print(instance_1)
print(instance_2)