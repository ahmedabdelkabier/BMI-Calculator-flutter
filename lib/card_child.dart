import 'package:flutter/material.dart';
import 'constants.dart';

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
          color: Colors.white,
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
