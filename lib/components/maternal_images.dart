import 'package:flutter/material.dart';

class MaternalImages extends StatelessWidget {
  final String image;
  const MaternalImages({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          alignment: Alignment.center,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
