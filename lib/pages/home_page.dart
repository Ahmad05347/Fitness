import 'package:dots_indicator/dots_indicator.dart';
import 'package:fitness/components/home_page_components.dart';
import 'package:fitness/components/workout_page_components.dart';
import 'package:fitness/models/home_page_comp_models.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/workout_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List modelMenu = [
    HomePageCompModels(
      mainText: "Set Up\nNotifications",
      secondText: "Add friends/family",
      icon: FluentIcons.person_32_regular,
      itemCount: 1,
    ),
    HomePageCompModels(
      mainText: "Set Up\nRivals",
      secondText: "Add friends/family",
      icon: FluentIcons.person_32_regular,
      itemCount: 2,
    ),
    HomePageCompModels(
      mainText: "Set Up\nMeals Plan",
      secondText: "2000+ meals with analytics",
      icon: FluentIcons.food_grains_24_regular,
      itemCount: 3,
    ),
  ];

  int _currentPage = 0;

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
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText(
                              "0",
                              false,
                              true,
                            ),
                            mainReuseableText(
                              "Total Workouts",
                              false,
                              false,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/tonkotsu.jpg",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    secondReuseableText(
                      "Quick Access",
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(
                  0xFF474747,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: secondReuseableText(
                      "Complete Set Up:",
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 270,
                child: PageView.builder(
                  itemCount: modelMenu.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return HomePageComponents(
                      models: modelMenu[index],
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: DotsIndicator(
                  dotsCount: modelMenu.length,
                  position: _currentPage,
                  decorator: const DotsDecorator(
                    color: Colors.white,
                    activeColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Column(
            children: [
              WorkoutWidget(),
              WorkoutPageComponents(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
