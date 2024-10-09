import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

// declare 3 variable to store the color code
// const Color color1 = Color.fromARGB(255, 86, 176, 250);
// const Color color2 = Color.fromARGB(255, 49, 104, 172);
// const Color color3 = Color.fromARGB(255, 27, 73, 138);

// create colors list
const List<Color> colors = [
  Color.fromARGB(255, 86, 176, 250),
  Color.fromARGB(255, 49, 104, 172),
  Color.fromARGB(255, 27, 73, 138)
];

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(colors: colors),
  )));
}
