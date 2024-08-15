import 'package:flutter/material.dart';
import 'package:math_game/LevelS/all_levels.dart';

final List<String> eachLevels = ["1", "2", "3", "4"];

class GridLevels extends StatelessWidget {
  const GridLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: eachLevels.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (context, index) {
        return AllLevels(
            eachLevel: eachLevels[index],
            levelColors: const Color.fromARGB(255, 0, 0, 0));
      },
    );
  }
}
