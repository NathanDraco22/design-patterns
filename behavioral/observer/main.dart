
abstract class Observer{
  int get id;
  void update();
}

abstract class Observable {
  void notify();
  void registerObs(Observer obs);
  void unRegisterObs(Observer obs);
}

class ConcreteObserver extends Observer {
  ConcreteObserver(int id) : _id = id ;
  final int _id;

 @override
  int get id => _id;

  @override
  void update() {
    print("Observer $id notified !!!");
  }
  
}

class ConcreteObservable extends Observable {

  Map<int,Observer> _observers = {};
  @override
  void notify() {
    for (var obs in _observers.values) {
      obs.update();   
    }
  }

  @override
  void registerObs(Observer obs) {
    _observers.putIfAbsent(obs.id, () => obs);
    print("Observer ${obs.id} registered");
  }

  @override
  void unRegisterObs(Observer obs) {
    _observers.remove(obs.id);
    print("Observer ${obs.id} removed");
  }


}

void main(List<String> args) {
  
  final observer = ConcreteObserver(1);
  final observer2 = ConcreteObserver(2);
  
  final observable = ConcreteObservable();

  observable.registerObs(observer);
  observable.registerObs(observer2);

  observable.notify();

  observable.unRegisterObs(observer);
  observable.unRegisterObs(observer2);



}


