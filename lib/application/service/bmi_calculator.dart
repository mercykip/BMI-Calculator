import 'dart:math';

import 'package:bmi_calculator/application/theme/constants.dart';

class BMICalculator {
  BMICalculator({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weightk / pow(heightk / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpratation() {
    if (_bmi >= 25) {
      return 'Try to excercise';
    } else if (_bmi > 18.5) {
      return 'Good, continue living healthy  ';
    } else {
      return 'Eat my fren';
    }
  }

  String textColor() {
    if (_bmi >= 25) {
      return 'Try to excercise';
    } else if (_bmi > 18.5) {
      return 'Good, continue living healthy  ';
    } else {
      return 'Eat my fren';
    }
  }
}
