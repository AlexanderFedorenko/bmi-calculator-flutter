import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.result,
    @required this.interpretation,
  });

  final String bmiResult;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('YOUR RESULTS', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(interpretation,
                      textAlign: TextAlign.center, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputPage()),
                );
              })
        ],
      ),
    );
  }
}
