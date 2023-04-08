
void main(List<String> args) {

  final attemp = DateTime(2001,9,11);

  final numbers = [8, 1, 1, 1, 1, 1, 1].first;
  print(numbers);

  print(DateTime.now().difference(attemp).inDays);
  print(DateTime.now().isAfter(attemp));
  print(DateTime.now().isBefore(attemp));

  final untiempo = Duration(days: 3);

  print(untiempo.inDays);
  print(untiempo.inHours);
  print(untiempo.inSeconds);
  print(untiempo.inMilliseconds);
  print(untiempo.inMicroseconds);

}