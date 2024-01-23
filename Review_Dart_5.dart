void main() {
  double suhuFahrenheit = 60;
  double suhuCelcuis = fahrenheitToCelcius(suhuFahrenheit);

  print(
      '$suhuFahrenheit derajat Fahrenheit sama dengan $suhuCelcuis derajat Celsius');
}

double fahrenheitToCelcius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}