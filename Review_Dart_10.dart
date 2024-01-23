void main() {
  List<int> urutanAritmatika = [2, 4, 6, 8, 10];
  List<int> bukanUrutanAritmatika = [2, 4, 7, 8, 10];

  print('Hasil : ${aritmatika(urutanAritmatika)}');
  print('Hasil : ${aritmatika(bukanUrutanAritmatika)}');
}

bool aritmatika(List<int> urutan) {
  if (urutan.length < 2) {
    throw ArgumentError('Setidaknya memiliki 2 angka');
  }

  int beda = urutan[1] - urutan[0];

  for (int i = 2; i < urutan.length; i++) {
    if (urutan[i] - urutan[i - 1] != beda) {
      return false;
    }
  }

  return true;
}