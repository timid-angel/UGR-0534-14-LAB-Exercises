// Exercise 3

void main() {
  Map<String, int> students = new Map<String, int>();

  students.putIfAbsent('Abel', () => 70);
  students.putIfAbsent('Martha', () => 82);
  students.putIfAbsent('Robel', () => 87);

  students.forEach((key, value) => print('$key: $value'));

  if (students.containsKey('Martha')) {
    print('Martha: ${students['Martha']}');
  }
}
