import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/setup%20wordout/select_routine.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectEquipment extends StatefulWidget {
  const SelectEquipment({super.key});

  @override
  _SelectEquipmentState createState() => _SelectEquipmentState();
}

class _SelectEquipmentState extends State<SelectEquipment> {
  int _selectedIndex = -1;

  final List<String> _items = [
    'Dumbbells',
    'Lob sided Kettlebells',
    'Medicine balls',
    'Sandbags',
    'Weight Plates',
    'Indian Clubs'
  ];

  final List<String> _images = [
    "assets/images/Ellipse 1.jpg",
    "assets/images/Ellipse 736.jpg",
    "assets/images/Ellipse 776.jpg",
    "assets/images/Group (1).jpg",
    "assets/images/tonkotsu copy.jpg",
    "assets/images/sdfg 1.jpg",
  ];

  Future<void> saveEquipmentToFirestore(String equipment) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userDoc = FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("workout")
          .doc("details");

      await userDoc.set(
          {
            'equipment': equipment,
            'timestamp': Timestamp.now(),
          },
          SetOptions(
              merge:
                  true)); // Use merge: true to avoid overwriting the entire document
    } else {
      // Handle the case when the user is not logged in or the user object is null
      print("User not logged in");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mainReuseableText(
                          "Select\nEquipment",
                          false,
                          false,
                        ),
                        Text(
                          "Select all equipment you have or in your gym",
                          style: TextStyle(color: Colors.grey.shade600),
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
                              builder: (context) => const SelectRoutine(),
                            ),
                          );
                        },
                        isHeight: true,
                        isTrue: true,
                        text: "Continue",
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Color(0xFF474747)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
                    filled: true,
                    fillColor: const Color(0xFF1E1E1E),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xFF151513),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                        // Save selected equipment to Firestore
                        saveEquipmentToFirestore(_items[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? Colors.green.shade100
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                _images[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _items[index],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (_selectedIndex == index)
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  'Selected',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
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
