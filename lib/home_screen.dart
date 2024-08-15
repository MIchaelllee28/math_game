import 'package:flutter/material.dart';
import 'package:math_game/Buttons/grid_buttons.dart';
import 'package:math_game/LevelS/grid_levels.dart';
import 'package:math_game/questionS/output_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.deepPurple[600]),
                child: GridLevels(),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: const OutputScreen(),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: const GridButtons(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
