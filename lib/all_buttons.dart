
import 'package:card_game/textbutton.dart';
import 'package:flutter/material.dart';

class GameButtonWidget extends StatelessWidget {
  final Function(String) handleButtonClick;

  const GameButtonWidget({super.key, required this.handleButtonClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GameButton(
          text: 'Higher Red',
          color: Color.fromARGB(255, 245, 28, 28),
          onPressed: () => handleButtonClick('Higher Red'),
        ),
        GameButton(
          text: 'Higher Black',
          color: Color.fromARGB(255, 0, 0, 0),
          onPressed: () => handleButtonClick('Higher Black'),
        ),
        GameButton(
          text: 'Lower Red',
          color: Color.fromARGB(255, 245, 28, 28),
          onPressed: () => handleButtonClick('Lower Red'),
        ),
        GameButton(
          text: 'Lower Black',
          color: Color.fromARGB(255, 0, 0, 0),
          onPressed: () => handleButtonClick('Lower Black'),
        ),
      ],
    );
  }
}
