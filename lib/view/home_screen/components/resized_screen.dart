import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_drawer/provider/main_background_provider.dart';

class ResizedScreen extends StatefulWidget {
  const ResizedScreen({
    super.key,
    required this.isDrawerOpen,
    required this.child,
  });

  final bool isDrawerOpen;
  final Widget child;

  @override
  State<ResizedScreen> createState() => _ResizedScreenState();
}

class _ResizedScreenState extends State<ResizedScreen> {
  @override
  Widget build(BuildContext context) {
    MainBackgroundProvider mainBackgroundProvider =
        Provider.of<MainBackgroundProvider>(context);

    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return AnimatedPositioned(
        left: size.width * (widget.isDrawerOpen ? 0.6 : 0.0),
        top: size.height * (widget.isDrawerOpen ? 0.15 : 0.0),
        bottom: size.height * (widget.isDrawerOpen ? 0.15 : 0.0),
        duration: const Duration(
          milliseconds: 300,
        ),
        child: FittedBox(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            padding: EdgeInsets.only(
              top: mediaQuery.padding.top,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: widget.isDrawerOpen
                    ? BorderRadius.circular(40)
                    : BorderRadius.circular(0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 20,
                    blurRadius: 50,
                  )
                ]),
            width: size.width * 1,
            height: size.height * 1,
            child: GestureDetector(
              onTap: () {},
              onHorizontalDragEnd: (details) {
                if (details.velocity.pixelsPerSecond.dx > 2) {
                  mainBackgroundProvider.isDrawerOpen = true;
                } else {
                  mainBackgroundProvider.isDrawerOpen = false;
                }
              },
              child: widget.child,
            ),
          ),
        ));
  }
}
