import 'package:app_4/utils/color.dart';
import 'package:app_4/widgets/shared/button.dart';
import 'package:flutter/material.dart';

class BookingForm extends StatelessWidget {
  const BookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "User Name",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff6E7A76),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Enter Your Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Country",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff6E7A76),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Enter Your Country",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Team Size",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff6E7A76),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 78,
              width: 78,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: mainColor,
              ),
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 26,
            ),
            Column(
              children: [
                Text(
                  "Add or Remove team members",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff6E7A76),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    MyButton(
                      buttonText: "Add  +",
                      buttonColor: Color(0xff06FFA5),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MyButton(
                      buttonText: "Remove  -",
                      buttonColor: Color(0xffFF1E0F),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Divider(),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
          style: TextStyle(
            fontSize: 15,
            color: mainTextColor,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyButton(buttonText: "Submit", buttonColor: thirdCategoryColor)
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
