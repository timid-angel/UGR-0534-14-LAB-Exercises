// Exercise 4
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity) {}

  double getTotatCost() {
    return this.price * this.quantity;
  }
}
