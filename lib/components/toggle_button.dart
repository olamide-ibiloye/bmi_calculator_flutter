import 'package:flutter/material.dart';

GestureDetector toggleButton({required int variable, required IconData icon, required Function()? onTap, Function()? onLongPress}) {
  return GestureDetector(
    onTap: onTap,
    onLongPress: onLongPress,
    child: CircleAvatar(
      backgroundColor: const Color(0xFF1C1F32),
      radius: 30.0,
      child: Icon(
        icon,
        size: 40.0,),
    ),
  );
}