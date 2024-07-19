import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/dietary_button_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/daily_nutrients.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/diet_popover.dart';

class DietaryPreferences extends StatefulWidget {
  const DietaryPreferences({super.key});

  @override
  State<DietaryPreferences> createState() => _DietaryPreferencesState();
}

class _DietaryPreferencesState extends State<DietaryPreferences> {
  Map<String, List<String>> selectedPreferences = {
    'Diet': [],
    'Allergy': [],
    'Cuisine': [],
    'Time': [],
    'Ingredients': [],
    'Cost': [],
    'Skills': [],
  };

  Future<void> savePreferenceToFirestore(
      String preferenceType, List<String> preferences) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userDoc = FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("meals")
          .doc("dietaryPreferences");

      await userDoc.set({
        preferenceType: preferences,
      }, SetOptions(merge: true));
    }
  }

  void showPopover({
    required BuildContext context,
    required Color color,
    required String preferenceType,
    required List<String> options,
  }) {
    showDialog<List<String>>(
      context: context,
      builder: (context) => DietPopover(
        color: color,
        options: options,
        selectedOptions: selectedPreferences[preferenceType] ?? [],
        onSelectionChanged: (selectedOptions) {
          setState(() {
            selectedPreferences[preferenceType] = selectedOptions;
          });
          savePreferenceToFirestore(preferenceType, selectedOptions);
        },
      ),
      barrierColor: Colors.black54,
    );
  }

  void removeSelectedOption(String preferenceType, String option) {
    setState(() {
      selectedPreferences[preferenceType]!.remove(option);
      savePreferenceToFirestore(
          preferenceType, selectedPreferences[preferenceType]!);
    });
  }

  Widget buildSelectedTags(String preferenceType, Color color) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: selectedPreferences[preferenceType]!.map((tag) {
        return Chip(
          label: Text(tag),
          backgroundColor: color,
          labelStyle: TextStyle(color: Colors.white),
          deleteIcon: Icon(Icons.close, color: Colors.white),
          onDeleted: () => removeSelectedOption(preferenceType, tag),
        );
      }).toList(),
    );
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
                  const SizedBox(height: 40),
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
                                "Dietary\nPreferences", false, false),
                            Text(
                              "Picky eater? Meet your best friend",
                              style: TextStyle(color: Colors.grey.shade600),
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
                                  builder: (context) => const DailyNutrients(),
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
              const SizedBox(height: 40),
              const SizedBox(
                height: 140,
                width: 140,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/tonkotsu.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: selectedPreferences.entries.map((entry) {
                    return buildSelectedTags(entry.key, _getColor(entry.key));
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                  color: const Color(0xFF131313),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DietaryButtonComponents(
                          onTap: () {
                            showPopover(
                              context: context,
                              color: const Color(0xFFff52d0),
                              preferenceType: 'Diet',
                              options: [
                                'Vegan',
                                'Vegetarian',
                                'Paleo',
                                'Keto',
                                'Gluten Free'
                              ],
                            );
                          },
                          color: const Color(0xFFff52d0),
                          text: "Diet",
                        ),
                        DietaryButtonComponents(
                          onTap: () {
                            showPopover(
                              context: context,
                              color: const Color(0xFFff5635),
                              preferenceType: 'Allergy',
                              options: [
                                'Dairy',
                                'Peanut',
                                'Tree Nut',
                                'Egg',
                                'Soy'
                              ],
                            );
                          },
                          color: const Color(0xFFff5635),
                          text: "Allergy",
                        ),
                        DietaryButtonComponents(
                          onTap: () {
                            showPopover(
                              context: context,
                              color: const Color(0xFF5a37ff),
                              preferenceType: 'Cuisine',
                              options: [
                                'Italian',
                                'Mexican',
                                'Indian',
                                'Chinese',
                                'Thai'
                              ],
                            );
                          },
                          color: const Color(0xFF5a37ff),
                          text: "Cuisine",
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DietaryButtonComponents(
                          onTap: () {
                            showPopover(
                              context: context,
                              color: const Color(0xFFff52d0),
                              preferenceType: 'Time',
                              options: [
                                'Breakfast',
                                'Lunch',
                                'Dinner',
                                'Snack'
                              ],
                            );
                          },
                          color: const Color(0xFFff52d0),
                          text: "Time",
                        ),
                        DietaryButtonComponents(
                          onTap: () {
                            showPopover(
                              context: context,
                              color: const Color(0xFF825af1),
                              preferenceType: 'Ingredients',
                              options: [
                                'Chicken',
                                'Beef',
                                'Fish',
                                'Vegetables',
                                'Fruits'
                              ],
                            );
                          },
                          color: const Color(0xFF825af1),
                          text: "Ingredients",
                        ),
                        DietaryButtonComponents(
                          onTap: () {
                            showPopover(
                              context: context,
                              color: const Color(0xFFed6cca),
                              preferenceType: 'Cost',
                              options: ['Low', 'Medium', 'High'],
                            );
                          },
                          color: const Color(0xFFed6cca),
                          text: "Cost",
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    DietaryButtonComponents(
                      onTap: () {
                        showPopover(
                          context: context,
                          color: const Color(0xFF0095ff),
                          preferenceType: 'Skills',
                          options: ['Beginner', 'Intermediate', 'Advanced'],
                        );
                      },
                      color: const Color(0xFF0095ff),
                      text: "Skills",
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

  Color _getColor(String preferenceType) {
    switch (preferenceType) {
      case 'Diet':
        return const Color(0xFFff52d0);
      case 'Allergy':
        return const Color(0xFFff5635);
      case 'Cuisine':
        return const Color(0xFF5a37ff);
      case 'Time':
        return const Color(0xFFff52d0);
      case 'Ingredients':
        return const Color(0xFF825af1);
      case 'Cost':
        return const Color(0xFFed6cca);
      case 'Skills':
        return const Color(0xFF0095ff);
      default:
        return Colors.grey;
    }
  }
}
