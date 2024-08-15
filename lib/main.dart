import 'package:flutter/material.dart';
import 'package:math_game/home_screen.dart';

void main() {
  runApp(const MathGame());
}

class MathGame extends StatelessWidget {
  const MathGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
