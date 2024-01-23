void main() {
  int start = 1;
  int end = 10;

  List<int> primes = findPrime(start, end);

  print('bilangan prima dari angka $start - $end adalah $primes');
}

List<int> findPrime(int start, int end) {
  List<int> primes = [];

  for (int num = start; num <= end; num++) {
    List<int> result = isPrime(num);
    if (result.isNotEmpty) {
      primes.addAll(result);
    }
  }

  return primes;
}

List<int> isPrime(int num) {
  if ((num as int) <= 1) {
    return [];
  }

  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return [];
    }
  }

  return [num];
}