import 'package:fitness/components/social_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/social_widget.dart';
import 'package:flutter/material.dart';

class RivalsPage extends StatelessWidget {
  const RivalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF000000,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  14,
                ),
                bottomRight: Radius.circular(
                  14,
                ),
              ),
              color: Color(
                0xFF046029,
              ),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          secondReuseableText(
                            "",
                          ),
                          secondReuseableText(
                            "Hotdogmen",
                          ),
                          const Icon(
                            Icons.notifications_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              secondReuseableText(
                                "Earned this week",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              mainReuseableText(
                                "22,000XP",
                                false,
                                false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            28,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "View Charts",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            28,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Track Workout",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    secondReuseableText(
                      "Members",
                    ),
                    reuseableText(
                      "10 Members",
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              SocialButton(
                onTap: () {},
                image:
                    "assets/images/HD-wallpaper-gym-bodybuilding-gym-motivation-thumbnail copy.jpg",
              ),
              SocialButton(
                onTap: () {},
                image:
                    "assets/images/HD-wallpaper-gym-bodybuilding-gym-motivation-thumbnail.jpg",
              ),
              SocialButton(
                onTap: () {},
                image: "assets/images/istockphoto-491468764-612x612.jpg",
              ),
              SocialButton(
                onTap: () {},
                image: "assets/images/tonkotsu copy.jpg",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              secondReuseableText(
                "Personal",
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialWidget(),
                    SocialWidget(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
