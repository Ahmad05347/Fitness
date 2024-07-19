import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/meals_component.dart';
import 'package:fitness/components/meals_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/compare_workout_plan.dart';
import 'package:fitness/models/food_models.dart';
import 'package:fitness/models/meals_model.dart';
import 'package:fitness/widgets/app_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class WeeksMealPlan extends StatefulWidget {
  const WeeksMealPlan({super.key});

  @override
  State<WeeksMealPlan> createState() => _WeeksMealPlanState();
}

class _WeeksMealPlanState extends State<WeeksMealPlan> {
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

  List<MealsModel> mealsMenu = [];
  List<FoodModels> foodMenu = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    fetchMealsData();
    fetchFoodData();
  }

  Future<void> fetchMealsData() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await firestore.collection('meals').get();
    setState(() {
      mealsMenu = querySnapshot.docs.map((doc) {
        return MealsModel(
          image: doc['picture'],
          mainText: doc['mainText'],
          mealNum: doc['mealNum'],
          mealCal: doc['mealCal'],
          healthScore: doc['healthScore'],
        );
      }).toList();
    });
  }

  Future<void> fetchFoodData() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await firestore.collection('food').get();
    setState(() {
      foodMenu = querySnapshot.docs.map((doc) {
        return FoodModels(
          image: doc['picture'],
          mainText: doc['mainText'],
          description: doc['description'],
        );
      }).toList();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  const AppBarComponents(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText("Weeks\nMeal Plan", false, false),
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
                                      const CompareMealsPlan(),
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
                            const Icon(Icons.verified_rounded,
                                color: Colors.blue),
                          ],
                        ),
                        reuseableText("Mr No Fat"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.change_circle_rounded,
                            color: Colors.green, size: 40),
                        Icon(FluentIcons.heart_48_filled,
                            color: Colors.green, size: 40),
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
                    Icon(Icons.add_circle, color: Colors.green, size: 50),
                  ],
                ),
              ),
              Column(
                children: [
                  reuseableText("${mealsMenu.length} Meals"),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      itemCount: mealsMenu.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return MealsComponents(
                          mealsModel: mealsMenu[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MealsComponent(
                                  foodModels: foodMenu[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
