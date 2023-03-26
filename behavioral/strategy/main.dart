
// mixin? yeah why not ;)
mixin Strategy {
  void execute(String value);
}


class ConcreteStrategy with Strategy{
  @override
  void execute(String value) {
    print("Executing secret Strategy value : $value");
  }
}

class ConcreteStrategy2 with Strategy {
  @override
  void execute(String value) {
    print("Executing powerful Strategy value : $value");
  }

}

class Client {
  void doSomethingCool(String value, Strategy strategy){
    strategy.execute(value);
  }
}

void main(List<String> args) {
  
  final client = Client();

  client.doSomethingCool(":D!!!!", ConcreteStrategy());
  client.doSomethingCool("XD!!!!", ConcreteStrategy2());

}