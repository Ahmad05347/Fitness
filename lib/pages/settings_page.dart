import 'package:fitness/components/settings_components.dart';
import 'package:fitness/pages/payment_page.dart';
import 'package:fitness/settings/get_in_touch.dart';
import 'package:fitness/settings/rate_us.dart';
import 'package:fitness/settings/setup_alarm.dart';
import 'package:fitness/settings/setup_page.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000302,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    secondReuseableText(
                      "4589",
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                width: 140,
                height: 140,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/HD-wallpaper-gym-bodybuilding-gym-motivation-thumbnail.jpg",
                  ),
                ),
              ),
              simpleText(
                "Michaelsta",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Free Plan",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.play_circle_rounded,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const Column(
            children: [
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SettingsComponents(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SetupPage(),
                    ),
                  );
                },
                mainText: "Set Up",
                secondText: "Change diets, measurements etc",
                icon: FluentIcons.person_12_filled,
              ),
              SettingsComponents(
                onTap: () {},
                mainText: "Calender",
                secondText: "Change diets, measurements etc",
                icon: FluentIcons.calendar_32_regular,
              ),
              SettingsComponents(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SetupAlarm(),
                    ),
                  );
                },
                mainText: "Alarm",
                secondText: "Change diets, measurements etc",
                icon: FluentIcons.clock_alarm_32_regular,
              ),
              SettingsComponents(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PaymentPage(),
                    ),
                  );
                },
                mainText: "Privacy",
                secondText: "Change diets, measurements etc",
                icon: FluentIcons.lock_closed_48_regular,
              ),
              SettingsComponents(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GetInTouch(),
                    ),
                  );
                },
                mainText: "Get In Touch",
                secondText: "Change diets, measurements etc",
                icon: FluentIcons.mail_32_regular,
              ),
              SettingsComponents(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RateUs(),
                    ),
                  );
                },
                mainText: "Rate Us",
                secondText: "We appreciate your support <3",
                icon: FluentIcons.rating_mature_20_filled,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
