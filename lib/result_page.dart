import 'package:bmi_calc/card_child.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.BMIResult,
      required this.result,
      required this.interpolation});

  final String BMIResult;
  final String result;
  final String interpolation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: kLargeButtonTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTextTitleStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    BMIResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    result,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    interpolation,
                    style: kInterpolationTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              title: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
