void main() {
  String kata1 = "Halo";
  String kata2 = "Kaka";

  if (anagram(kata1, kata2)) {
    print('kata ini anagram');
  } else {
    print('kata ini bukan anagram');
  }
}

bool anagram(String str1, String str2) {
  str1 = str1.replaceAll(' ', '').toLowerCase();
  str2 = str2.replaceAll(' ', '').toLowerCase();

  List<String> sorted1 = str1.split('')..sort();
  List<String> sorted2 = str2.split('')..sort();

  return sorted1.join() == sorted2.join();
}