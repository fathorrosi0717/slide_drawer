import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_drawer/main.dart';
import 'package:slide_drawer/provider/main_background_provider.dart';
import 'package:slide_drawer/view/home_screen/components/pet_button.dart';
import 'package:slide_drawer/view/home_screen/components/pet_button_model.dart';
import 'package:slide_drawer/view/home_screen/components/pet_card.dart';
import 'package:slide_drawer/view/home_screen/components/pet_model.dart';
import 'package:slide_drawer/view/home_screen/components/top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<PetModel> getPet(int index) {
    switch (index) {
      case 0:
        return cats;
      case 1:
        return dogs;
      case 2:
        return parrots;
      case 3:
        return bunnies;
      default:
        return cats;
    }
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<MainBackgroundProvider>(context);

    MediaQuery.of(context);

    return Column(
      children: [
        const TopSection(),
        Expanded(
          child: Container(
            width: double.infinity,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
                color: $styles.colors.greyBackground,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(40))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Search Pet's to Adopt",
                          hintStyle: $styles.text.titleMedium.copyWith(
                            fontWeight: FontWeight.w600,
                            color: $styles.colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: $styles.colors.greyLight,
                          ),
                          suffixIcon: Icon(
                            Icons.tune,
                            color: $styles.colors.greyLight,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                          petButtonList.length,
                          (index) => InkWell(
                                onTap: () => setState(
                                  () => currentIndex = index,
                                ),
                                child: PetButton(
                                  imageUrl: petButtonList[index].imageUrl,
                                  isSelected: currentIndex == index,
                                  title: petButtonList[index].title,
                                ),
                              ))
                    ],
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: getPet(currentIndex).length,
                      itemBuilder: (context, index) {
                        var pet = getPet(currentIndex);

                        return GestureDetector(
                          onTap: () {},
                          child: PetCard(
                            pet: pet[index],
                            color: index % 2 == 0
                                ? $styles.colors.yellowBackground
                                : $styles.colors.blueBackground,
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
