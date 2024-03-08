// Exercise 1
import 'dart:math';

Future<String> getQuote() {
  Random random = new Random();
  const quotes = ['quote 1', 'quote 2', 'quote 3'];

  return Future.delayed(
      const Duration(seconds: 2), () => quotes[random.nextInt(3)]);
}

void main() async {
  String quote = await getQuote();
  print(quote);
}
