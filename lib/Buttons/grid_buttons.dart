import 'package:flutter/material.dart';
import 'package:math_game/Buttons/input_button.dart';

final List<String> buttonList = [
  "7",
  "8",
  "9",
  "C",
  "4",
  "5",
  "6",
  "DEL",
  "1",
  "2",
  "3",
  "-",
  "0",
  ".",
  "x",
  "="
];

bool isOperator(String x) {
  return x == "x" || x == "." || x == "-" || x == "=" || x == ".";
}

String answersClick = "";

void clickAnswers(String x) {
  answersClick += x;
}

class GridButtons extends StatelessWidget {
  const GridButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: buttonList.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (context, index) {
        switch (buttonList[index]) {
          case "C":
            return InputButtons(
                buttonColor: const Color.fromARGB(255, 227, 57, 57),
                buttonText: buttonList[index],
                textColor: const Color.fromARGB(255, 238, 238, 238),
                onButton: () {
                  clickAnswers(buttonList[index]);
                });

          case "DEL":
            return InputButtons(
              buttonColor: const Color.fromARGB(255, 37, 213, 128),
              buttonText: buttonList[index],
              textColor: const Color.fromARGB(255, 238, 238, 238),
              onButton: () {
                clickAnswers(buttonList[index]);
              },
            );

          default:
            return isOperator(buttonList[index])
                ? InputButtons(
                    buttonColor: const Color.fromARGB(255, 193, 58, 184),
                    buttonText: buttonList[index],
                    textColor: const Color.fromARGB(255, 255, 255, 255),
                    onButton: () {
                      clickAnswers(buttonList[index]);
                    },
                  )
                : InputButtons(
                    buttonColor: Colors.white,
                    buttonText: buttonList[index],
                    textColor: const Color.fromARGB(255, 13, 12, 12),
                    onButton: () {
                      clickAnswers(buttonList[index]);
                    });
        }
      },
    );
  }
}
