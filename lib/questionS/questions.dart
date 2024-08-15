import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  const Questions(
      {super.key, required this.questionText, required this.textColor});

  final String questionText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(color: textColor, fontSize: 50),
      ),
    );
  }
}
