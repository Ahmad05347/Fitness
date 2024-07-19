import 'package:fitness/components/create_meals_icon_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/edit/edit_macros.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CreateMeals extends StatelessWidget {
  const CreateMeals({super.key});

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
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: MyButton(
                            isHeight: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditMacros(),
                                ),
                              );
                            },
                            text: "Continue",
                            isTrue: true,
                          ),
                        ),
                        mainReuseableText(
                          "Search Over\n2000+ meals",
                          false,
                          false,
                        ),
                        Text(
                          "Can’t find something? Add tags & filters",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
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
                height: 15,
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
                height: 10,
              ),
            ],
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CreateMealsIconComponents(
                        icon: Icons.star_rounded,
                      ),
                      Text(
                        "Best Overall",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CreateMealsIconComponents(
                        icon: FluentIcons.heart_pulse_32_regular,
                      ),
                      Text(
                        "Low Toxins",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CreateMealsIconComponents(
                        icon: FluentIcons.food_fish_24_regular,
                      ),
                      Text(
                        "Best Overall",
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
                        icon: FluentIcons.food_apple_24_regular,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: const Color(
                  0xFF191919,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    secondReuseableText(
                      "View All 2000+ Meal Plans",
                    ),
                    const Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 35,
                      color: Colors.white,
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
