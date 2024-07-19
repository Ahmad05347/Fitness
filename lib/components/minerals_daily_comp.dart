import 'package:fitness/components/expansion_tile_data_component.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MineralsDailyComp extends StatelessWidget {
  final String mainHeading;
  final String mainSubheading;

  final String mainTitleText;
  const MineralsDailyComp({
    super.key,
    required this.mainHeading,
    required this.mainSubheading,
    required this.mainTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        mainTitleText,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      controlAffinity: ListTileControlAffinity.platform,
      expandedAlignment: Alignment.center,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            mainReuseableText(
              mainHeading,
              false,
              false,
            ),
            const SizedBox(
              height: 5,
            ),
            reuseableText(
              mainSubheading,
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                simpleText(
                  "Major Minerals",
                ),
                reuseableText(
                  "Fat soluble vitamins",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "33mg",
                  icon: FluentIcons.food_cake_12_regular,
                  text: "Calcium",
                  percent: 0.40,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "12mg",
                  icon: FluentIcons.food_egg_24_regular,
                  text: "Magnesium",
                  percent: 0.45,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "31mg",
                  icon: FluentIcons.food_grains_24_regular,
                  text: "Potassium",
                  percent: 0.45,
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                simpleText(
                  "Trace Minerals",
                ),
                reuseableText(
                  "Water soluble vitamins",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "20mg",
                  icon: FluentIcons.food_cake_12_regular,
                  text: "Iron",
                  percent: 0.37,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "33g",
                  icon: FluentIcons.food_apple_24_regular,
                  text: "Zinc",
                  percent: 0.45,
                ),
              ],
            ),
            const Column(
              children: [
                ExpansionTileDataComponent(
                  linearIndicatorText: "13mg",
                  icon: FluentIcons.food_cake_12_regular,
                  text: "Iodine",
                  percent: 0.37,
                ),
                ExpansionTileDataComponent(
                  linearIndicatorText: "18mg",
                  icon: FluentIcons.food_apple_24_regular,
                  text: "Selenium",
                  percent: 0.45,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }
}
