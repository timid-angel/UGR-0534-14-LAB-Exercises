// Exercise 2
import 'dart:io';

void main() {
  const int speed = 299792458;
  String? input = stdin.readLineSync();
  int distance = int.parse(input as String);

  print(distance / speed);
}
