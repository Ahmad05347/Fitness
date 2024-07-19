import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CompareMealsComponents extends StatelessWidget {
  final Map<String, dynamic> mealPlan;
  final Function()? onTap;

  const CompareMealsComponents({
    super.key,
    required this.mealPlan,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF141414),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFF303030),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(FluentIcons.person_48_filled,
                              color: Colors.green),
                          const SizedBox(width: 20),
                          reuseableText("${mealPlan['users']} users"),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "${mealPlan['days']} Days",
                  style: const TextStyle(
                    color: Color(0xFF848484),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                mainReuseableText(mealPlan['title'], false, true),
              ],
            ),
            Row(
              children: [
                reuseableText(mealPlan['description']),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
