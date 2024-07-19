import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class WorkoutWidgetsComponents extends StatefulWidget {
  const WorkoutWidgetsComponents({super.key});

  @override
  State<WorkoutWidgetsComponents> createState() =>
      _WorkoutWidgetsComponentsState();
}

class _WorkoutWidgetsComponentsState extends State<WorkoutWidgetsComponents> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: const Color(
          0xFF181818,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "#1",
                  ),
                ),
              ),
              const Column(
                children: [
                  Text(
                    "Reps",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    "20",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Weight",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
