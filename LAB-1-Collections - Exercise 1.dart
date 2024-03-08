// Exercise 1
void main() {
  List<String> fruits = ['banana', 'apple', 'pineapple'];

  fruits.add('onions');
  fruits.remove('onions');
  fruits.sort();

  if (!fruits.isEmpty) {
    print(fruits);
  }
}
