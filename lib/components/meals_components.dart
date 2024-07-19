import 'package:fitness/models/meals_model.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class MealsComponents extends StatelessWidget {
  final Function()? onTap;
  final MealsModel mealsModel;
  const MealsComponents({
    super.key,
    this.onTap,
    required this.mealsModel,
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
          left: 10,
          right: 10,
        ),
        width: MediaQuery.of(context).size.width,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          color: const Color(
            0xFF141414,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 140,
              width: 140,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  mealsModel.image,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                secondReuseableText(
                  mealsModel.mainText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mealsModel.mealNum,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    reuseableText(
                      mealsModel.mealCal,
                    ),
                    Text(
                      mealsModel.healthScore,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
