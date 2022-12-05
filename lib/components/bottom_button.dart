import 'package:flutter/material.dart';
import '../constants.dart';

GestureDetector bottomButton(
    {required BuildContext context,
    required String buttonName,
    required Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      margin: const EdgeInsets.only(top: 10.0),
      height: kBottomBarHeight,
      width: double.infinity,
      color: kBottomBarColor,
      child: Center(
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
