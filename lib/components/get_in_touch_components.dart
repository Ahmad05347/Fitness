import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class GetInTouchComponents extends StatelessWidget {
  final String text;
  const GetInTouchComponents({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        15,
      ),
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: const Color(
          0xFF0b0b0b,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          secondReuseableText(
            text,
          ),
          const Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
