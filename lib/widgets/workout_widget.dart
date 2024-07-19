import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutWidget extends StatelessWidget {
  const WorkoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        12,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
      ),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/pexels-mohammad-ubaid-17956265 1.png",
          ),
          alignment: Alignment.centerRight,
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(
          14,
        ),
        gradient: const LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(
              0xFF0aa054,
            ),
            Color(
              0xFF067436,
            ),
            Color(
              0xFF034c1b,
            ),
            Color(
              0xFF014415,
            ),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 30,
                    weight: 5,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Complete Set-Up",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  mainReuseableText(
                    "Workouts",
                    false,
                    false,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              mainReuseableText(
                "",
                false,
                false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
