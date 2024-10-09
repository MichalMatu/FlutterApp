import 'package:flutter/material.dart';
import 'package:my_first_app/welcome_screen_text.dart';

const String text = "Welcome !!!";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

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
      child: const WelcomeScreenText(text),
    );
  }
}
