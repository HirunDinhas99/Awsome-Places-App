import 'package:app_4/utils/color.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const MyButton(
      {super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          color: mainBlack,
          fontSize: 16,
        ),
      ),
    );
  }
}
