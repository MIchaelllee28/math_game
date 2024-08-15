import 'package:flutter/material.dart';

class AllLevels extends StatelessWidget {
  const AllLevels(
      {super.key, required this.eachLevel, required this.levelColors});

  final Color levelColors;
  final String eachLevel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.deepPurple[300]),
        child: Text(
          eachLevel,
          style: TextStyle(
            color: levelColors,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
