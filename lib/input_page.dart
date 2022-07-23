import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_child.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1E1D33);
const inactiveCardCOlor = Color(0xFF11132390);
const buttomContainerColor = Color(0xFFEB1555);
const buttomContainerHight = 80.0;

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
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.hackerNews,
                      typo: '',
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
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.dAndD,
                      typo: '',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.vaadin,
                      typo: '',
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: buttomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: buttomContainerHight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
