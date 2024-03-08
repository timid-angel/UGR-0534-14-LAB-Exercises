// Exercise 5
abstract class Shape {
  double getArea() {
    return 0.0;
  }
}

class Square extends Shape {
  double width;

  Square(this.width) : super() {}

  double getArea() {
    return width * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius) : super() {}

  double getArea() {
    return radius * radius * (3.141592);
  }
}
