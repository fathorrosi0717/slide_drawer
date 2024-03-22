import 'package:flutter/material.dart';
import 'package:slide_drawer/main.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Row(
        children: [
          Icon(
            Icons.settings,
            color: Colors.white.withOpacity(0.5),
          ),
          Text(
            "Settings",
            style: $styles.text.titleMedium.copyWith(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
          ),
          SizedBox(
            height: 20,
            child: VerticalDivider(
              color: Colors.white.withOpacity(0.5),
              thickness: 1,
              width: 40,
            ),
          ),
          Text(
            "LogOut",
            style: $styles.text.titleMedium.copyWith(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
