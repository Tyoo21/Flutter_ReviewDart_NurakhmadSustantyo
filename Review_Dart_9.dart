void main() {
  List<int> num = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5];
  int modusResult = findModus(num);

  print('Modus = $modusResult');
}

int findModus(List<int> num) {
  if (num.isEmpty) {
    throw ArgumentError('List angka tidak boleh kosong');
  }

  int modus = num[0];
  int jumlahMax = 0;

  for (int i = 0; i < num.length; i++) {
    int currentNum = num[i]; // Corrected variable name
    int currentFrek = 1; // Corrected variable name

    for (int j = i + 1; j < num.length; j++) {
      if (num[j] == currentNum) {
        currentFrek++;
      }
    }

    if (currentFrek > jumlahMax) {
      modus = currentNum;
      jumlahMax = currentFrek;
    }
  }

  return modus;
}