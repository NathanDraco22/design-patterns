void main(List<String> args) {
  
  final bacter1 = Bacter("Cocus", 12.3, 1);

  final bacterClone = bacter1.copyWith("Cocus Aureo", 24.6, 2);

  print(bacter1);
  print(bacterClone);

}


class Bacter {
  final String name;
  final double size;
  final int gen;

  Bacter(this.name, this.size, this.gen);

  copyWith( String? name, double? size, int? gen ) 
    => Bacter(
          name ?? this.name, 
          size ?? this.size, 
          gen ?? this.gen
    );


  @override
  String toString() {
    return "name : $name, size : $size, gen : $gen";
  }


}