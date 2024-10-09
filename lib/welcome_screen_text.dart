import 'package:flutter/material.dart';

const Color color1 = Color.fromARGB(255, 27, 40, 50);

class WelcomeScreenText extends StatelessWidget {
  const WelcomeScreenText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color1,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
