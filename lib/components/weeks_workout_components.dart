import 'package:fitness/models/workout_models.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class WeeksWorkoutComponents extends StatelessWidget {
  final Function()? onTap;
  final WorkoutModels workoutModels;
  const WeeksWorkoutComponents({
    super.key,
    this.onTap,
    required this.workoutModels,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 5,
          bottom: 5,
        ),
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 10,
          right: 10,
        ),
        width: MediaQuery.of(context).size.width,
        height: 150,
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
                  workoutModels.image,
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
                  workoutModels.mainText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reuseableText(
                      workoutModels.workoutMain,
                    ),
                    Text(
                      workoutModels.requirments,
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
