// Exercise 1

import 'dart:io';

void main() {
  try {
    int input = int.parse(stdin.readLineSync() as String);
    print(input);
  } catch (e) {
    print('Invalid input, the input must be a number');
  }
}
