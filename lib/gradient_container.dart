import 'package:flutter/material.dart';
import 'package:my_first_app/welcome_screen_text.dart';

// declare 3 variable to store the color code
const Color color1 = Color.fromARGB(255, 86, 176, 250);
const Color color2 = Color.fromARGB(255, 49, 104, 172);
const Color color3 = Color.fromARGB(255, 27, 73, 138);

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2, color3],
        ),
      ),
      child: const WelcomeScreenText(),
    );
  }
}
