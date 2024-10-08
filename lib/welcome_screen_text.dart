import 'package:flutter/material.dart';

const Color color1 = Color.fromARGB(255, 27, 40, 50);

class WelcomeScreenText extends StatelessWidget {
  const WelcomeScreenText({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Welcome to My First App',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color1,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
