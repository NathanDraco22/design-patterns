class TV:
    brand_name: str
    screen: str
    wide: int

    def __init__(self, brand_name:str, screen:str, wide:int) -> None:
        self.brand_name = brand_name
        self.screen = screen
        self.wide = wide
    
    @staticmethod
    def fromJsonMap(json_dict: dict[str,any]):
        return TV(
            brand_name= json_dict["brandName"],
            screen= json_dict["screen"],
            wide= json_dict["wide"]
        )
    
    def __str__(self) -> str:
        return f"brandName: {self.brand_name}, screen: {self.screen}, wide: {self.wide}"



class TVFactory:
    @staticmethod
    def fromJsonDict( json_dict : dict[str,any]) -> TV:
        return TV(
            brand_name= json_dict["brandName"],
            screen= json_dict["screen"],
            wide= json_dict["wide"]
        )

json_dict1 = {
    "brandName" : "LG",
    "screen" : "OLED",
    "wide" : 40
}
json_dict2 = {
    "brandName" : "Sony",
    "screen" : "OLED",
    "wide" : 32
}

tv_instance1 = TV.fromJsonMap(json_dict1)
tv_instance2 = TVFactory.fromJsonDict(json_dict2)

print(tv_instance1)
print(tv_instance2)