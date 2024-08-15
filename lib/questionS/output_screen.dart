import 'package:flutter/material.dart';
import 'package:math_game/questionS/questions.dart';
import 'package:math_game/questionS/user_answer.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Questions(questionText: "1 + 1", textColor: Colors.white),
        SizedBox(
          width: 10,
        ),
        UserAnswer(
          userAnswer: "Answer",
          userColor: Colors.white,
        )
      ],
    );
  }
}
