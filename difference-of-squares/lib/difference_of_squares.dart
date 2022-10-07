import 'dart:math';

class DifferenceOfSquares {
  int differenceOfSquares(int number) =>
      squareOfSum(number) - sumOfSquares(number);

  int squareOfSum(int number) => pow(number * (number + 1) ~/ 2, 2).toInt();

  int sumOfSquares(int number) =>
      (number * (number + 1) * (2 * number + 1) ~/ 6);
}
