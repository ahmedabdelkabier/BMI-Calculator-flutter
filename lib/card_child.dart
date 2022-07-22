import 'package:flutter/material.dart';

const textStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18.0,
);

class CardChild extends StatelessWidget {
  final IconData cardIcon;
  final String typo;

  CardChild({required this.cardIcon, required this.typo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          typo,
          style: textStyle,
        ),
      ],
    );
  }
}
