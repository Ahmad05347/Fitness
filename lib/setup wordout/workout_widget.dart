import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class WorkoutWidgetss extends StatelessWidget {
  const WorkoutWidgetss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: ListView(
        children: [
          Column(
            children: [
              const AppBarComponents(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            secondReuseableText("Verified"),
                            const Icon(
                              Icons.verified_rounded,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        reuseableText("Mr No Fat"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.change_circle_rounded,
                          color: Colors.green,
                          size: 40,
                        ),
                        Icon(
                          FluentIcons.heart_48_filled,
                          color: Colors.green,
                          size: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.7,
                color: Colors.green,
              )
            ],
          ),
        ],
      ),
    );
  }
}
