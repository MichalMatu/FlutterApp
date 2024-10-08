import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: const Center(
        child: Text('Hello World',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 104, 136, 162),
                fontStyle: FontStyle.italic)),
      ),
    ),
  ));
}
