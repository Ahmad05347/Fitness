import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/setup%20wordout/select_weekly_splits.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class Quads extends StatelessWidget {
  const Quads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const AppBarComponents(),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText(
                              "Quads",
                              false,
                              false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Gain muscle mass through structured weightlifting and a nutrient-rich diet",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: MyButton(
                            isHeight: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SelectWeeklySplits(),
                                ),
                              );
                            },
                            text: "Continue",
                            isTrue: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(0xFF474747),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/Rectangle 12325.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      15,
                    ),
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(
                        0xFF151513,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Column(
                      children: [
                        secondReuseableText("Ideal For"),
                        const SizedBox(
                          height: 10,
                        ),
                        reuseableText(
                          "Perfect for those looking to increase muscle mass, enhance strength, and improve overall body composition",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      15,
                    ),
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(
                        0xFF151513,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Column(
                      children: [
                        secondReuseableText("Ideal For"),
                        const SizedBox(
                          height: 10,
                        ),
                        reuseableText(
                          "Perfect for those looking to increase muscle mass, enhance strength, and improve overall body composition",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      15,
                    ),
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(
                        0xFF151513,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Column(
                      children: [
                        secondReuseableText("Ideal For"),
                        const SizedBox(
                          height: 10,
                        ),
                        reuseableText(
                          "Perfect for those looking to increase muscle mass, enhance strength, and improve overall body composition",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
