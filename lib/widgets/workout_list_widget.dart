import 'package:fitness/components/weeks_workout_components.dart';
import 'package:fitness/models/workout_models.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> workoutCategories = [
  "All",
  "Recent",
  "Liked",
  "Discover",
  "Create"
];
final List<String> workoutPlans = [
  "Workout Plan 1",
  "Workout Plan 2",
  "Workout Plan 3"
];
List workoutMenu = [
  WorkoutModels(
    image: "assets/images/Ellipse 1.jpg",
    mainText: "Push Up",
    workoutMain: "Leg/Back",
    requirments: "No Equipment",
  ),
  WorkoutModels(
    image: "assets/images/Ellipse 736.jpg",
    mainText: "Pull Up",
    workoutMain: "Leg/Back",
    requirments: "No Equipment",
  ),
  WorkoutModels(
    image: "assets/images/Ellipse 778.jpg",
    mainText: "Planks",
    workoutMain: "Leg/Back",
    requirments: "No Equipment",
  ),
];

class WorkoutListWidget extends StatelessWidget {
  const WorkoutListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.only(
        left: 40,
        right: 20,
      ),
      title: secondReuseableText(
        "View All 2000+ Workout Plan",
      ),
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      controlAffinity: ListTileControlAffinity.platform,
      expandedAlignment: Alignment.center,
      children: [
        Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: workoutCategories.map((category) {
                return Text(
                  category,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: category == "All" ? Colors.green : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                itemCount: workoutMenu.length,
                itemBuilder: (context, index) {
                  return WeeksWorkoutComponents(
                    workoutModels: workoutMenu[index],
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
