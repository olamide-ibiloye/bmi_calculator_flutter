import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiValue,
      required this.bmiResult,
      required this.bmiInterpretation});

  final String bmiValue;
  final String bmiResult;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 100.0,
          ),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Your Result',
                textAlign: TextAlign.right,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: reusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Text(
                        bmiResult.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiValue,
                        style: kBMIValue,
                      ),
                    ),
                    Text(
                      bmiInterpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          bottomButton(
            context: context,
            buttonName: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
