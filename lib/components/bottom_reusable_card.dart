import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'measurements_and_units.dart';
import '../constants.dart';

Expanded bottomCard(
    {required String variableName,
    required int variable,
    required String unit,
    required GestureDetector toggleButton1,
    required GestureDetector toggleButton2}) {
  return Expanded(
    child: reusableCard(
      cardColor: kInactiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            variableName,
            style: kLabelTextStyle,
          ),
          measurementAndUnits(height: variable, unit: unit),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              toggleButton1,
              toggleButton2,
            ],
          ),
        ],
      ),
    ),
  );
}
