import 'package:flutter/material.dart';

GestureDetector reusableCard(
    {required final Color cardColor,
    final Widget? cardChild,
    Function()? onPress}) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    ),
  );
}
