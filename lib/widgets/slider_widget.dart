import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/divider_shape.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderWidget extends StatefulWidget {
  final String firstText;
  final String sliderText;
  const SliderWidget({
    super.key,
    required this.firstText,
    required this.sliderText,
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0.0;
  void _incrementValue() {
    setState(() {
      if (_value < 8.0) {
        _value += 1.0;
      }
    });
  }

  void _decrementValue() {
    setState(() {
      if (_value > 0.0) {
        _value -= 1.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: _decrementValue,
            icon: const Icon(
              Icons.minimize_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              padding: const EdgeInsets.all(
                10,
              ),
              width: 280,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                color: const Color(
                  0xFF171918,
                ),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      secondReuseableText(
                        widget.firstText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.grey.shade600,
                        size: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            widget.sliderText,
                            style: GoogleFonts.poppins(
                              color: const Color(
                                0xFF4caf50,
                              ),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SfSlider(
                        activeColor: Colors.green,
                        min: 0.0,
                        max: 8.0,
                        interval: 1,
                        showDividers: true,
                        dividerShape: DividerShape(),
                        value: _value,
                        onChanged: (dynamic newValue) {
                          setState(() {
                            _value = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white, size: 30),
            onPressed: _incrementValue,
          ),
        ],
      ),
    );
  }
}
