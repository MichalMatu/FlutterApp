import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {
    // body of the function
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colors[0],
            colors[1],
            colors[2],
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(26.0),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20)),
                child: const Text('Roll the dice')),
          ],
        ),
      ),
    );
  }
}
