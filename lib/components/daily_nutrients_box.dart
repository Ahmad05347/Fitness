import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DailyNutrientsBox extends StatefulWidget {
  final bool? isColor;
  final String text;
  final bool? isBorders;

  const DailyNutrientsBox({
    super.key,
    this.isColor,
    required this.text,
    this.isBorders,
  });

  @override
  State<DailyNutrientsBox> createState() => _DailyNutrientsBoxState();
}

class _DailyNutrientsBoxState extends State<DailyNutrientsBox> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(
          5,
        ),
        width: widget.isBorders == null ? 105 : 160,
        height: 40,
        margin: const EdgeInsets.only(
          left: 5,
        ),
        decoration: BoxDecoration(
          color: widget.isColor == null
              ? const Color(
                  0xFF3b3b3b,
                )
              : const Color(
                  0xFF08934b,
                ),
          borderRadius: BorderRadius.circular(
            24,
          ),
        ),
        child: Center(
          child: AutoSizeText(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
            ),
            minFontSize: 12,
            maxFontSize: 20,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
