import 'package:fitness/components/macros_component.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/workout_page_components.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/workout_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> with TickerProviderStateMixin {
  int qualityCount = 140;

  void decrementQuality() {
    setState(() {
      qualityCount = (qualityCount - 10).clamp(0, 1000);
    });
  }

  void incrementQuality() {
    setState(() {
      qualityCount = (qualityCount + 10).clamp(0, 1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 2,
      vsync: this,
    );
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
                              "0",
                              false,
                              true,
                            ),
                            mainReuseableText(
                              "Tracked Meals",
                              false,
                              false,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/tonkotsu.jpg",
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: TabBar(
                  controller: tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white,
                  dividerHeight: 1.6,
                  tabs: const [
                    Tab(text: "Track Now"),
                    Tab(text: "Routines"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: 1355,
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: decrementQuality,
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        mainReuseableText(
                          qualityCount.toString(),
                          true,
                          false,
                        ),
                        GestureDetector(
                          onTap: incrementQuality,
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    secondReuseableText(
                      "Kcal",
                    ),
                    const Text(
                      "Calories Left",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LinearPercentIndicator(
                              width: 300,

                              lineHeight: 30.0,
                              percent: qualityCount / 1000.0,
                              // ignore: deprecated_member_use
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: const Color(
                                0xFF0dc36c,
                              ),
                              backgroundColor: const Color(
                                0xFF656565,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 60,
                            right: 60,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              reuseableText(
                                "Min",
                              ),
                              reuseableText(
                                "Max",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        MyButton(
                          onTap: () {},
                          text: "Track Meals Now",
                          isHeight: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Color(0xFF474747),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 0.35,
                          ),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              FluentIcons.book_exclamation_mark_24_regular,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Macros and Micros are recommendations.\nListen to your body and adjust your\nmacros and micros accordingly",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        mainReuseableText(
                          "Macros",
                          false,
                          false,
                        ),
                        reuseableText(
                          "Macros can be edited now or later",
                        ),
                        const MacrosComponent(
                          percent: 0.20,
                          text: "Carbs",
                          icon: FluentIcons.food_cake_20_regular,
                          mainText: "40g",
                          isColor: true,
                        ),
                        const MacrosComponent(
                          mainText: "20g",
                          percent: 0.55,
                          text: "Protein",
                          icon: FluentIcons.food_fish_24_regular,
                          isColor: true,
                        ),
                        const MacrosComponent(
                          mainText: "20%",
                          percent: 0.80,
                          text: "Fats",
                          icon: FluentIcons.drop_48_filled,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        mainReuseableText(
                          "Micros",
                          false,
                          false,
                        ),
                        reuseableText(
                          "Micros can be edited now or later",
                        ),
                        const MacrosComponent(
                          percent: 0.65,
                          text: "Vitamin A",
                          icon: FluentIcons.pill_28_filled,
                          mainText: "1.3mg",
                          isColor: true,
                        ),
                        const MacrosComponent(
                          mainText: "18g",
                          percent: 0.35,
                          text: "Vitamin B",
                          icon: FluentIcons.pill_28_filled,
                          isColor: true,
                        ),
                        const MacrosComponent(
                          mainText: "90mg",
                          percent: 0.55,
                          text: "Vitamin C",
                          icon: FluentIcons.pill_28_filled,
                          isColor: true,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Discover",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.greenAccent,
                              ),
                            ),
                          ),
                          Text(
                            "Created",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Liked",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const WorkoutWidget(),
                      const WorkoutPageComponents(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
