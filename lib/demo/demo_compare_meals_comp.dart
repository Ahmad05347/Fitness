import 'package:flutter/material.dart';

class DemoCompareMealsComp extends StatelessWidget {
  final VoidCallback onTap;
  final String planName;

  const DemoCompareMealsComp(
      {required this.onTap, required this.planName, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          planName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
