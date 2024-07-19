import 'package:flutter/material.dart';

class CreateMealsIconComponents extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;

  const CreateMealsIconComponents({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black,
            size: 80,
          ),
        ),
      ),
    );
  }
}
