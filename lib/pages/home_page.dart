import 'package:app_4/pages/booking_page/booking_page.dart';
import 'package:app_4/pages/culture_page.dart';
import 'package:app_4/pages/land_marks.dart';
import 'package:app_4/pages/natural_wonders.dart';
import 'package:app_4/pages/night_life.dart';
import 'package:app_4/utils/color.dart';
import 'package:app_4/widgets/reusable/home_page/category_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 20,
                            color: mainTextColor,
                          ),
                        ),
                        const Text(
                          "Places",
                          style: TextStyle(
                              fontSize: 48,
                              color: mainColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                    fontSize: 15,
                    color: mainTextColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/image1.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NaturalWonders()));
                      },
                      child: const CategoryCard(
                        cardTitle: "Natural Wonders",
                        cardBgColor: Color(0xff8E8FFA),
                        cardWidth: 168,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NightLife()));
                      },
                      child: const CategoryCard(
                        cardTitle: "Nightlife",
                        cardBgColor: Color(0xff8E8FFA),
                        cardWidth: 168,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LandMarks()));
                      },
                      child: CategoryCard(
                        cardTitle: "Landmarks",
                        cardBgColor: Color(0xffC2D9FF),
                        cardWidth: 168,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CulturePage()),
                        );
                      },
                      child: CategoryCard(
                        cardTitle: "Cultural",
                        cardBgColor: Color(0xffC2D9FF),
                        cardWidth: 168,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookingPage()));
                  },
                  child: const CategoryCard(
                    cardTitle: "Book For A Ride Today!",
                    cardBgColor: thirdCategoryColor,
                    cardWidth: 360,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
