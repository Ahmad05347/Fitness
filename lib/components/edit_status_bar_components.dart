import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class EditStatusBarComponents extends StatelessWidget {
  final String text;
  final IconData icon;
  final double percent;
  final String mainText;
  const EditStatusBarComponents({
    super.key,
    required this.text,
    required this.icon,
    required this.percent,
    required this.mainText,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          icon,
                          color: Colors.white,
                        ),
                        Text(
                          text,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  LinearPercentIndicator(
                    width: 250,
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    percent: percent,
                    // ignore: deprecated_member_use
                    linearStrokeCap: LinearStrokeCap.butt,
                    progressColor: Colors.white,
                    backgroundColor: const Color(
                      0xFF656565,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: mainReuseableText(
              mainText,
              false,
              false,
            ),
          ),
        ],
      ),
    );
  }
}
