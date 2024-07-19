import 'package:fitness/components/expansion_tile_data_component.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ExpansionTileComponent extends StatelessWidget {
  final String mainHeading;
  final String mainSubheading;

  final String mainTitleText;

  const ExpansionTileComponent({
    super.key,
    required this.mainTitleText,
    required this.mainHeading,
    required this.mainSubheading,
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
            simpleText(
              "Carbohydrates",
            ),
            reuseableText(
              "Athletes/diabetics/ketogenic diets",
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                ExpansionTileDataComponent(
                  linearIndicatorText: "20g",
                  icon: FluentIcons.food_cake_12_regular,
                  text: "Simple Carbs",
                  percent: 0.37,
                ),
                ExpansionTileDataComponent(
                  linearIndicatorText: "5g",
                  icon: FluentIcons.food_apple_24_regular,
                  text: "Complex Carbs",
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
                  "Proteins",
                ),
                reuseableText(
                  "Bodybuilders/Athletes/Vegiterians",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "33g",
                  icon: FluentIcons.food_cake_12_regular,
                  text: "Essential Amino Acid",
                  percent: 0.40,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "12g",
                  icon: FluentIcons.food_egg_24_regular,
                  text: "Non Essential Amino Acid",
                  percent: 0.45,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "13g",
                  icon: FluentIcons.food_grains_24_regular,
                  text: "Conditional Amino Acid",
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
                  "Fats",
                ),
                reuseableText(
                  "Ketogenic diet/cardiovascular concerns",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "13g",
                  icon: FluentIcons.food_chicken_leg_16_filled,
                  text: "Saturated Fats",
                  percent: 0.40,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "13g",
                  icon: FluentIcons.food_apple_24_regular,
                  text: "UnSaturated Fats",
                  percent: 0.25,
                ),
                const ExpansionTileDataComponent(
                  linearIndicatorText: "33g",
                  icon: FluentIcons.food_pizza_24_regular,
                  text: "Trans Fats",
                  percent: 0.55,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            simpleText(
              "Fiber",
            ),
            reuseableText(
              "Digestive issues/weight management",
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                ExpansionTileDataComponent(
                  linearIndicatorText: "12g",
                  icon: FluentIcons.food_grains_24_regular,
                  text: "Soluble Fiber",
                  percent: 0.37,
                ),
                ExpansionTileDataComponent(
                  linearIndicatorText: "13g",
                  icon: FluentIcons.food_grains_24_regular,
                  text: "InSoluble Fiber",
                  percent: 0.45,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
