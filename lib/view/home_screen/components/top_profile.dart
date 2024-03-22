import 'package:flutter/material.dart';
import 'package:slide_drawer/main.dart';
import 'package:slide_drawer/view/home_screen/components/profile_image.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          const ProfileImage(
              margin: EdgeInsets.symmetric(vertical: 20),
              imageUrl: "assets/images/app_logo.png"),
          SizedBox(
            width: $styles.insets.sm,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Akhza",
                style: $styles.text.titleLarge
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "Active Status",
                style: $styles.text.titleMedium.copyWith(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
