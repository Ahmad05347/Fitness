import 'package:flutter/material.dart';

class DietaryButtonComponents extends StatelessWidget {
  final Color? color;
  final String text;
  final Function()? onTap;

  const DietaryButtonComponents({
    super.key,
    this.color,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          10,
        ),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

ExpansionTile(
          backgroundColor: widget.color,
          collapsedShape: const CircleBorder(
            eccentricity: 0.9,
          ),
          expansionAnimationStyle: AnimationStyle(),
          initiallyExpanded: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          textColor: Colors.white,
          minTileHeight: 100,
          title: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          children: const [
            ListTile(
              title: Text(
                "Number 2",
              ),
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(
              () {},
            );
          },
        ),


*/
