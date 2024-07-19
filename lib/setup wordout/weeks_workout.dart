import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/complete/set_complete_page.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/weeks_workout_components.dart';
import 'package:fitness/models/workout_models.dart';
import 'package:fitness/setup%20wordout/exercise_page.dart';
import 'package:fitness/widgets/app_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class WeeksWorkout extends StatefulWidget {
  const WeeksWorkout({super.key});

  @override
  State<WeeksWorkout> createState() => _WeeksWorkoutState();
}

class _WeeksWorkoutState extends State<WeeksWorkout> {
  Future<List<WorkoutModels>> fetchWorkoutMenu() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot =
        await firestore.collection('workoutMenu').get();
    return querySnapshot.docs.map((doc) {
      var data = doc.data() as Map<String, dynamic>;
      return WorkoutModels(
        image: data['image'],
        mainText: data['mainText'],
        workoutMain: data['workoutMain'],
        requirments: data['requirments'],
      );
    }).toList();
  }

  late PageController _pageController;
  int selectedIndex = 0;

  final List<String> _daysOfWeek = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: FutureBuilder<List<WorkoutModels>>(
        future: fetchWorkoutMenu(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final workoutMenu = snapshot.data ?? [];

          return ListView(
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const AppBarComponents(),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mainReuseableText(
                                    "Weeks\nWorkout", false, false),
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
                                          const SetCompletePage(),
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
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                secondReuseableText("Verified"),
                                const Icon(
                                  Icons.verified_rounded,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                            reuseableText("Mr No Fat"),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.change_circle_rounded,
                              color: Colors.green,
                              size: 40,
                            ),
                            Icon(
                              FluentIcons.heart_48_filled,
                              color: Colors.green,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: Color(0xFF474747)),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _daysOfWeek.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          borderRadius: BorderRadius.circular(15),
                          autofocus: true,
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                              _pageController.jumpToPage(index);
                            });
                          },
                          child: AppButton(
                            isHeight: true,
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF00C853), Color(0xFF009624)],
                            ),
                            color: Colors.white,
                            text: _daysOfWeek[index],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      reuseableText("${workoutMenu.length} Exercises"),
                      const SizedBox(height: 40),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: workoutMenu.length,
                  itemBuilder: (context, index) {
                    return WeeksWorkoutComponents(
                      workoutModels: workoutMenu[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExercisePage(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
