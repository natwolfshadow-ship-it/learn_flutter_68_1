import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        Container (
          color: Colors.redAccent,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            )
          ),
        ),
         Container (
          color: Colors.greenAccent,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            )
          ),
        ),
        Container (
          color: Colors.blueAccent,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            )
          ),
        ),
      ],
    );
  }
}