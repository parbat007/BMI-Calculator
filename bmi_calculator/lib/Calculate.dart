import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi= 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    }
    else if (_bmi > 18.5) {
      return 'NORMAL';
    }
    else {
      return 'UNDERWEIGHT';
    }
  }

  String op(){
    if (_bmi>25){
      return "Your body weight is higher than Normal.\nTry exercising!";
    }
    else if (_bmi>18.5){
      return 'Your body weight is Normal.\nStay fit!';
    }
    else{
      return 'Your body weight is lower than Normal.\nEat more!';
    }
  }

}