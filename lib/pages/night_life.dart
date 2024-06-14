import 'package:app_4/pages/home_page.dart';
import 'package:app_4/utils/color.dart';
import 'package:app_4/widgets/reusable/image_card.dart';
import 'package:flutter/material.dart';

class NightLife extends StatelessWidget {
  const NightLife({super.key});

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
          "Nightlife",
          style: TextStyle(
              fontSize: 30,
              color: mainNightlifeColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              MyImageCard(
                myTitle: "Nightlife Place-1",
                mydes:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                myimg: "night2.png",
                isConnerRound: true,
                titleColo: subNightlifeColor,
              ),
              SizedBox(
                height: 20,
              ),
              MyImageCard(
                myTitle: "Nightlife Place-2",
                mydes:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                myimg: "night1.png",
                isConnerRound: true,
                titleColo: subNightlifeColor,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
