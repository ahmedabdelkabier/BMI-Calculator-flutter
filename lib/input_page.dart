import 'package:bmi_calc/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_child.dart';
import 'reusable_card.dart';
import 'rounded_icon_button.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';

enum HummanType {
  male,
  female,
  non,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  HummanType selectedGender = HummanType.non;
  //height in cm
  int height = 180;
  //weight in Kg
  int weight = 60;
  int Age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("BMI CALCUALTOR"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = HummanType.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == HummanType.male
                          ? activeCardColor
                          : inactiveCardCOlor,
                      cardChild: CardChild(
                        cardIcon: FontAwesomeIcons.mars,
                        typo: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = HummanType.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == HummanType.female
                          ? activeCardColor
                          : inactiveCardCOlor,
                      cardChild: CardChild(
                        cardIcon: FontAwesomeIcons.venus,
                        typo: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Height',
                          style: textStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'cm',
                              style: textStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: kActiveSliderPartColor,
                            overlayColor: Color(0X29EB1555),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: kInactiveSliderPartColor,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 13.0,
                            ),
                            overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 23.0,
                            ),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: kMinHeight.toDouble(),
                            max: kMaxHeight.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.toInt();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: textStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                pressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                pressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: textStyle,
                        ),
                        Text(
                          Age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: FontAwesomeIcons.minus,
                              pressed: () {
                                setState(() {
                                  Age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              icon: FontAwesomeIcons.plus,
                              pressed: () {
                                setState(() {
                                  Age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onPress: () {
              BMIBrain bmi = BMIBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    result: bmi.calculateBMI(),
                    BMIResult: bmi.getResult(),
                    interpolation: bmi.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
