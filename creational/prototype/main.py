import copy

class Bacter:
    name : str
    size : float
    gen  : int

    def __init__(self, name: str , size: float , gen: int) -> None:
        self.name = name
        self.size = size
        self.gen = gen

class Cell:
    name : str
    size : float
    gen  : int
 
    def __init__(self, name: str , size: float , gen: int) -> None:
        self.name = name
        self.size = size
        self.gen = gen

    def copy_with(self,name:str|None = None , size:float|None = None, gen: str|None = None):
        new = self.__class__(
            name = name if name else self.name,
            size = size if size else self.size,
            gen  = gen  if gen  else self.gen
        )
        return new
    
    def __str__(self) -> str:
        return f"name: {self.name}, size: {self.size}, gen: {self.gen}"

# using copy
bacter_1: Bacter = Bacter("Cocus", 12.5, 1)
bacter_cloned = copy.copy(bacter_1) 

# using copyWith style
cell_1 = Cell("Animal" , 400, 1)
cell_cloned = cell_1.copy_with(
    name= "SuperAnimal",
    gen=2
)

print(cell_1)
print(cell_cloned)

