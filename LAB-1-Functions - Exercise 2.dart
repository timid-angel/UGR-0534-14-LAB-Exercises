// Exercise 2
bool checkPrime(value) {
  for (int i = 2; i < value; i++) {
    if (value % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int start = 3;
  int end = 10;

  for (int i = start; i <= end; i++) {
    if (checkPrime(i)) {
      print('There is a prime number in the range.');
      return;
    }
  }

  print('No prime numbers in the range have been found.');
}
