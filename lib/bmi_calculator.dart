import 'dart:math';
import 'package:flutter/material.dart';

class BMICalculator {
  BMICalculator({
    @required this.height,
    @required this.weight,
  });

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    if (_bmi > 30) {
      return 'OBESE';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getBMIInterpretation() {
    if (_bmi > 30) {
      return 'You are obese. You seriously need to lose weight!';
    } else if (_bmi >= 25) {
      return 'You are currently overweight. Lose some weight by using a diet or doing some exercise';
    } else if (_bmi >= 18.5) {
      return 'Great job! Your BMI is normal.';
    } else {
      return 'You are currently underweight. Add some more weight by eating more food.';
    }
  }
}
