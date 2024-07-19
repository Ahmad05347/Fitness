import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/components/compare_meals_components.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompareWorkoutListComp extends StatelessWidget {
  const CompareWorkoutListComp({super.key});

  Future<List<Map<String, dynamic>>> fetchMealsPlans() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot =
        await firestore.collection('mealsPlans').get();
    return querySnapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: fetchMealsPlans(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final mealsPlans = snapshot.data ?? [];

        return ExpansionTile(
          tilePadding: const EdgeInsets.only(left: 40, right: 20),
          title: secondReuseableText("View All 2000+ Meals Plan"),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          controlAffinity: ListTileControlAffinity.platform,
          expandedAlignment: Alignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 5),
                    Text(
                      "All",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(color: Colors.green, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Recent",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Liked",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Discover",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Create",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: mealsPlans.map((mealPlan) {
                    return CompareMealsComponents(
                      mealPlan: mealPlan,
                      onTap: () {},
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
