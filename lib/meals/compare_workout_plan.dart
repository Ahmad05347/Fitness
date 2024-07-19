import 'package:fitness/components/compare_meals_list_comp.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/create_meals.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

class CompareMealsPlan extends StatelessWidget {
  const CompareMealsPlan({super.key});

  @override
  Widget build(BuildContext context) {
    double numberOfFeatures = 5;
    const ticks = [
      7,
      14,
      21,
      31,
    ];
    var features = [
      "AA",
      "BB",
      "CC",
      "DD",
      "EE",
      "FF",
      "GG",
      "HH",
    ];
    var data = [
      [
        10.0,
        20,
        28,
        5,
        16,
        15,
        17,
        6,
        8,
      ],
      [
        14.5,
        1,
        4,
        14,
        23,
        10,
        6,
        19,
        8,
      ]
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data = data
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();
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
                              "Compare\nMeal Plan",
                              false,
                              false,
                            ),
                            Text(
                              "Select meals to compare",
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
                                  builder: (context) => const CreateMeals(),
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
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 15,
                          bottom: 5,
                        ),
                        child: Image.asset(
                          "assets/images/Screenshot 2024-06-17 091451.png",
                          height: 450,
                          width: 450,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 250,
                        child: RadarChart(
                          outlineColor: Colors.grey.shade500,
                          reverseAxis: true,
                          ticks: ticks,
                          features: features,
                          data: data,
                          graphColors: const [
                            Color(
                              0xFF24be62,
                            ),
                            Colors.green,
                          ],
                        ),
                      ),
                    ],
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
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const CompareWorkoutListComp()
        ],
      ),
    );
  }
}
