import 'package:flutter/material.dart';

SliderTheme slider(
    {required BuildContext context,
    required int height,
    required Function(double)? onPress}) {
  return SliderTheme(
    data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        inactiveTrackColor: const Color(0xFF8D8E98),
        thumbColor: const Color(0xFFEB1555),
        overlayColor: const Color(0x29EB1555),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: const RoundSliderOverlayShape(
          overlayRadius: 30.0,
        )),
    child: Slider(
      value: height.toDouble(),
      min: 100.0,
      max: 300.0,
      onChanged: onPress,
    ),
  );
}
