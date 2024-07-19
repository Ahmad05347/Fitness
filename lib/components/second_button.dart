import 'package:flutter/material.dart';

class SecondButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool? isTrue;
  final bool? isColor;
  const SecondButton({
    super.key,
    this.onTap,
    required this.text,
    this.isTrue,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
        ),
        child: Container(
          margin: isColor == null
              ? const EdgeInsets.all(
                  0,
                )
              : const EdgeInsets.all(
                  20,
                ),
          height: isTrue == null ? 60 : 35,
          width: isTrue == null ? double.infinity : 100,
          decoration: BoxDecoration(
            color: isColor == null
                ? const Color(
                    0xFF067a3b,
                  )
                : const Color(
                    0xFF141414,
                  ),
            borderRadius: BorderRadius.circular(
              28,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight:
                    isTrue == null ? FontWeight.normal : FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
