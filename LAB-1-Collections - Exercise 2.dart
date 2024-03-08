// Exercise 2

import 'dart:math';

void main() {
  Random random = new Random();
  Set nums = {};

  for (int i = 0; i < 10; i++) {
    nums.add(random.nextInt(10));
  }

  print(nums);
}
