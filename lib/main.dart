import 'package:bmi_calculator/Calculator.dart';
import 'package:bmi_calculator/ResultsPage.dart';
import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'Input_page.dart';
import 'ResultsPage.dart';
import 'Calculator.dart';
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);
  static const color = Color(0xffa2daf1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Palette.color).copyWith(
          secondary: Colors.blue,
        ),
        scaffoldBackgroundColor: Palette.color,
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
