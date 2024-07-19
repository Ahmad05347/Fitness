import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/workout_components.dart';
import 'package:fitness/setup%20wordout/quads.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SelectRoutine extends StatelessWidget {
  const SelectRoutine({super.key});

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
                              "Select\nRoutine",
                              false,
                              false,
                            ),
                            Text(
                              "What muscles do you want to work",
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
                                  builder: (context) => const Quads(),
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
                  WorkoutComponents(
                    firstText: "Recommended",
                    secondText: "Based On Goal",
                    iconColor: Colors.white,
                    icon: Icons.sports,
                    bodyText:
                        "Based on all the information provided, we create the best workout to reach your goal",
                  ),
                  WorkoutComponents(
                    firstText: "Recommended",
                    secondText: "Workout Split",
                    iconColor: Colors.white,
                    icon: Icons.sports,
                    bodyText:
                        "Select a workout split that can be tailored around your goals",
                  ),
                  WorkoutComponents(
                    isBorder: true,
                    firstText: "Recommended",
                    secondText: "Based On Muscles",
                    iconColor: Colors.white,
                    icon: Icons.sports,
                    bodyText:
                        "Create a workout based on working specific muscles. You can be very specific if you want to define parts of a muscle",
                  ),
                  WorkoutComponents(
                    firstText: "Recommended",
                    secondText: "Custom",
                    iconColor: Colors.white,
                    icon: Icons.sports,
                    bodyText:
                        "Create a custom workout. Have nothing selected and create from scratch",
                  ),
                  SizedBox(
                    height: 40,
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
