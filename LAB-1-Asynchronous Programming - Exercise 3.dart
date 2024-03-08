// Exercise 3
Future<String> getData(index) {
  const database = ['item 1', 'item 2', 'item 3'];

  return Future.delayed(const Duration(seconds: 2), () => database[index]);
}

void main() async {
  String data = await getData(1);
  print(data);
}
