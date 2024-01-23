void main() {
  int num = 10;
  List<int> result = fibonacciSequence(num);

  print('$result');
}

List<int> fibonacciSequence(int num) {
  List<int> sequence = [];

  if (num >= 1) {
    sequence.add(0);
  }
  if (num >= 2) {
    sequence.add(1);
  }

  for (int i = 2; i < num; i++) {
    sequence.add(sequence[i - 1] + sequence[i - 2]);
  }

  return sequence;
}