
void main(List<String> args) {

  final myIterable = ["a","b","c"];

  final result = myIterable.reduce((value, element) {
    print("value : $value ");
    print("element : $element");
    print("-------------------------");
    return value + element;
  });

  print("Result -> $result");
  
}