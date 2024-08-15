import 'package:flutter/material.dart';

class UserAnswer extends StatelessWidget {
  const UserAnswer(
      {super.key, required this.userAnswer, required this.userColor});

  final String userAnswer;
  final Color userColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 91, 16, 220),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(
        userAnswer,
        style: TextStyle(color: userColor, fontSize: 45),
      ),
    );
  }
}
