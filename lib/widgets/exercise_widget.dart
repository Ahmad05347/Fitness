import 'package:fitness/components/create_meals_icon_components.dart';
import 'package:fitness/setup%20wordout/workout_exercise.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/workout_list_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  const ExerciseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        buildTextField(
          "Search",
          "search",
          FluentIcons.search_32_regular,
          "Search",
          false,
          (value) {},
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 120,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: const Color(
              0xFF282a29,
            ),
          ),
          child: const Center(
            child: Text(
              "Tags & Filters",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            secondReuseableText(
              "Explore Categories: ",
            ),
            const Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CreateMealsIconComponents(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const WorkoutExercise(),
                          ),
                        );
                      },
                      icon: FluentIcons.person_standing_16_filled,
                    ),
                    const Text(
                      "Full Body",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    CreateMealsIconComponents(
                      icon: FluentIcons.person_heart_24_filled,
                    ),
                    Text(
                      "Recovery",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    CreateMealsIconComponents(
                      icon: FluentIcons.person_running_20_filled,
                    ),
                    Text(
                      "Cardio",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CreateMealsIconComponents(
                      icon: FluentIcons.person_alert_off_32_regular,
                    ),
                    Text(
                      "Low Carbs",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CreateMealsIconComponents(
                      icon: FluentIcons.food_48_regular,
                    ),
                    Text(
                      "Restaurant",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CreateMealsIconComponents(
                      icon: FluentIcons.currency_dollar_euro_24_regular,
                    ),
                    Text(
                      "Affordable",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Column(
              children: [
                WorkoutListWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
