class PrimeFactors {
  List<int> factors(int number) {
    if (number == 1) {
      return [];
    }
    for (int i = 2; i <= number; i++) {
      if (number % i == 0) {
        return [i] + factors(number ~/ i);
      }
    }
    return [];
  }
}
