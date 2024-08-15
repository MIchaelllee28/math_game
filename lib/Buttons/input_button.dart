import 'package:flutter/material.dart';

class InputButtons extends StatelessWidget {
  const InputButtons(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      required this.textColor,
      required this.onButton});

  final String buttonText;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: buttonColor),
        onPressed: () {
          onButton;
        },
        child: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
