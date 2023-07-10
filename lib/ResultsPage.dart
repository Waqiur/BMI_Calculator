import 'package:bmi_calculator/AppCard.dart';
import 'package:bmi_calculator/Calculator.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/Input_page.dart';
import 'package:flutter/material.dart';
import 'Input_page.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String interpretation;
  final String bmi;

  ResultsPage(
      {required this.bmi, required this.interpretation, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    'Your Results',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: AppCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: TextStyle(fontSize: 25, color: Color(0xFF24D876)),
                  ),
                  Text(
                    bmi,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
              child: BottomButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            string: 'Re - Calculate',
          ))
        ],
      ),
    );
  }
}
