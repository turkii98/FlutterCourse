import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer()
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(70, 23, 101, 160), Color.fromARGB(115, 54, 114, 244)]),
          ),
          child: const Center(
            child: Text(
              "Hello world!",
              style: TextStyle(color: Color.fromARGB(87, 3, 3, 3), fontSize: 28),
            ),
          ),
        );
  }
  
}
