mixin Component{
  void update(String message);
}
mixin Mediator{
  void notify(Component component, String event);
  void notifyAll();
}

class ConcreteMediator with Mediator {
  ConcreteMediator(this.componentA, this.componentB){
    componentA.mediator = this;
    componentB.mediator = this;
  }
  final ComponentA componentA;
  final ComponentB componentB;

  @override
  void notify(Component component, String event) {
    if (component is ComponentA){
      componentB.update(event);
      return;
    }
    if (component is ComponentB){
      componentA.update(event);
      return;
    }
  }
  
  @override
  void notifyAll() {
    componentA.update("i'm mediator");
    componentB.update("i'm mediator");
  }


}

class ComponentA with Component {
  late Mediator mediator;

  @override
  void update(String message) {
    print("I'm component A and I received: $message from outside");
  }

  void doSomething(){
    mediator.notify(this, "Hello from A");
  }

}

class ComponentB with Component{
  late Mediator mediator;

  @override
  void update(String message) {
    print("HEY it's me Component B! and I received: $message from outside");
  }

  void doSomething(){
    mediator.notify(this, "Hello from B");
  }


}

void main(List<String> args) {
  
  final comA = ComponentA();
  final comB = ComponentB();

  final mediator = ConcreteMediator(comA, comB);

  comA.doSomething();
  print("============ MEDIATOR =================");
  mediator.notifyAll();
  print("=======================================");

  comB.doSomething();

}