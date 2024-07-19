import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/demo/demo_components.dart';
import 'package:fitness/meals/how_many_meals.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class DailyNutrientsConti extends StatefulWidget {
  const DailyNutrientsConti({super.key});

  @override
  State<DailyNutrientsConti> createState() => _DailyNutrientsContiState();
}

class _DailyNutrientsContiState extends State<DailyNutrientsConti> {
  final List<String> selectedMacros = [];
  final List<String> selectedMicros = [];

  Future<void> saveSelectionToFirestore() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .collection("dailyNutrients")
            .doc("details")
            .set({
          'selectedMacros': selectedMacros,
          "selectedMicros": selectedMicros,
        }, SetOptions(merge: true));
      }
    } catch (e) {
      print('Error saving selection: $e');
    }
  }

  void continueSetup() {
    if (selectedMacros.length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select at least 3 macro components.'),
        ),
      );
    } else {
      saveSelectionToFirestore();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HowManyMeals(),
        ),
      );
    }
  }

  void handleSelection(String macro, bool isSelected) {
    setState(() {
      if (isSelected) {
        selectedMacros.add(macro);
      } else {
        selectedMacros.remove(macro);
      }
    });
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
                            mainReuseableText("Daily\nNutrients", false, false),
                            Text(
                              "Edit your macros and continue set up",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: MyButton(
                            isHeight: true,
                            onTap: continueSetup,
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
              const Divider(color: Color(0xFF474747)),
              const SizedBox(height: 20),
              Column(
                children: [
                  mainReuseableText("Macros", false, false),
                  const SizedBox(height: 10),
                  reuseableText("Select at least 3 Macros"),
                  const SizedBox(height: 30),
                  secondReuseableText("Basic:"),
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF151513),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        DemoComponents(
                          text: "Proteins",
                          isColor: selectedMacros.contains("Proteins"),
                          onTap: (isSelected) =>
                              handleSelection("Proteins", isSelected),
                        ),
                        const SizedBox(width: 5),
                        DemoComponents(
                          text: "Carbohydrates",
                          isColor: selectedMacros.contains("Carbohydrates"),
                          onTap: (isSelected) =>
                              handleSelection("Carbohydrates", isSelected),
                        ),
                        const SizedBox(width: 5),
                        DemoComponents(
                          text: "Fats",
                          isColor: selectedMacros.contains("Fats"),
                          onTap: (isSelected) =>
                              handleSelection("Fats", isSelected),
                        ),
                      ],
                    ),
                  ),
                  secondReuseableText("In-depth:"),
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 215,
                    decoration: BoxDecoration(
                      color: const Color(0xFF151513),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            DemoComponents(
                              text: "Complete Proteins",
                              isColor:
                                  selectedMacros.contains("Complete Proteins"),
                              onTap: (isSelected) => handleSelection(
                                  "Complete Proteins", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Saturated Fats",
                              isColor:
                                  selectedMacros.contains("Saturated Fats"),
                              onTap: (isSelected) =>
                                  handleSelection("Saturated Fats", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Complex Carbohydrates",
                              isColor: selectedMacros
                                  .contains("Complex Carbohydrates"),
                              onTap: (isSelected) => handleSelection(
                                  "Complex Carbohydrates", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Trans Fats",
                              isColor: selectedMacros.contains("Trans Fats"),
                              onTap: (isSelected) =>
                                  handleSelection("Trans Fats", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Incomplete Proteins",
                              isColor: selectedMacros
                                  .contains("Incomplete Proteins"),
                              onTap: (isSelected) => handleSelection(
                                  "Incomplete Proteins", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Unsaturated Fats",
                              isColor:
                                  selectedMacros.contains("Unsaturated Fats"),
                              onTap: (isSelected) => handleSelection(
                                  "Unsaturated Fats", isSelected),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  mainReuseableText("Micros", false, false),
                  const SizedBox(height: 10),
                  reuseableText("Select at least 3 Micros"),
                  const SizedBox(height: 30),
                  secondReuseableText("Vitamins:"),
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 330,
                    decoration: BoxDecoration(
                      color: const Color(0xFF151513),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Vitamin A",
                              isColor: selectedMacros.contains("Vitamin A"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin A", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin B1(Thiamine)",
                              isColor: selectedMacros
                                  .contains("Vitamin B1(Thiamine)"),
                              onTap: (isSelected) => handleSelection(
                                  "Vitamin B1(Thiamine)", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Vitamin B2(Riboflavin)",
                              isColor: selectedMacros
                                  .contains("Vitamin B2(Riboflavin)"),
                              onTap: (isSelected) => handleSelection(
                                  "Vitamin B2(Riboflavin)", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin B3(Niacin)",
                              isColor:
                                  selectedMacros.contains("Vitamin B3(Niacin)"),
                              onTap: (isSelected) => handleSelection(
                                  "Vitamin B3(Niacin)", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Vitamin B5(Pantothenic Acid)",
                              isColor: selectedMacros
                                  .contains("Vitamin B5(Pantothenic Acid)"),
                              onTap: (isSelected) => handleSelection(
                                  "Vitamin B5(Pantothenic Acid)", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin B6",
                              isColor: selectedMacros.contains("Vitamin B6"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin B6", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Vitamin B7(Biotin)",
                              isColor:
                                  selectedMacros.contains("Vitamin B7(Biotin)"),
                              onTap: (isSelected) => handleSelection(
                                  "Vitamin B7(Biotin)", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin B9(Folate)",
                              isColor:
                                  selectedMacros.contains("Vitamin B9(Folate)"),
                              onTap: (isSelected) => handleSelection(
                                  "Vitamin B9(Folate)", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Vitamin B12",
                              isColor: selectedMacros.contains("Vitamin B12"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin B12", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin C",
                              isColor: selectedMacros.contains("Vitamin C"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin C", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Vitamin D",
                              isColor: selectedMacros.contains("Vitamin D"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin D", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin E",
                              isColor: selectedMacros.contains("Vitamin E"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin E", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin K",
                              isColor: selectedMacros.contains("Vitamin K"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin K", isSelected),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  secondReuseableText("Minerals:"),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      color: const Color(0xFF151513),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Calcium",
                              isColor: selectedMacros.contains("Calcium"),
                              onTap: (isSelected) =>
                                  handleSelection("Calcium", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Iron",
                              isColor: selectedMacros.contains("Iron"),
                              onTap: (isSelected) =>
                                  handleSelection("Iron", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Magnesium",
                              isColor: selectedMacros.contains("Magnesium"),
                              onTap: (isSelected) =>
                                  handleSelection("Magnesium", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Phosphorus",
                              isColor: selectedMacros.contains("Phosphorus"),
                              onTap: (isSelected) =>
                                  handleSelection("Phosphorus", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Sodium",
                              isColor: selectedMacros.contains("Sodium"),
                              onTap: (isSelected) =>
                                  handleSelection("Sodium", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Copper",
                              isColor: selectedMacros.contains("Copper"),
                              onTap: (isSelected) =>
                                  handleSelection("Copper", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Zinc",
                              isColor: selectedMacros.contains("Zinc"),
                              onTap: (isSelected) =>
                                  handleSelection("Zinc", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Potassium",
                              isColor: selectedMacros.contains("Potassium"),
                              onTap: (isSelected) =>
                                  handleSelection("Potassium", isSelected),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DemoComponents(
                              text: "Magnesium",
                              isColor: selectedMacros.contains("Magnesium"),
                              onTap: (isSelected) =>
                                  handleSelection("Magnesium", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Vitamin K",
                              isColor: selectedMacros.contains("Vitamin K"),
                              onTap: (isSelected) =>
                                  handleSelection("Vitamin K", isSelected),
                            ),
                            const SizedBox(width: 5),
                            DemoComponents(
                              text: "Selenium",
                              isColor: selectedMacros.contains("Selenium"),
                              onTap: (isSelected) =>
                                  handleSelection("Selenium", isSelected),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              secondReuseableText("Trace Elements:"),
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF151513),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    DemoComponents(
                      text: "Iodine",
                      isColor: selectedMacros.contains("Iodine"),
                      onTap: (isSelected) =>
                          handleSelection("Iodine", isSelected),
                    ),
                    const SizedBox(width: 5),
                    DemoComponents(
                      text: "Fluoride",
                      isColor: selectedMacros.contains("Fluoride"),
                      onTap: (isSelected) =>
                          handleSelection("Fluoride", isSelected),
                    ),
                    const SizedBox(width: 5),
                    DemoComponents(
                      text: "Chromium",
                      isColor: selectedMacros.contains("Chromium"),
                      onTap: (isSelected) =>
                          handleSelection("Chromium", isSelected),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
