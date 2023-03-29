import 'package:bmi_calculator/BottomButton.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.interpretation, required this.bmiResult, required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR"),),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:
          Container(
            child: Center(
              child: Text("RESULT",
                style: kResultStyle,),
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: kActiveCardColor,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color(0xFF24D876),
                  ),
                  ),
                  Text(bmiResult, style: TextStyle(
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("NORMAL BMI\n 18.5 ~ 24.9", textAlign:  TextAlign.center, style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  Text(interpretation, textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 16.0,
                  ),),
                ],
              ),
                ),
              ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text("RE-CALCULATE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              ),
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              height: 72.0,
              color: kBottomContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}

