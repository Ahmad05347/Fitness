import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/meal_per_day_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/weeks_meal_plan.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class MealsPerDay extends StatelessWidget {
  const MealsPerDay({super.key});

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
                              "6 Meals\nper day",
                              false,
                              false,
                            ),
                            Text(
                              "How many meals you plan to eat per day",
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
                                  builder: (context) => const WeeksMealPlan(),
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
              const Column(
                children: [
                  MealPerDayComponents(
                    firstText: "Benefits",
                    iconColor: Colors.green,
                    secondText: "Pro",
                    icon: Icons.check_circle_rounded,
                    bodyText:
                        "Frequent nutrient intake, can support\nmetabolic rate, and may be beneficial for body composition when aligned\nwith an active lifestyle.",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MealPerDayComponents(
                    isBorder: true,
                    firstText: "Risk",
                    iconColor: Colors.red,
                    secondText: "Cons",
                    icon: Icons.remove_circle_outlined,
                    bodyText:
                        "Time-consuming, can lead to obsessive eating patterns, and if not\nmanaged, can result in overeating and\nweight gain, increasing the risk\nof metabolic syndrome and other chronic diseases.",
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
