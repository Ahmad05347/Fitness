import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        color: const Color(
          0xFF181818,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/tonkotsu copy.jpg",
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  secondReuseableText(
                    "Your",
                  ),
                  reuseableText(
                    "Position",
                  ),
                ],
              ),
            ],
          ),
          mainReuseableText(
            "8",
            true,
            false,
          ),
        ],
      ),
    );
  }
}
