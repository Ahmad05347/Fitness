import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/edit_status_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/edit/edit_tags.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class EditMacros extends StatelessWidget {
  const EditMacros({super.key});

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
                    height: 40,
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
                              "Edit\nMacros",
                              false,
                              false,
                            ),
                            Text(
                              "Edit the macros of this meal",
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
                                  builder: (context) => const EditTags(),
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
              const Divider(
                color: Color(
                  0xFF474747,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Essential Amino Acid",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "Non-Essential Amino Acid",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  reuseableText(
                    "Edit range of Macros",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Min",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            14,
                          ),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        child: Center(
                          child: mainReuseableText(
                            "15g",
                            false,
                            false,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Max",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            14,
                          ),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        child: Center(
                          child: mainReuseableText(
                            "30g",
                            false,
                            false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  secondReuseableText(
                    "Proteins",
                  ),
                  reuseableText(
                    "Bodybuilders/Athletes/Vegiterians",
                  ),
                  const EditStatusBarComponents(
                    text: "Essential",
                    icon: FluentIcons.food_20_regular,
                    percent: 0.87,
                    mainText: "33g",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const EditStatusBarComponents(
                    text: "Non Essential",
                    icon: FluentIcons.food_20_regular,
                    percent: 0.67,
                    mainText: "12g",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const EditStatusBarComponents(
                    text: "Conditional",
                    icon: FluentIcons.food_20_regular,
                    percent: 0.47,
                    mainText: "13g",
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
