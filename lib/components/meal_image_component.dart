import 'package:flutter/material.dart';

class MealImageComponent extends StatelessWidget {
  final String image;
  const MealImageComponent({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          200,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(
          image,
        ),
      ),
    );
  }
}
