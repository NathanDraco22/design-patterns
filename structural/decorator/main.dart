abstract class Component {
  String doSomething();
}

class ConcreteComponent implements Component{
  @override
  String doSomething() => "I did something cool";
}

class Decorator implements Component{
  Decorator(this.myComponent);
  
  Component myComponent;

  @override
  String doSomething() => "===${myComponent.doSomething()}===";

}


class ConcreteDecoratorA extends Decorator{
  ConcreteDecoratorA(super.myComponent);

  @override
  String doSomething() => "DECORATED WITH A: ${super.doSomething()} :D !";
}

class ConcreteDecoratorB extends Decorator {
  ConcreteDecoratorB(super.myComponent);

  @override
  String doSomething() => "DECORATED WITH B: ${super.doSomething()} XD !";
}


void main(List<String> args) {

  final component = ConcreteComponent();

  final decoratorA = ConcreteDecoratorA(component);
  final decoratorB = ConcreteDecoratorB(component);
  final simple = Decorator(component);

  final overDocorator = Decorator(decoratorB);

  executeSomething(component);
  executeSomething(simple);
  executeSomething(decoratorA);
  executeSomething(decoratorB);
  executeSomething(overDocorator);


}

void executeSomething(Component component ) => print(component.doSomething());