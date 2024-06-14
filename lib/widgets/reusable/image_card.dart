import 'package:app_4/utils/color.dart';
import 'package:flutter/material.dart';

class MyImageCard extends StatelessWidget {
  final String myTitle;
  final String mydes;
  final String myimg;
  final Color titleColo;
  final bool isConnerRound;
  const MyImageCard(
      {super.key,
      required this.myTitle,
      required this.mydes,
      required this.myimg,
      required this.isConnerRound,
      required this.titleColo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          myTitle,
          style: TextStyle(
            fontSize: 20,
            color: titleColo,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        isConnerRound
            ? ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  "assets/${myimg}",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                "assets/${myimg}",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        SizedBox(
          height: 15,
        ),
        Text(
          mydes,
          style: TextStyle(
            fontSize: 15,
            color: mainTextColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
