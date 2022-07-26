import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Over Weight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a hiegher than normal body weight.\nTry to exercise more.";
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight.\nGood job!";
    } else {
      return "You have a lower than normal body weight.\nTry to eat more.";
    }
  }
}
