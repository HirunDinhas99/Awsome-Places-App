import 'package:app_4/utils/color.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color cardBgColor;
  final double cardWidth;
  final String cardTitle;
  const CategoryCard({
    super.key,
    required this.cardBgColor,
    required this.cardWidth,
    required this.cardTitle,
  });
  final double cardheight = 112;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardheight,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardBgColor,
      ),
      child: Center(
        child: Text(
          cardTitle,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: mainBlack,
          ),
        ),
      ),
    );
  }
}
