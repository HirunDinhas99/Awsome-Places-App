import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final String hintText;
  const MyInput({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xff6E7A76).withOpacity(0.47),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
    );
  }
}
