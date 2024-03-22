import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_drawer/main.dart';
import 'package:slide_drawer/provider/main_background_provider.dart';
import 'package:slide_drawer/view/home_screen/components/bottom_section.dart';
import 'package:slide_drawer/view/home_screen/components/custom_list.dart';
import 'package:slide_drawer/view/home_screen/components/menu_button.dart';
import 'package:slide_drawer/view/home_screen/components/resized_screen.dart';
import 'package:slide_drawer/view/home_screen/components/top_profile.dart';
import 'package:slide_drawer/view/home_screen/home_screen.dart';

class MainBackgroundDrawer extends StatefulWidget {
  const MainBackgroundDrawer({super.key});

  @override
  State<MainBackgroundDrawer> createState() => _MainBackgroundDrawerState();
}

class _MainBackgroundDrawerState extends State<MainBackgroundDrawer> {
  int selectedIndex = 0;
  List<MenuButton> menuButton = [
    MenuButton(title: 'Adoption', icon: Icons.pets),
    MenuButton(title: 'Donation', icon: Icons.monetization_on),
    MenuButton(title: 'Add Pet', icon: Icons.add_box_rounded),
    MenuButton(title: 'Favorite', icon: Icons.favorite),
    MenuButton(title: 'Message', icon: Icons.mail),
    MenuButton(title: 'Profile', icon: Icons.person),
  ];
  List<Widget> screen = [
    const HomeScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.cyanAccent,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.deepOrangeAccent,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
    Container(
      color: Colors.black54,
    ),
  ];

  @override
  void initState() {
    menuButton[selectedIndex].isSelected = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MainBackgroundProvider mainBackgroundProvider =
        Provider.of<MainBackgroundProvider>(context);

    final mediaQuery = MediaQuery.of(context);

    final size = mediaQuery.size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              padding: EdgeInsets.only(
                top: mediaQuery.padding.top,
                bottom: 40,
              ),
              color: $styles.colors.darkGreen,
              child: Column(
                children: [
                  const TopProfile(),
                  const Spacer(),
                  ...List.generate(menuButton.length, (index) {
                    var currentMenuButton = menuButton[index];

                    return CustomList(
                      title: currentMenuButton.title,
                      icon: currentMenuButton.icon,
                      onTap: () => setState(() {
                        for (var element in menuButton) {
                          element.isSelected = false;
                        }
                        selectedIndex = index;
                        currentMenuButton.isSelected = true;
                      }),
                      isSelected: currentMenuButton.isSelected,
                    );
                  }),
                  const Spacer(),
                  const BottomSection(),
                ],
              ),
            ),
            ResizedScreen(
              isDrawerOpen: mainBackgroundProvider.isDrawerOpen,
              child: screen[selectedIndex],
            )
          ],
        ),
      ),
    );
  }
}
