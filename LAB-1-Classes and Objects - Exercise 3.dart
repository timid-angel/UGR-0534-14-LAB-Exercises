// Exercise 3
class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height) {}

  int calculateArea() {
    return width * height;
  }

  int calculatePerimeter() {
    return 2 * (width + height);
  }
}
