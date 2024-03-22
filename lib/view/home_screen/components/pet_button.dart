import 'package:flutter/material.dart';
import 'package:slide_drawer/main.dart';

class PetButton extends StatelessWidget {
  const PetButton({
    super.key,
    required this.imageUrl,
    required this.isSelected,
    required this.title,
  });

  final String imageUrl;
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: isSelected ? $styles.colors.darkGreen : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: isSelected
                      ? $styles.colors.darkGreen.withOpacity(0.5)
                      : $styles.colors.grey.withOpacity(0.5),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                )
              ]),
          child: Image.asset(
            imageUrl,
            color: isSelected ? Colors.white : Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: $styles.text.labelLarge.copyWith(
              color: $styles.colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
