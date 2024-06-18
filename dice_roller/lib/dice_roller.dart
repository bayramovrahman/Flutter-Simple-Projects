import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var clipRRect = ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(252, 239, 10, 1),
                        Color.fromRGBO(243, 231, 6, 1),
                        Color.fromRGBO(248, 235, 0, 1),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(
                    fontSize: 24,
                  )
                ),
                child: const Text("Roll Dice"),
              ),
            ],
          ),
        );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 230,
        ),
        const SizedBox(height: 25),
        clipRRect,
      ],
    );
  }
}
