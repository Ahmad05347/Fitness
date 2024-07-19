import 'package:fitness/components/weeks_workout_components.dart';
import 'package:fitness/models/workout_models.dart';
import 'package:fitness/setup%20wordout/workout_widget.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/exercise_widget.dart';
import 'package:fitness/widgets/testing_widget.dart';
import 'package:fitness/widgets/workout_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage>
    with TickerProviderStateMixin {
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
      image: "assets/images/Ellipse 736.jpg",
      mainText: "Pull Up",
      workoutMain: "Leg/Back",
      requirments: "No Equipment",
    ),
  ];
  final List<String> workoutCategories = [
    "All",
    "Recent",
    "Liked",
    "Discover",
    "Create"
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 3,
      vsync: this,
    );

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText(
                                "${workoutMenu.length}", false, true),
                            mainReuseableText("Total Workout", false, false),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/tonkotsu.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(),
                child: TabBar(
                  controller: tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white,
                  dividerHeight: 1.6,
                  tabs: const [
                    Tab(text: "Track Now"),
                    Tab(text: "Exercises"),
                    Tab(text: "Routines"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 650,
                width: double.maxFinite,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              secondReuseableText("Complete Set Up:"),
                              const SizedBox(height: 10),
                              const WorkoutWidget(),
                              const SizedBox(height: 20),
                              secondReuseableText("Today's Workouts"),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 250,
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
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
                        ),
                      ],
                    ),
                    const SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ExerciseWidget(),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: workoutCategories.map((category) {
                                return Text(
                                  category,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: category == "All"
                                          ? Colors.green
                                          : Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          TestingWidget(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const WorkoutWidgetss(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
