import 'package:flutter/material.dart';

class MenuButton {
  final String title;
  final IconData icon;
  bool isSelected;

  MenuButton({
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
}
