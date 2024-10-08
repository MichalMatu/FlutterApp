import 'package:flutter/material.dart';

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
          color: Color.fromARGB(255, 56, 58, 59),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
