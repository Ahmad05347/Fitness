import 'package:fitness/pages/diet_page.dart';
import 'package:fitness/pages/home_page.dart';
import 'package:fitness/pages/rivals_page.dart';
import 'package:fitness/pages/settings_page.dart';
import 'package:fitness/pages/workout_page.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const WorkoutPage(),
    const DietPage(),
    const RivalsPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        unselectedItemColor: const Color(
          0xFF2e2e2e,
        ),
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color(
          0xFF0ed276,
        ),
        backgroundColor: const Color(
          0xFF0a0a0a,
        ),
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.home_48_filled,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.sport_american_football_24_regular,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.food_cake_20_regular,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.people_48_regular,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.person_32_filled,
              size: 35,
            ),
            label: "",
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
