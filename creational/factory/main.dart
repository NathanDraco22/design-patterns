// Using a Factory Keywords or Static Method

class TV {

  final String brandName;
  final String screen;
  final int wide;

  TV(this.brandName,this.screen, this.wide);

  factory TV.fromJsonMap(Map jsonMap ) 
    =>TV(
      jsonMap["brandName"] ?? "",
      jsonMap["screen"] ?? "LED", 
      jsonMap["wide"] ?? 32
    );

  @override
  String toString() {
    return "TV -> brand : $brandName, screen : $screen, wide : $wide" ;
  }

}

// Using external Class
class TVFactory {

  static TV buildTVFromJson( Map jsonMap ) => TV(
      jsonMap["brandName"] ?? "",
      jsonMap["screen"] ?? "LED", 
      jsonMap["wide"] ?? 32
    );

}


void main(List<String> args) {

  const Map<String,dynamic> externalJsonMap = {
    "brandName" : "LG",
    "screen" : "OLED",
    "wide" : 40,
  };

  const Map<String,dynamic> externalJsonMap2 = {
    "brandName" : "Sony",
    "screen" : "OLED",
    "wide" : 32,
  };


  final tvInstance1 = TV.fromJsonMap(externalJsonMap);

  final tvInstance2 = TVFactory.buildTVFromJson(externalJsonMap2);

  print(tvInstance1);
  print(tvInstance2);


}