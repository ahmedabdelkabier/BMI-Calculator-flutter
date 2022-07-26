import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;

  BottomButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: buttomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: buttomContainerHight,
        width: double.infinity,
      ),
    );
  }
}
