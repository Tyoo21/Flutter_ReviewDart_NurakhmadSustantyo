void main() {
  print(checkPalindromeFor('Anna'));
  print(checkPalindromeFor('Hactiv8'));
}

bool checkPalindromeFor(String text) {
  for (int i = 0; i < text.length / 2; i++) {
    if (text[i].toLowerCase() != text[text.length - 1 - i].toLowerCase()) {
      return false;
    }
  }
  return true;
}
