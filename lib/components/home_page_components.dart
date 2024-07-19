import 'package:fitness/models/home_page_comp_models.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class HomePageComponents extends StatelessWidget {
  final Function()? onTap;
  final HomePageCompModels models;

  const HomePageComponents({
    super.key,
    this.onTap,
    required this.models,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(
          15,
        ),
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 30,
          right: 30,
        ),
        width: MediaQuery.of(context).size.width,
        height: 256,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          color: const Color(
            0xFF141414,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          18,
                        ),
                        color: const Color(
                          0xFF303030,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            models.icon,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          reuseableText(
                            models.secondText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                secondReuseableText(
                  "${models.itemCount}/3",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                mainReuseableText(
                  models.mainText,
                  false,
                  false,
                ),
              ],
            ),
            Row(
              children: [
                reuseableText(
                  "Track Meal Plans And/Or Workouts",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
