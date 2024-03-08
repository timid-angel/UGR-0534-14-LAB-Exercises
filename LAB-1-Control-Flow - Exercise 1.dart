// Exercise 1
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int value = int.parse(input as String);

  if (value % 2 == 0) {
    print('Given number is Even!');
  } else {
    print('Given number is Odd!');
  }
}
