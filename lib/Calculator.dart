import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  Calculator({required this.height, required this.weight});

  double _bmi = 0;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Eat Less';
    } else if (_bmi >= 18.5) {
      return 'Proper';
    } else {
      return 'Eat More';
    }
  }
}
