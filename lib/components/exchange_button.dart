import 'package:flutter/material.dart';

class ExchangeButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool? isTrue;
  final bool? isColor;
  const ExchangeButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isTrue,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 160,
        decoration: BoxDecoration(
          color: isColor == null ? Colors.transparent : Colors.green,
          borderRadius: BorderRadius.circular(
            28,
          ),
          border: Border.all(
            color: isColor == null ? Colors.white : Colors.transparent,
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
