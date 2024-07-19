import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 50,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    14,
                  ),
                ),
                width: 120,
                height: 100,
                child: Image.asset(
                  "assets/images/stock-vector-dumbbell-icon-sign-logo-symbol-template-isolated-on-white-background-simple-flat-style-graphic-1477507961.jpg",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
