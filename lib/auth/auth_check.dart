import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/auth/create_account_page/create_account_page_widget.dart';
import 'package:fitness/onboarding/select_gender_2/select_gender2_widget.dart';
import 'package:flutter/material.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: FirebaseAuth.instance.authStateChanges().first,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while waiting for the auth state
          return const CircularProgressIndicator();
        } else if (snapshot.hasData && snapshot.data != null) {
          // User is logged in
          return const SelectGender2Widget();
          // WhatToTrack9Widget();
        } else {
          // User is not logged in
          return const CreateAccountPageWidget();
        }
      },
    );
  }
}
