import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class HowManyMealsWidget extends StatelessWidget {
  final String mealText;
  final String prosText;
  final String consText;
  final String image;
  final Function()? onTap;
  const HowManyMealsWidget({
    super.key,
    required this.mealText,
    required this.prosText,
    required this.consText,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ),
          secondReuseableText(
            mealText,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Pro:",
                    style: TextStyle(color: Colors.white),
                  ),
                  reuseableText(
                    prosText,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Con:",
                    style: TextStyle(color: Colors.white),
                  ),
                  reuseableText(
                    consText,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(
              10,
            ),
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: Colors.black,
            ),
            child: Column(
              children: [
                const Text(
                  "Best Suited For:",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                reuseableText(
                  "experienced fasters/weight loss/\nbusy schedules/",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
 */