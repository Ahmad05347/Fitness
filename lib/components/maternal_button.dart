import 'package:flutter/material.dart';

class MaternalButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final bool? isBorder;
  const MaternalButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isBorder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: isBorder == true ? 200 : 150,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
