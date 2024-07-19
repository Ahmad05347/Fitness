import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPoints extends StatelessWidget {
  const EditPoints({super.key});

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
              const SizedBox(
                height: 20,
              ),
              reuseableText(
                "Reset",
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
                          "Daily\nNutrients",
                          false,
                          false,
                        ),
                        Text(
                          "Edit your macros and continue set up",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Apply Filters",
                          style: GoogleFonts.poppins(
                            color: const Color(
                              0xFF0eb969,
                            ),
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
            height: 40,
          ),
          const Divider(
            color: Color(0xFF474747),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SizedBox(
                width: 300,
                height: 300,
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
            ],
          ),
          Column(
            children: [
              simpleText(
                "Adjust Sliders",
              ),
              reuseableText(
                "Adjusting these sliders effects the chart above",
              ),
            ],
          ),
          const Column(
            children: [
              SliderWidget(
                firstText: "Low Fat",
                sliderText: "Moderate",
              ),
              SliderWidget(
                firstText: "Protein",
                sliderText: "Moderate",
              ),
              SliderWidget(
                firstText: "Fiber",
                sliderText: "Moderate",
              ),
              SliderWidget(
                firstText: "Low Toxins",
                sliderText: "Moderate",
              ),
              SliderWidget(
                firstText: "Health Level",
                sliderText: "Moderate",
              ),
              SliderWidget(
                firstText: "Low Fat",
                sliderText: "Moderate",
              ),
              SliderWidget(
                firstText: "Low Fat",
                sliderText: "Moderate",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
