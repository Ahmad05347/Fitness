import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentTextWidget extends StatelessWidget {
  final String text;
  const PaymentTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
