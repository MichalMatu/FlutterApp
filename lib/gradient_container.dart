import 'package:flutter/material.dart';
import 'package:my_first_app/welcome_screen_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 86, 176, 250),
            Color.fromARGB(255, 49, 104, 172),
            Color.fromARGB(255, 27, 73, 138),
          ],
        ),
      ),
      child: const WelcomeScreenText(),
    );
  }
}
