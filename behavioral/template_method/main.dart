mixin TemplateMethod{
  void fire(){
    step1();
    step2();
    step3();
  }
  void step1() => print("Step 1");
  void step2();
  void step3() => print("Step 3");
}

class Concrete with TemplateMethod{
  @override
  void step2() => print("COOL STEP2");
}

void main(List<String> args) {
  final instance = Concrete();
  instance.fire();
}