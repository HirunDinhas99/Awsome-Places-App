import 'package:flutter/material.dart';

class VehicalCard extends StatelessWidget {
  final String vehicalName;
  final String vehicalImg;
  const VehicalCard({
    super.key,
    required this.vehicalName,
    required this.vehicalImg,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                vehicalImg,
                width: 95,
                height: 95,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              vehicalName,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff8E8FFA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
