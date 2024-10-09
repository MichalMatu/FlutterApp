import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // declare a variable to store the active dice image
  String activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    // body of the function
    setState(() {
      // activeDiceImage = 'assets/images/dice-2.png';
      // create a random number between 1 and 6 and store it in a variable
      int randomNumber = 1 + (DateTime.now().millisecond % 6);
      // update the activeDiceImage variable based on the random number
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
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
