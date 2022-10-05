class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    var digits = number.toString().split('').map(int.parse).toList();
    var sum = 0;
    for (var digit in digits) {
      sum += pow(digit, digits.length);
    }
    return sum == number;
  }

  int pow(int base, int exponent) {
    var result = 1;
    for (var i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}
