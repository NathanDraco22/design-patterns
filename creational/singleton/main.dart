class Singleton{

  Singleton._private();
  static final _instance = Singleton._private();
  factory Singleton() => _instance;

}


void main(List<String> args) {
  
  final instance = Singleton();
  final instance2 = Singleton();
  final instance3 = Singleton();
  print(instance.hashCode);
  print(instance2.hashCode);
  print(instance3.hashCode);

}