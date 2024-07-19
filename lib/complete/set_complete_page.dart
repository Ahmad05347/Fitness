import 'package:fitness/components/my_bottom_nav_bar.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SetCompletePage extends StatelessWidget {
  const SetCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.home,
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
                  builder: (context) => const MyBottomNavBar(),
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
