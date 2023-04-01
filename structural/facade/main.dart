
class SubSystem{
  void operationInit() => print("Subsystem init");
  void operationPower() => print("Power released");
}

class SubSystem2{
  void operationInit() => print("Subsystem2 init");
  void flyOperation() => print("Fly Operation");
}

class Facade{
  final SubSystem sub1;
  final SubSystem2 sub2;
  Facade(this.sub1, this.sub2);

  void initOperation() {
    sub1.operationInit();
    sub1.operationPower();
    sub2.operationInit();
    sub2.flyOperation();
  }
}


void main(List<String> args) {
  
  final sub1 = SubSystem();
  final sub2 = SubSystem2();

  final Facade facade = Facade(sub1, sub2);
  facade.initOperation();
  
}

