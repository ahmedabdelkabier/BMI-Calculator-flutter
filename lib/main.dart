import 'input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalcualtor());
}

class BMICalcualtor extends StatelessWidget {
  const BMICalcualtor({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0a0c21)),
        scaffoldBackgroundColor: Color(0xFF0a0c21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
