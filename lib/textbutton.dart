import 'package:card_game/text_of_button.dart';
import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {

  final String text;
  final Color color;
  final VoidCallback onPressed;

  const GameButton({super.key, required this.text, required this.color, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 15),
      child: TextButton(
      onPressed: onPressed, 
      style: TextButton.styleFrom(
        backgroundColor: color
      ),
      child: TextOfButton(buttonText: text),
      ),
    );
  }
}