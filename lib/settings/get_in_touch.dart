import 'package:fitness/components/get_in_touch_components.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    secondReuseableText(
                      "Settings",
                    ),
                    secondReuseableText(""),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 10,
                    ),
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color(
                        0xFF242424,
                      ),
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: Center(
                      child: reuseableText(
                        "Email",
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  mainReuseableText(
                    "Having Any",
                    false,
                    false,
                  ),
                  mainReuseableText(
                    "Issues?",
                    false,
                    false,
                  ),
                  reuseableText(
                    "Help us help more people",
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  secondReuseableText(
                    "FAQ",
                  ),
                  const GetInTouchComponents(
                    text: "What can you unlock?",
                  ),
                  const GetInTouchComponents(
                    text: "What If I choose no gender?",
                  ),
                  const GetInTouchComponents(
                    text: "The differences in set ups?",
                  ),
                  const GetInTouchComponents(
                    text: "How do avatars work?",
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                width: 250,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(
                    0xFF0b0b0b,
                  ),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        secondReuseableText(
                          "Type A Message",
                        ),
                        const Row(
                          children: [
                            Icon(
                              FluentIcons.pin_32_regular,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(
                FluentIcons.send_48_regular,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
