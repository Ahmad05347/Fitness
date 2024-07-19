import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool isTrue;
  final bool isColor;
  final bool isHeight;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isTrue = false,
    this.isColor = false,
    this.isHeight = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: isTrue
            ? const EdgeInsets.symmetric(horizontal: 20.0)
            : EdgeInsets.zero,
        child: Container(
          margin: isColor ? const EdgeInsets.all(20.0) : EdgeInsets.zero,
          height: isHeight ? 41.0 : 60.0,
          width: isTrue ? 95.0 : 295.0,
          decoration: BoxDecoration(
            gradient: isColor
                ? null
                : const LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xFF056d35),
                      Color(0xFF06622f),
                      Color(0xFF024c1e),
                      Color(0xFF03461d),
                      Color(0xFF03461d),
                      Color(0xFF013712),
                      Color(0xFF002708),
                    ],
                  ),
            color: isColor ? const Color(0xFF141414) : const Color(0xFF067a3b),
            borderRadius: BorderRadius.circular(isTrue ? 12.0 : 28.0),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: isHeight ? 12.0 : 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
