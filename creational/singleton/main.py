class Singleton:
    _instance = None
    def __new__(cls):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
        return cls._instance
    

instance_1 = Singleton()
instance_2 = Singleton()

print(instance_1 is instance_2)