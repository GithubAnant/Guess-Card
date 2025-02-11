import 'package:flutter/material.dart';

class TextOfButton extends StatelessWidget {
  final String buttonText;
  const TextOfButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18
        ),
      );
  }
}
