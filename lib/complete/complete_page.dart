import 'package:fitness/components/my_button.dart';
import 'package:fitness/setup%20wordout/select_equipment.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Lottie.asset(
              "assets/lottie_animations/Animation_-_1718464551516.json",
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  secondReuseableText(
                    "Diet Plan",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  mainReuseableText(
                    "Completed",
                    false,
                    false,
                  ),
                ],
              ),
            ],
          ),
          MyButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SelectEquipment(),
                ),
              );
            },
            text: "Continue",
            isColor: true,
          ),
        ],
      ),
    );
  }
}
