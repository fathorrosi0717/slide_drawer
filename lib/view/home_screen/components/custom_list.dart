import 'package:flutter/material.dart';
import 'package:slide_drawer/main.dart';

class CustomList extends StatelessWidget {
  const CustomList({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
  });

  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
      ),
      title: Text(
        title,
        style: $styles.text.titleMedium
            .copyWith(fontWeight: FontWeight.bold, fontSize: 20, color: isSelected ? Colors.white : Colors.white.withOpacity(0.5)),
      ),
      onTap: onTap,
    );
  }
}
