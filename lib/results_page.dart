import 'package:bmi/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'input_page.dart';
import 'calculation.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultsText,
      required this.interp});

  final String? bmiResult;
  final String? resultsText;
  final String? interp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result:',
                style: kLargeButtonTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultsText.toString(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult.toString(),
                    style: kBMITextStyle,
                  ),
                  Text(interp.toString(), style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonTitle: 'RECALCULATE')
        ],
      ),
    );
  }
}
