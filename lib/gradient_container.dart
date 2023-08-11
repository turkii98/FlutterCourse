import 'dart:math';

import 'package:first_app/dice_roller.dart';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(
      {required this.startColor, required this.endColor, super.key});

  GradientContainer.purple()
      : startColor = Colors.blue,
        endColor = Colors.blueAccent;

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [startColor, endColor]),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
