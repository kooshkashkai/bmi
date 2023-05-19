import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi = 100;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(String bmi) {
    _bmi = double.parse(bmi);
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Umderweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Fat Bastard';
    } else if (_bmi! > 18.5) {
      return 'Boring';
    } else {
      return 'Skinny Runt';
    }
  }
}
