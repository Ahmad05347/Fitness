import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SecondHomeComponent extends StatelessWidget {
  const SecondHomeComponent({
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
      height: 235,
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
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/pexels-mohammad-ubaid-17956265 1.png",
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
