import 'package:bmi_calculator/application/service/bmi_calculator.dart';
import 'package:bmi_calculator/application/theme/constants.dart';
import 'package:bmi_calculator/presentation/pages/bmi_calculator.dart';
import 'package:bmi_calculator/presentation/pages/bmi_result.dart';
import 'package:bmi_calculator/presentation/router/routes.dart';
import 'package:flutter/material.dart';

BMICalculator bMICalculator = BMICalculator(height: heightk, weight: weightk);

class RouterNavigator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<Calculator>(
            builder: (context) => Calculator());

      case calculatorPageRoute:
        return MaterialPageRoute<Calculator>(
            builder: (context) => Calculator());

      case resultPageRoute:
        return MaterialPageRoute<ResultPage>(
            builder: (context) => ResultPage(
                  bmiResult: bMICalculator.calculateBMI(),
                  resultText: bMICalculator.getResult(),
                  interpratation: bMICalculator.getInterpratation(),
                ));

      default:
        return MaterialPageRoute<Calculator>(
            builder: (context) => Calculator());
    }
  }
}
