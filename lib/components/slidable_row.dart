import 'package:flutter/material.dart';

class SlidableRow extends StatelessWidget {
  const SlidableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          /*  DemoComponents(
            text: "Monday",
          ),
          SizedBox(
            width: 5,
          ),
          DemoComponents(
            text: "Tuesday",
          ),
          SizedBox(
            width: 5,
          ),
          DemoComponents(
            text: "Wednesday",
          ),
          SizedBox(
            width: 5,
          ),
          DemoComponents(
            text: "Thursday",
          ),
          SizedBox(
            width: 5,
          ),
          DemoComponents(
            text: "Friday",
          ),
          SizedBox(
            width: 5,
          ),
          DemoComponents(
            text: "Saturday",
          ),
          SizedBox(
            width: 5,
          ),
          DemoComponents(
            text: "Sunday",
          ), */
          SizedBox(
            width: 5,
          ),

          /*  DailyNutrientsBox(
            text: "Monday",
            isColor: true,
          ),
          DailyNutrientsBox(
            text: "Tuesday",
          ),
          DailyNutrientsBox(
            text: "Wednesday",
          ),
          DailyNutrientsBox(
            text: "Thursday",
          ),
          DailyNutrientsBox(
            text: "Friday",
          ),
          DailyNutrientsBox(
            text: "Saturday",
          ),
          DailyNutrientsBox(
            text: "Sunday",
          ), */
        ],
      ),
    );
  }
}
