import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String bmiValue() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpretation() {
    if (_bmi >= 30) {
      return 'You are at risk of heart attack! Please, see your doctor!';
    } else if (_bmi >= 25) {
      return 'You are overweight, you need to eat less';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You are underweight, you need to eat more';
    }
  }
}