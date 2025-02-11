import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  const Rules({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('RULES'),
      content: const Text(
        '''\n1. Guess Higher or Lower than the last drawn card.\n
2. Correct number → +1 \n
3. Correct color too  → +3 \n
4. Wrong guess → Lose 1 life \n
5. Joker drawn → Restores all lives but halves the points\n
6. Total: 3 Lives\n''',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
