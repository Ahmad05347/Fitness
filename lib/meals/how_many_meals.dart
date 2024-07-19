import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/meals_per_day.dart';
import 'package:fitness/meals/weeks_meal_plan.dart';
import 'package:fitness/widgets/app_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/how_many_meals_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HowManyMeals extends StatefulWidget {
  const HowManyMeals({super.key});

  @override
  State<HowManyMeals> createState() => _HowManyMealsState();
}

class _HowManyMealsState extends State<HowManyMeals> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
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
                  const SizedBox(
                    height: 20,
                  ),
                  const AppBarComponents(),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText(
                              "How Many\nMeals?",
                              false,
                              false,
                            ),
                            Text(
                              "Select how many meals you want to eat per day",
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
                                  builder: (context) => const WeeksMealPlan(),
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
                height: 60,
              ),
              const Divider(
                color: Color(0xFF474747),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white,
                          width: 0.35,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            FluentIcons.book_exclamation_mark_24_regular,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Number of meals can vary from people.\nListen to your body and adjust\naccordingly  ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  secondReuseableText(
                    "Number of meals",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              FittedBox(
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        autofocus: true,
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            _pageController.jumpToPage(index);
                          });
                        },
                        child: AppButton(
                          backgroundColor: _selectedIndex == index
                              ? Colors.green
                              : const Color(0xFF141414),
                          color: Colors.white,
                          text: (index + 1).toString(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xFF151513),
                ),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return HowManyMealsWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MealsPerDay(),
                          ),
                        );
                      },
                      mealText: "${index + 1} Meals",
                      image: "assets/images/tonkotsu copy.jpg",
                      consText:
                          "Nutrient deficiencies,\nmetabolic slowdown,\ndisordered eating",
                      prosText: "Weight loss, insulin\nsensitivity, longevity",
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
