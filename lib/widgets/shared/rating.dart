import 'package:flutter/material.dart';

class StarMy extends StatelessWidget {
  const StarMy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.5),
        color: const Color(0xffCACACA).withOpacity(0.31),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            size: 34,
            color: Color(0xffFFE500),
          ),
          const Icon(
            Icons.star,
            size: 34,
            color: Color(0xffFFE500),
          ),
          const Icon(
            Icons.star,
            size: 34,
            color: Color(0xffFFE500),
          ),
          const Icon(
            Icons.star,
            size: 34,
            color: Color(0xffFFE500),
          ),
          Icon(
            Icons.star,
            size: 34,
            color: const Color(0xff3B3636).withOpacity(0.75),
          ),
        ],
      ),
    );
  }
}
