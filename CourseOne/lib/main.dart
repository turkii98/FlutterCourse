import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              startColor: Color.fromARGB(70, 23, 101, 160),
              endColor: Color.fromARGB(115, 54, 114, 244))),
    ),
  );
}
