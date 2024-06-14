import 'package:app_4/pages/booking_page/booking_form.dart';
import 'package:app_4/pages/home_page.dart';
import 'package:app_4/utils/color.dart';
import 'package:app_4/widgets/reusable/booking_page/vehical_card.dart';
import 'package:app_4/widgets/shared/rating.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

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
          "Lets Book A Tour!",
          style: TextStyle(
            fontSize: 30,
            color: mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 15,
              ),
              Text(
                "Select a vehical",
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VehicalCard(
                    vehicalName: "Car",
                    vehicalImg:
                        "https://th.bing.com/th/id/OIP.1C4uQn5s-hyi7XaW_25m4wHaFj?rs=1&pid=ImgDetMain",
                  ),
                  VehicalCard(
                    vehicalName: "Bike",
                    vehicalImg:
                        "https://th.bing.com/th/id/R.42b1129351372920261b1d1428f192c3?rik=FJN418LKipz4pQ&riu=http%3a%2f%2f2.bp.blogspot.com%2f-UjnI3QKIlrI%2fTiyYGsztIWI%2fAAAAAAAAMQk%2f9KRTxa7SnmE%2fs1600%2fsports%2bbike%2bwallpaper-1.jpeg&ehk=sIY3bLgM6M1Ka3lcuR5HEAZjkAHeln52lObhzbGwDaw%3d&risl=&pid=ImgRaw&r=0",
                  ),
                  VehicalCard(
                    vehicalName: "Bus",
                    vehicalImg:
                        "https://th.bing.com/th/id/OIP.0EtOwL3GyuyV7-xk6jiToQHaFj?rs=1&pid=ImgDetMain",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Selected Place",
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //stack
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/Cultural1.png",
                      width: double.infinity,
                      height: 259,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 259,
                    decoration: BoxDecoration(
                      color: Color(0xff000000).withOpacity(0.56),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Place",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        StarMy(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Fill The Details",
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BookingForm(),
            ],
          ),
        ),
      ),
    );
  }
}
