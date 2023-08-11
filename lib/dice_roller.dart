import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 1;
  final rand = Random();
  void rollDice() {
    setState(() {
      diceNumber = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceNumber.png', width: 200),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.amber,
            ),
            child: const Text("pritisni me"))
      ],
    );
  }
}
