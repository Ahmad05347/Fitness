import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/macros_component.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/daily_nutrients_conti.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DailyNutrients extends StatelessWidget {
  const DailyNutrients({super.key});

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
                              "Daily\nNutrients",
                              false,
                              false,
                            ),
                            Text(
                              "Edit your macros and continue set up",
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
                                      const DailyNutrientsConti(),
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
                height: 40,
              ),
              Column(
                children: [
                  const Text(
                    "Calories",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      reuseableIcon(
                        FluentIcons.fire_24_regular,
                      ),
                      mainReuseableText(
                        "2467",
                        true,
                        false,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: LinearPercentIndicator(
                          width: 300,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 35.0,
                          percent: 0.75,
                          // ignore: deprecated_member_use
                          linearStrokeCap: LinearStrokeCap.butt,
                          progressColor: const Color(
                            0xFF0dc36c,
                          ),
                          backgroundColor: const Color(
                            0xFF151613,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 100,
                        ),
                        child: reuseableText(
                          "Min",
                        ),
                      ),
                      reuseableText(
                        "",
                      ),
                      reuseableText(
                        "Max",
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Divider(
                color: Color(0xFF474747),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Container(
                  padding: const EdgeInsets.all(
                    10,
                  ),
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 0.35,
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentIcons.book_exclamation_mark_24_regular,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Macros and Micros are recommendations.\nListen to your body and adjust your\nmacros and micros accordingly",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  mainReuseableText(
                    "Macros",
                    false,
                    false,
                  ),
                  reuseableText(
                    "Macros can be edited now or later",
                  ),
                  const MacrosComponent(
                    percent: 0.20,
                    text: "Carbs",
                    icon: FluentIcons.food_cake_20_regular,
                    mainText: "40g",
                  ),
                  const MacrosComponent(
                    mainText: "20g",
                    percent: 0.55,
                    text: "Protein",
                    icon: FluentIcons.food_fish_24_regular,
                  ),
                  const MacrosComponent(
                    mainText: "20%",
                    percent: 0.80,
                    text: "Fats",
                    icon: FluentIcons.drop_48_filled,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  mainReuseableText(
                    "Micros",
                    false,
                    false,
                  ),
                  reuseableText(
                    "Micros can be edited now or later",
                  ),
                  const MacrosComponent(
                    percent: 0.65,
                    text: "Vitamin A",
                    icon: FluentIcons.pill_28_filled,
                    mainText: "1.3mg",
                  ),
                  const MacrosComponent(
                    mainText: "18g",
                    percent: 0.35,
                    text: "Vitamin B",
                    icon: FluentIcons.pill_28_filled,
                  ),
                  const MacrosComponent(
                    mainText: "90mg",
                    percent: 0.55,
                    text: "Vitamin C",
                    icon: FluentIcons.pill_28_filled,
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
