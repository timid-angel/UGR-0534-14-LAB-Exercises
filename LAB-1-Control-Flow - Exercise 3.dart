// Exercise 3
import 'dart:io';

void main() {
  print('Value 1:');
  int value1 = int.parse(stdin.readLineSync() as String);
  print('Value 2:');
  int value2 = int.parse(stdin.readLineSync() as String);
  print('Operation: + | - | * | /');
  String operation = stdin.readLineSync() as String;

  switch (operation) {
    case "+":
      print(value1 + value2);
      break;

    case "-":
      print(value1 - value2);
      break;

    case "*":
      print(value1 * value2);
      break;

    case "/":
      if (value2 == 0) {
        print('Can not divide by zero.');
        break;
      }
      print(value1 / value2);
      break;
  }
}
