import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class MealPerDayComponents extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color iconColor;
  final IconData icon;
  final String bodyText;
  final bool? isBorder;
  const MealPerDayComponents({
    super.key,
    required this.firstText,
    required this.iconColor,
    required this.secondText,
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
      height: isBorder == null ? 200 : 240,
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
        ],
      ),
    );
  }
}
