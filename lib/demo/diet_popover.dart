import 'package:flutter/material.dart';

class DietPopover extends StatelessWidget {
  const DietPopover({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFff52d0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width - 40,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Diet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Chip(
                  label: Text('Vegan'),
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),
                  avatar: Icon(Icons.check, color: Colors.green),
                ),
                Chip(
                  label: Text('Vegetarian'),
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),
                ),
                Chip(
                  label: Text('Paleo'),
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),
                ),
                Chip(
                  label: Text('Keto'),
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),
                ),
                Chip(
                  label: Text('Gluten Free'),
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
