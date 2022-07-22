import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_child.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1E1D33);
const buttomContainerColor = Color(0xFFEB1555);
const buttomContainerHight = 80.0;

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.mars,
                      typo: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.venus,
                      typo: 'FEMALE',
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
                      cardIcon: FontAwesomeIcons.mars,
                      typo: 'MALE',
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
                      cardIcon: FontAwesomeIcons.mars,
                      typo: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.mars,
                      typo: 'MALE',
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
