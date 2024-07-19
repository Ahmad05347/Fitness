import 'package:fitness/widgets/common_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class SetupAlarm extends StatelessWidget {
  const SetupAlarm({super.key});

  void toggleSwitch(bool value) {}

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText(
                              "Set Up\nAlarm",
                              false,
                              false,
                            ),
                            Text(
                              "Select the time & day you want the alarm to ring",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Save",
                              style: TextStyle(
                                color: Color(
                                  0xFF3cff00,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "05 : 01",
                        style: TextStyle(
                          color: Color(
                            0xFF848484,
                          ),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mainReuseableText(
                        "06 : 02",
                        false,
                        false,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "07 : 03",
                        style: TextStyle(
                          color: Color(
                            0xFF848484,
                          ),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    reuseableText(
                      "Settings",
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFF474747),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FluentIcons.movies_and_tv_24_regular,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        secondReuseableText(
                          "Select Days",
                        )
                      ],
                    ),
                    Row(
                      children: [
                        reuseableText(
                          "All",
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(
                            0xFF848484,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FluentIcons.movies_and_tv_24_regular,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        secondReuseableText(
                          "Repeat",
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          value: isSwitched,
                          onChanged: toggleSwitch,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FluentIcons.movies_and_tv_24_regular,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        secondReuseableText(
                          "Sounds",
                        )
                      ],
                    ),
                    Row(
                      children: [
                        reuseableText(
                          "All",
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(
                            0xFF848484,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
