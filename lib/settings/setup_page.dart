import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SetupPage extends StatelessWidget {
  const SetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000302,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              color: Color(
                0xFF0a311f,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  12,
                ),
                bottomRight: Radius.circular(
                  12,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mainReuseableText(
                  "",
                  false,
                  false,
                ),
                const Icon(
                  Icons.calendar_month_sharp,
                  color: Colors.white,
                  size: 70,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.play_circle_filled_rounded,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(
              10,
            ),
            padding: const EdgeInsets.only(
              left: 30,
            ),
            width: double.infinity,
            height: 115,
            decoration: BoxDecoration(
              color: const Color(
                0xFF0b0b0b,
              ),
              borderRadius: BorderRadius.circular(
                14,
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    mainReuseableText(
                      "Set Up",
                      false,
                      false,
                    ),
                    reuseableText(
                      "Edit you onboarding set up for a unique workout\n& macros/micros",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(
              10,
            ),
            padding: const EdgeInsets.only(
              left: 30,
            ),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color(
                0xFF0b0b0b,
              ),
              borderRadius: BorderRadius.circular(
                14,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        secondReuseableText(
                          "Redo Basic Information",
                        ),
                        reuseableText(
                          "Use the audio from saved videos as an alarm",
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.sports,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        secondReuseableText(
                          "Redo Workouts",
                        ),
                        reuseableText(
                          "Use the audio from saved videos as an alarm",
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.fastfood,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        secondReuseableText(
                          "Redo Diet Plan",
                        ),
                        reuseableText(
                          "Use the audio from saved videos as an alarm",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
