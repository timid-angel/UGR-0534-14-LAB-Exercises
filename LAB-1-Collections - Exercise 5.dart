// Exercise 5
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks) {}

  double getAverage() {
    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}
