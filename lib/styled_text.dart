import 'package:flutter/material.dart';

//local files

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      text,
    );
  }
}
