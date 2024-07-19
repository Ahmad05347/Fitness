import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Function()? onTap;
  final String image;
  const SocialButton({
    super.key,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: 10,
        ),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
      ),
    );
  }
}
