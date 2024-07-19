import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/payment_text_widget.dart';
import 'package:flutter/material.dart';

class PaymentPageSlides extends StatelessWidget {
  const PaymentPageSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                simpleText(
                  "Premium Access",
                ),
                reuseableText(
                  "\$24 Quarterly",
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  width: 317,
                  height: 238,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/Rectangle 12664.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 30,
          ),
          child: Column(
            children: [
              PaymentTextWidget(
                text: "In-Depth Analytics and Insights",
              ),
              PaymentTextWidget(
                text: "Entire Meal Plan Library (2000+ Meals)",
              ),
              PaymentTextWidget(
                text: "Entire Workout Library (2000+ Workouts)",
              ),
              PaymentTextWidget(
                text: "Personalized Notifications",
              ),
              PaymentTextWidget(
                text: "Multiple Accountability Partners (5+ People)",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
