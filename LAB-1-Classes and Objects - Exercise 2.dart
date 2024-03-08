// Exercise 2
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address) {}
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(name, age, address, this.rollNumber, this.marks)
      : super(name, age, address) {}

  int getTotal() {
    int sum = 0;
    for (int i = 0; i < marks.length; i++) {
      sum += marks[i];
    }
    return sum;
  }

  double getAverage() {
    int sum = this.getTotal();
    return sum / marks.length;
  }
}

void main() {
  Student student1 = Student("Abel", 20, 'Bole', 1, [90, 81, 76, 72, 38]);

  print(student1.getAverage());
  print(student1.getTotal());
}
