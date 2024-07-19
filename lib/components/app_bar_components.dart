import 'package:flutter/material.dart';

class AppBarComponents extends StatelessWidget {
  const AppBarComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              Text(
                "1/7",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Need Help",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
