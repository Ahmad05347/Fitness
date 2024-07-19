import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/maternal_button.dart';
import 'package:fitness/components/maternal_images.dart';
import 'package:fitness/meals/dietary_preferences.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class MaternalStatus extends StatelessWidget {
  final String? tag;
  const MaternalStatus({super.key, this.tag});

  Future<void> saveMaternalStatusToFirestore(String status) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userDoc = FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("meals")
          .doc("details");

      await userDoc.set({
        'maternalStatus': status,
      }, SetOptions(merge: true));
    } else {
      print("User not logged in");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const AppBarComponents(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mainReuseableText("Maternal\nStatus", false, false),
                        Text(
                          "Are you pregnant or producing milk?",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
              MaternalButton(
                onTap: () async {
                  await saveMaternalStatusToFirestore("None of the above");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DietaryPreferences(),
                    ),
                  );
                },
                text: "None of the above",
                isBorder: true,
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaternalImages(
                    image: "assets/images/meternal_1.jpg",
                  ),
                  MaternalImages(
                    image: "assets/images/maternal-2.jpg",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      MaternalButton(
                        onTap: () async {
                          await saveMaternalStatusToFirestore("Pregnant");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DietaryPreferences(),
                            ),
                          );
                        },
                        text: "Pregnant",
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Nutrition for two",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      MaternalButton(
                        onTap: () async {
                          await saveMaternalStatusToFirestore("Lactating");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DietaryPreferences(),
                            ),
                          );
                        },
                        text: "Lactating",
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Supports milk production",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              reuseableText("We will use this information to provide your"),
              reuseableText("macros and micros"),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
