import 'package:fitness/components/second_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class WorkoutComponents extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color iconColor;
  final IconData icon;
  final String bodyText;
  final bool? isBorder;
  const WorkoutComponents({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.iconColor,
    required this.icon,
    required this.bodyText,
    this.isBorder,
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
      height: isBorder == null ? 230 : 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: const Color(
          0xFF151513,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstText,
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    secondText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          reuseableText(
            bodyText,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SecondButton(
                  onTap: () {},
                  text: "Start",
                  isTrue: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
