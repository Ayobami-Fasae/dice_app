import 'package:flutter/material.dart';

//local packages
import './gradient_container.dart';

const List<Color> gradientColors = [
  Color.fromARGB(255, 29, 2, 44),
  Color.fromARGB(255, 69, 3, 95),
];

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: gradientColors,
        ),
      ),
    ),
  );
}
