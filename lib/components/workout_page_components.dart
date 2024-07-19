import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class WorkoutPageComponents extends StatelessWidget {
  const WorkoutPageComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        10,
      ),
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
        bottom: 20,
      ),
      width: MediaQuery.of(context).size.width,
      height: 245,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: const Color(
          0xFF151515,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pexels-mohammad-ubaid-17956265 1.png",
                    ),
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                  ),
                  gradient: LinearGradient(
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
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      simpleText(
                        "Workouts",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      reuseableText(
                        "20 minutes left",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  secondReuseableText(
                    "1200 Calories Burned",
                  ),
                ],
              ),
              Row(
                children: [
                  reuseableText(
                    "8 workouts left",
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            width: 350,
            height: 25,
            decoration: BoxDecoration(
              color: const Color(
                0xFF303030,
              ),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: Row(
              children: [
                secondReuseableText(
                  "0%",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              reuseableText(
                "View More...",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
