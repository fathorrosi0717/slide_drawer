import 'package:flutter/material.dart';
import 'package:slide_drawer/main.dart';
import 'package:slide_drawer/view/home_screen/components/drawer_buttons.dart';
import 'package:slide_drawer/view/home_screen/components/profile_image.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DrawerButtons(),
          Column(
            children: [
              Text(
                "Location",
                style: $styles.text.titleMedium.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: $styles.colors.greyLight),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.green[900],
                  ),
                  Text(
                    "Gaza,",
                    style: $styles.text.titleMedium.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  ),
                  Text(
                    "Palestine",
                    style: $styles.text.titleMedium.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[600]),
                  ),
                ],
              )
            ],
          ),
          const ProfileImage(
              margin: EdgeInsets.symmetric(vertical: 20),
              imageUrl:
                  "assets/images/app_logo.png"),
        ],
      ),
    );
  }
}
