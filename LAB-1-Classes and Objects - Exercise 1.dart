// Exercise 1

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address) {}
}

void main() {
  Person person1 = Person('Abel', 19, 'Bole');
  Person person2 = Person('Beth', 23, 'Bulbula');

  // before modification
  print(
      'Name: ${person1.name}, Age: ${person1.age}, Address: ${person1.address} ');

  person1.name = "Sayf";
  person1.age = 53;
  person1.address = "Kaliti";

  // after modification
  print(
      'Name: ${person1.name}, Age: ${person1.age}, Address: ${person1.address} ');
}
