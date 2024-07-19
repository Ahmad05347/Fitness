import 'package:fitness/components/weekly_splits_components.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class WeeklySplitsWorkoutComponent extends StatelessWidget {
  const WeeklySplitsWorkoutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        25,
      ),
      width: MediaQuery.of(context).size.width,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: const Color(
          0xFF141414,
        ),
      ),
      child: const Column(
        children: [
          WeeklySplitsComponents(
            firstText: "Muscle Growth",
            secondText: "Upper Lower",
            iconColor: Colors.white,
            icon: FluentIcons.sport_american_football_24_regular,
            bodyText: "Pros:",
            bodyMain:
                "Targets all muscle groups each session, typically done three times a week",
            bodySecondMain: "Cons:",
            secondBody:
                "Targets all muscle groups each session, typically done three times a week",
          ),
        ],
      ),
    );
  }
}
