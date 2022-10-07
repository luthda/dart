import 'dart:math';

class DifferenceOfSquares {
  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }

  int squareOfSum(int number) {
    return pow(number * (number + 1) ~/ 2, 2).toInt();
  }

  int sumOfSquares(int number) {
    return (number * (number + 1) * (2 * number + 1) ~/ 6);
  }
}
