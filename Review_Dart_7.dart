void main() {
  String original = "Hello World";
  String reversed = reverseString(original);

  print('Original : $original');
  print('Reversed : $reversed');
}

String reverseString(String input) {
  return input.split('').reversed.join();
}