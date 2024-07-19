import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final Color color;
  final Color? backgroundColor;
  final String text;
  final bool? isHeight;
  final Function()? onTap;
  final Gradient? gradient;

  const AppButton({
    super.key,
    required this.color,
    this.backgroundColor,
    required this.text,
    this.isHeight,
    this.onTap,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: 3,
        ),
        width: isHeight == null ? 50 : 80,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          gradient: gradient,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
