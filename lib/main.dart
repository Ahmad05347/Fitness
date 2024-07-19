import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/auth/auth_check.dart';
import 'package:fitness/backend/backend.dart';
import 'package:fitness/class/user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  Stripe.publishableKey = dotenv.env["STRIPE_PUBLISH_KEY"]!;
  await Stripe.instance.applySettings();
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthCheck(),
      // home: SliderDemo(),
      // home: WeeksWorkout(),
      // home: SelectEquipment(),
      // home: WeeksMealPlan(),
      // home: SetMealsPlan(),
      // home: SelectUnits3Widget(),
      // home: SelectGender2Widget(),
      // home: NameAndProfilePicture1Widget(),
      // home: WhatToTrack9Widget(),
      // home: DailyNutrientsConti(),
    );
  }
}
