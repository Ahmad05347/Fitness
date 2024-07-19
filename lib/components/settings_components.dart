import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class SettingsComponents extends StatelessWidget {
  final Function()? onTap;
  final String mainText;
  final String secondText;
  final IconData icon;
  const SettingsComponents({
    super.key,
    required this.onTap,
    required this.mainText,
    required this.secondText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(
          10,
        ),
        padding: const EdgeInsets.only(
          left: 30,
          top: 10,
          bottom: 10,
        ),
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 23, 23, 21),
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.green,
              size: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                secondReuseableText(
                  mainText,
                ),
                reuseableText(
                  secondText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
