import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/exchange_button.dart';
import 'package:fitness/components/expansion_tile.dart';
import 'package:fitness/components/micros_daily_limit_comp.dart';
import 'package:fitness/components/minerals_daily_comp.dart';
import 'package:fitness/models/food_models.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MealsComponent extends StatelessWidget {
  final FoodModels foodModels;
  const MealsComponent({super.key, required this.foodModels});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: ListView(
        children: [
          const Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  AppBarComponents(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    foodModels.image,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Custom Meal #${foodModels.mainText}",
                          style: const TextStyle(
                            color: Color(
                              0xFF676767,
                            ),
                            fontSize: 25,
                          ),
                        ),
                        const Icon(
                          FluentIcons.clock_48_regular,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          foodModels.description,
                          style: const TextStyle(
                            color: Color(
                              0xFF676767,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExchangeButton(
                    text: "Compare",
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ExchangeButton(
                    onTap: () {},
                    text: "Add To Meal",
                    isColor: true,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            foodModels.image,
                          ),
                        ),
                      ),
                      const Text(
                        "0g",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Calories",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/tonkotsu.jpg",
                          ),
                        ),
                      ),
                      Text(
                        "0g",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Calories",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/tonkotsu.jpg",
                          ),
                        ),
                      ),
                      Text(
                        "0g",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Calories",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/tonkotsu.jpg",
                          ),
                        ),
                      ),
                      Text(
                        "0g",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Calories",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ExpansionTileComponent(
            mainTitleText: "Macros Daily Limit",
            mainHeading: "Total Macros",
            mainSubheading: "Macros can be edited now or later",
          ),
          const MicrosDailyLimitComp(
            mainHeading: "Total Micros",
            mainSubheading: "Micros can be edited now or later on",
            mainTitleText: "Micros Daily Limit",
          ),
          const MineralsDailyComp(
            mainTitleText: "Minerals Daily Limit",
            mainHeading: "Total Minerals",
            mainSubheading: "Macros can be edited now or later",
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
