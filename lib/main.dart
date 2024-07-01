import 'package:flutter/material.dart';
import 'package:first/GradientContainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer([
        Color.fromARGB(255, 80, 23, 2),
        Color.fromARGB(255, 110, 98, 50),
      ]),
    ),
  ));
}



