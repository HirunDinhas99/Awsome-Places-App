import 'package:app_4/pages/home_page.dart';
import 'package:app_4/pages/natural_wonders.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 4",
      home: HomePage(),
    );
  }
}
