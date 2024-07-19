import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MacrosComponent extends StatelessWidget {
  final String text;
  final IconData icon;
  final double percent;
  final String mainText;
  final bool? isColor;
  final ValueChanged<bool>? onToggle;
  const MacrosComponent({
    super.key,
    required this.text,
    required this.icon,
    required this.percent,
    this.mainText = "",
    this.isColor,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onToggle?.call(true);
      },
      child: FittedBox(
        child: Container(
          padding: const EdgeInsets.all(
            10,
          ),
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: 10,
          ),
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(
              0xFF151513,
            ),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
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
                        progressColor: isColor == null
                            ? const Color(
                                0xFF0dc36c,
                              )
                            : Colors.white,
                        backgroundColor: const Color(
                          0xFF656565,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 100,
                        ),
                        child: reuseableText(
                          "Min:30g",
                        ),
                      ),
                      reuseableText(
                        "",
                      ),
                      reuseableText(
                        "Max:50g",
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
                  mainText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
