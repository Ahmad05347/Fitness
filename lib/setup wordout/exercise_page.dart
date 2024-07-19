import 'package:fitness/complete/set_complete_page.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/exchange_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    double numberOfFeatures = 5;
    const ticks = [
      7,
      14,
      21,
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
              const SizedBox(
                height: 250,
                width: 250,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    "assets/images/istockphoto-491468764-612x612.jpg",
                  ),
                ),
              ),
              simpleText(
                "Weighted Pull Ups",
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Column(
                  children: [
                    reuseableText(
                        "Push-ups are a no-cost, effective exercise for building upper body and core strength, promoting cardiovascular health, and improving posture when executed with proper form. The pros include increased muscle tone and support for joint health, but improper technique or overtraining can lead to wrist and shoulder injuries. To maximize benefits and minimize risk, ensure correct alignment, and progressively challenge yourself within your fitness level.")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xFF474747),
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
                    text: "Exchange",
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ExchangeButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SetCompletePage(),
                        ),
                      );
                    },
                    text: "Update",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  reuseableText(
                    "Recommended Set",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Set",
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
                            "3",
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
                        "Reps",
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
                            "30",
                            false,
                            false,
                          ),
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
          const Divider(
            color: Color(0xFF474747),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              mainReuseableText(
                "Muscles",
                false,
                false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.square_rounded,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  secondReuseableText(
                    "Muscles Worked",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: RadarChart(
                  ticks: ticks,
                  features: features,
                  data: data,
                  graphColors: const [
                    Color(
                      0xFF25bf62,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              secondReuseableText(
                "Largest Weight",
              ),
              Container(
                height: 60,
                width: 200,
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
                    "236 kg",
                    false,
                    false,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              secondReuseableText(
                "Best Set",
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Set",
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
                              "3",
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
                          "Reps",
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
                              "30",
                              false,
                              false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 20,
                  bottom: 30,
                ),
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  color: const Color(
                    0xFF141414,
                  ),
                  borderRadius: BorderRadius.circular(
                    14,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Tutorial",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    reuseableText(
                      "How to do the workout",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 520,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/istockphoto-491468764-612x612.jpg",
                          ),
                          colorFilter: ColorFilter.linearToSrgbGamma(),
                          fit: BoxFit.fill,
                          opacity: 0.3,
                        ),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tap To Watch",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
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
