import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ExpansionTileDataComponent extends StatelessWidget {
  final String linearIndicatorText;
  final IconData icon;
  final String text;
  final double percent;

  const ExpansionTileDataComponent({
    super.key,
    required this.linearIndicatorText,
    required this.icon,
    required this.text,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Row(
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
                child: Text(
                  linearIndicatorText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
