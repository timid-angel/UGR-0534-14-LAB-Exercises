// Exercise 2
import 'dart:io';

void main() {
  final file = new File('./test.txt');

  try {
    String str = file.readAsStringSync();
    print(str);
  } on FileSystemException {
    print('Error while reading, file may not exist.');
  }
}
