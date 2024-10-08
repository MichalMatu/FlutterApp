import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(),
  )));
}

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
      child: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 56, 58, 59),
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
