import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/slidable_row.dart';
import 'package:fitness/components/weekly_splits_workout_component.dart';
import 'package:fitness/setup%20wordout/weeks_workout.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SelectWeeklySplits extends StatelessWidget {
  const SelectWeeklySplits({super.key});

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
                              "Select\nWeekly Splits",
                              false,
                              false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Select workout split or create custom workout",
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
                                  builder: (context) => const WeeksWorkout(),
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
                color: Color(
                  0xFF474747,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SlidableRow(),
                  ],
                ),
              ),
            ],
          ),
          const Column(
            children: [
              WeeklySplitsWorkoutComponent(),
              WeeklySplitsWorkoutComponent(),
              WeeklySplitsWorkoutComponent(),
            ],
          ),
        ],
      ),
    );
  }
}
