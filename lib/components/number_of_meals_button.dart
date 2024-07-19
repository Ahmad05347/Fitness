import 'package:flutter/material.dart';

class NumberOfMealsButton extends StatelessWidget {
  final Function()? onTap;
  final bool? isColor;
  final String text;
  const NumberOfMealsButton({
    super.key,
    required this.onTap,
    this.isColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: isColor == null
              ? const Color(
                  0xFF067a3b,
                )
              : const Color(
                  0xFF3b3b3b,
                ),
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
