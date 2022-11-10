import 'dart:math';

class NthPrime {
  int prime(int number) {
    if (number < 1) {
      throw ArgumentError('There is no zeroth prime');
    }
    var candidate = 2;

    for (int count = 0; count < number; candidate++) {
      if (isPrime(candidate)) {
        count++;
      }
    }

    return candidate - 1;
  }

  bool isPrime(int number) {
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }
}
