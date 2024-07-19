import 'package:flutter/material.dart';

class HomePageCompModels {
  final String mainText;
  final String secondText;
  final IconData icon;
  final int itemCount;

  HomePageCompModels({
    required this.mainText,
    required this.secondText,
    required this.icon,
    required this.itemCount,
  });

  String get _mainText => mainText;
  String get _secondText => secondText;
  IconData get _icon => icon;
  int get _itemCount => itemCount;
}
