import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key, required this.width, required this.size});

  final double width;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final size = mediaQuery.size;

    return Container(
      width: size.width * width,
      height: size.width * 0.1,
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
