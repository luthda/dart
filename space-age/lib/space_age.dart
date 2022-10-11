import 'dart:math';

const yearInSeconds = 31557600;

class SpaceAge {
  double age({String planet = '', int seconds = 0}) {
    var earthYears = 0.0;

    if (planet == 'Earth') {
      earthYears = seconds / yearInSeconds;
    } else if (planet == 'Mercury') {
      earthYears = seconds / (yearInSeconds * 0.2408467);
    } else if (planet == 'Venus') {
      earthYears = seconds / (yearInSeconds * 0.61519726);
    } else if (planet == 'Mars') {
      earthYears = seconds / (yearInSeconds * 1.8808158);
    } else if (planet == 'Jupiter') {
      earthYears = seconds / (yearInSeconds * 11.862615);
    } else if (planet == 'Saturn') {
      earthYears = seconds / (yearInSeconds * 29.447498);
    } else if (planet == 'Uranus') {
      earthYears = seconds / (yearInSeconds * 84.016846);
    } else if (planet == 'Neptune') {
      earthYears = seconds / (yearInSeconds * 164.79132);
    }

    return roundDouble(earthYears, 2);
  }
}

double roundDouble(double value, int places) {
  double mod = pow(10.0, places).toDouble();

  return ((value * mod).round().toDouble() / mod);
}
