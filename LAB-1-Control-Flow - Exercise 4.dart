// Exercise 4
import 'dart:io';

void main() {
  int grade = int.parse(stdin.readLineSync() as String);
  if (grade > 100 || grade < 0) {
    print(
        'Invalid grade input. Grades should be in the range of 0 - 100 inclusive.');
    return;
  }

  switch (grade) {
    case >= 90:
      print('A+');
      break;

    case >= 83:
      print('A');
      break;

    case >= 80:
      print('A-');
      break;

    case >= 75:
      print('B+');
      break;

    case >= 68:
      print('B');
      break;

    case >= 65:
      print('B-');
      break;

    case >= 60:
      print('C+');
      break;

    case >= 50:
      print('C');
      break;

    case >= 45:
      print('C-');
      break;

    case >= 40:
      print('D');
      break;

    case >= 30:
      print('Fx');
      break;

    default:
      print('F');
      break;
  }
}
