import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    var digits = number.toString().split('').map(int.parse).toList();
    var sum = 0;

    for (var digit in digits) {
      sum += pow(digit, digits.length).toInt();
    }

    return sum == number;
  }
}
