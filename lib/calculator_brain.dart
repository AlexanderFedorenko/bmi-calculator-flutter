import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String bmi() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.6) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'Too fat';
    } else if (_bmi >= 18.6) {
      return 'Nah, normal';
    } else {
      return 'Too skinny';
    }
  }
}
