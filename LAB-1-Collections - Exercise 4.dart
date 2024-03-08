// Exercise 4
import 'dart:math';

void main() {
  Map cart = new Map();

  // add items
  String item = "Apples";
  int price = 80;
  if (!cart.containsKey(item)) {
    cart[item] = price;
  } else {
    cart[item] += price;
  }

  // total price
  int total = 0;
  cart.forEach((key, value) {
    total += value as int;
  });

  print(cart);
  print(total);

  // remove items
  String toBeRemoved = 'Apples';
  int removedQuantity = 2;

  if (cart.containsKey(toBeRemoved)) {
    cart[toBeRemoved] =
        max<int>(0, cart[toBeRemoved] - removedQuantity * price);
    total -= removedQuantity * price;
  }

  print(cart);
  print(total);
}
