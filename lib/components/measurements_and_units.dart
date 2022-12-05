import 'package:flutter/material.dart';
import '../constants.dart';

Row measurementAndUnits({required int height, required String unit}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: <Widget>[
      Text(
        height.toString(),
        style: kBoldLabelStyle,
      ),
      Text(
        unit,
        style: kLabelTextStyle,
      ),
    ],
  );
}
