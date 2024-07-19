import 'package:flutter/material.dart';

class DietPopover extends StatefulWidget {
  final Color color;
  final List<String> options;
  final List<String> selectedOptions;
  final ValueChanged<List<String>> onSelectionChanged;

  const DietPopover({
    super.key,
    required this.color,
    required this.options,
    required this.selectedOptions,
    required this.onSelectionChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DietPopoverState createState() => _DietPopoverState();
}

class _DietPopoverState extends State<DietPopover> {
  late List<String> _tempSelectedOptions;

  @override
  void initState() {
    _tempSelectedOptions = List.from(widget.selectedOptions);
    super.initState();
  }

  void _onOptionSelected(String option, bool isSelected) {
    setState(() {
      if (isSelected) {
        _tempSelectedOptions.add(option);
      } else {
        _tempSelectedOptions.remove(option);
      }
      widget.onSelectionChanged(_tempSelectedOptions);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: SizedBox(
        height: 220,
        width: MediaQuery.of(context).size.width - 40,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Select Option',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: widget.options.map((option) {
                return FilterChip(
                  label: Text(option),
                  backgroundColor: Colors.white,
                  labelStyle: const TextStyle(color: Colors.black),
                  avatar: _tempSelectedOptions.contains(option)
                      ? const Icon(Icons.check, color: Colors.green)
                      : null,
                  selected: _tempSelectedOptions.contains(option),
                  onSelected: (isSelected) {
                    _onOptionSelected(option, isSelected);
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
