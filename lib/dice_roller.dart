import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // declare a variable to store the active dice image
  var currentDiceRoll = 1;

  void rollDice() {
    // body of the function
    setState(() {
      // update the activeDiceImage variable
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue, // Set the background color
            padding: const EdgeInsets.all(16.0), // Add padding for the button
            shape: RoundedRectangleBorder(
              // Define the shape of the button
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
            ),
            foregroundColor: Colors.white, // Text color
            textStyle: const TextStyle(fontSize: 20), // Text style
          ),
          child: const Text('Roll the dice'),
        ),
      ],
    );
  }
}
