void main() {
  String input = 'Aku TyO!!';
  String output = passwordGenerator(input);

  print('Input : $input');
  print('Output : $output');
}

bool isNotAlphabet(String char) {
  return char.toLowerCase() == char.toUpperCase();
}

String passwordGenerator(String input) {
  return input
      .split('')
      .map((char) {
        if (isNotAlphabet(char)) {
          return '_';
        } else {
          int shiftedCodeUnit = char.codeUnitAt(0) + 2;
          return String.fromCharCode(shiftedCodeUnit);
        }
      })
      .map((char) => (char == char.toUpperCase())
          ? char.toLowerCase()
          : char.toUpperCase())
      .join('');
}