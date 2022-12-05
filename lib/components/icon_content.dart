import 'package:flutter/material.dart';
import '../constants.dart';

Column cardChildColumn(
    {required final IconData cardIcon, required final String label}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        cardIcon,
        size: 80.0,
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(label, style: kLabelTextStyle),
    ],
  );
}
