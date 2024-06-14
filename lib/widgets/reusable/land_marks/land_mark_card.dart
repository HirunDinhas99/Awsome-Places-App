import 'package:app_4/utils/color.dart';
import 'package:flutter/material.dart';

class LandMarkCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String des;
  const LandMarkCard(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.des});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: subLandmarkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.asset(
                  "assets/${imageUrl}.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                des,
                style: TextStyle(
                  fontSize: 15,
                  color: mainTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
