import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DemoComponents extends StatefulWidget {
  final String text;
  final bool isColor;
  final Function(bool) onTap;

  const DemoComponents({
    super.key,
    required this.text,
    this.isColor = false,
    required this.onTap,
  });

  @override
  State<DemoComponents> createState() => _DemoComponentsState();
}

class _DemoComponentsState extends State<DemoComponents> {
  bool _useChisel = false;

  @override
  void initState() {
    super.initState();
    _useChisel = widget.isColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: InputChip(
        showCheckmark: false,
        checkmarkColor: Colors.white,
        elevation: 0,
        backgroundColor: const Color(0xFF3b3b3b),
        selectedColor: const Color(0xFF00934a),
        label: AutoSizeText(
          widget.text,
          style: const TextStyle(color: Colors.white),
        ),
        selected: _useChisel,
        onSelected: (bool newValue) {
          setState(() {
            _useChisel = newValue;
          });
          widget.onTap(newValue);
        },
      ),
    );
  }
}
