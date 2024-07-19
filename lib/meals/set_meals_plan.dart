import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/class/user_data.dart';
import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/meals/dietary_preferences.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SetMealsPlan extends StatefulWidget {
  const SetMealsPlan({super.key});

  @override
  State<SetMealsPlan> createState() => _SetMealsPlanState();
}

class _SetMealsPlanState extends State<SetMealsPlan> {
  final PageController controller = PageController();
  String selectedBodyType = "obese";

  Future<void> saveTagToFirestore(
      String bodyType, String gender, String length, String weight) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userDoc = FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("meals")
          .doc("details");

      await userDoc.set({
        'bodyType': bodyType,
        'gender': gender,
        'length': length,
        'weight': weight,
      }, SetOptions(merge: true));
    }
  }

  final List<Map<String, String>> imagesData = [
    {
      'path': "assets/images/ujoij 1.jpg",
      'bodyType': "obese",
      'gender': "male",
    },
    {
      'path':
          "assets/images/HD-wallpaper-gym-bodybuilding-gym-motivation-thumbnail copy.jpg",
      'bodyType': "fat",
      'gender': "male",
    },
    {
      'path': "assets/images/sdfg 1.jpg",
      'bodyType': "slim",
      'gender': "female",
    },
  ];

  List<Map<String, String>> _getFilteredImages(String selectedGender) {
    if (selectedGender == "Prefer not to say") {
      return imagesData;
    }
    return imagesData
        .where((image) => image['gender'] == selectedGender.toLowerCase())
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    final filteredImages = _getFilteredImages(
        userData.selectedGender ?? 'male'); // default to 'male' if null

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: ListView(
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
                        mainReuseableText("Current\nBody Fat%", false, false),
                        Text(
                          "Select the picture that looks the closest to you",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            selectedBodyType =
                                filteredImages[index]['bodyType']!;
                          });
                        },
                        allowImplicitScrolling: true,
                        dragStartBehavior: DragStartBehavior.start,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padEnds: true,
                        itemCount: filteredImages.length,
                        controller: PageController(
                          initialPage: 0,
                          viewportFraction: 0.7,
                        ),
                        itemBuilder: (_, index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:
                                    AssetImage(filteredImages[index]['path']!),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Essential Fats (2-5%)",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "This is ideal for competitive",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Text(
                "builders",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: MyButton(
                  text: "Continue",
                  onTap: () async {
                    await saveTagToFirestore(
                      selectedBodyType,
                      userData.selectedGender ??
                          'male', // default to 'male' if null
                      userData.selectedHeight ?? '1.75',
                      userData.selectedWeight ?? '65',
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DietaryPreferences(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
