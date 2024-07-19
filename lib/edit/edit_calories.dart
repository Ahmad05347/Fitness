import 'package:fitness/complete/complete_page.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class EditCalories extends StatefulWidget {
  const EditCalories({super.key});

  @override
  State<EditCalories> createState() => _EditCaloriesState();
}

class _EditCaloriesState extends State<EditCalories> {
  int quantity = 10;
  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    height: 40,
                  ),
                  const AppBarComponents(),
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
                              "Edit\nCalories",
                              false,
                              false,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Edit the units to your desired amount",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: MyButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CompletePage(),
                                ),
                              );
                            },
                            text: "Update",
                            isTrue: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(
                  0xFF474747,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: decrementQuantity,
                          icon: const Icon(
                            Icons.arrow_left_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        reuseableText(
                          "Total Calories",
                        ),
                        IconButton(
                          onPressed: incrementQuantity,
                          icon: const Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: mainReuseableText(
                        "${quantity}c",
                        false,
                        false,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/images/tonkotsu.jpg",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Calories are units of energy that measure the amount of\nenergy food provides, essential for maintaining the\nbody's functions and activities.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
