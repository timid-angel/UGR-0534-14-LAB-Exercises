// Exercise 3
String reverseString(String s) {
  String reversed = "";

  for (int i = s.length - 1; i >= 0; i--) {
    reversed += s[i];
  }

  return reversed;
}

void main() {
  String str = "This is a sentence";
  print(reverseString(str));
}
