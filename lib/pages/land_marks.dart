import 'package:app_4/pages/home_page.dart';
import 'package:app_4/utils/color.dart';
import 'package:app_4/widgets/reusable/land_marks/land_mark_card.dart';

import 'package:flutter/material.dart';

class LandMarks extends StatelessWidget {
  const LandMarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        title: const Text(
          "Landmarks",
          style: TextStyle(
              fontSize: 30,
              color: mainLandmarkColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  color: mainTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LandMarkCard(
                title: "Landmarks Place-1",
                des:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl: "land1",
              ),
              const SizedBox(
                height: 10,
              ),
              const LandMarkCard(
                title: "Landmarks Place-2",
                des:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl: "land2",
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
