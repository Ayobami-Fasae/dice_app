import 'package:flutter/material.dart';
import 'dart:math';

//local import
import './styled_text.dart';

final _randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String _diceImage = 'assets/images/dice-6.png';

  void _rollDice() {
    int diceRoll = (_randomizer.nextInt(6) + 1);
    setState(() {
      _diceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          _diceImage,
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: _rollDice,
          child: const StyledText('Roll Dice'),
        ),
      ],
    );
  }
}
