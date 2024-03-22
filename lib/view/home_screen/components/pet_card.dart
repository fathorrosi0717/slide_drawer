import 'package:flutter/material.dart';
import 'package:slide_drawer/main.dart';
import 'package:slide_drawer/view/home_screen/components/pet_model.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    super.key,
    required this.pet,
    required this.color,
  });

  final PetModel pet;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height / 4.5 - 40,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: $styles.colors.greyLight, offset: const Offset(0, 5))
              ]),
          child: Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              pet.name,
                              style: $styles.text.titleMedium.copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            pet.gender.toLowerCase() == "male"
                                ? Icons.male
                                : Icons.female,
                            color: $styles.colors.greyLight,
                          )
                        ],
                      ),
                      Text(
                        pet.breed,
                        style: $styles.text.titleMedium,
                      ),
                      Text(
                        "${pet.age} years old",
                        style: $styles.text.labelMedium.copyWith(
                          color: $styles.colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            size: 20,
                            color: $styles.colors.darkGreen,
                          ),
                          Text(
                            "Distance ${pet.distance} km",
                            style: $styles.text.titleSmall
                                .copyWith(color: $styles.colors.greyLight),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width / 2 - 20,
          height: size.width / 2,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  color: $styles.colors.greyLight,
                  offset: const Offset(0, 5),
                )
              ]),
        ),
        SizedBox(
          width: size.width / 2 + 20,
          height: size.width / 2 + 40,
          child: Image.asset(pet.imageUrl),
        )
      ],
    );
  }
}
