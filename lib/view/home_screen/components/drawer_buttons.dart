import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_drawer/provider/main_background_provider.dart';

class DrawerButtons extends StatelessWidget {
  const DrawerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    MainBackgroundProvider mainBackgroundProvider =
        Provider.of<MainBackgroundProvider>(context);

    final mediaQuery = MediaQuery.of(context);

    final size = mediaQuery.size;

    return InkWell(
      onTap: () {
        mainBackgroundProvider.isDrawerOpen =
            !mainBackgroundProvider.isDrawerOpen;
      },
      child: SizedBox(
          height: size.height * 0.1,
          width: size.width * 0.1,
          child: const Icon(
            Icons.density_medium,
          )),
    );
  }
}
