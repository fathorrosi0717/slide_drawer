import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    this.radius,
    required this.imageUrl,
    this.margin,
  });

  final double? radius;
  final String imageUrl;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius ?? 50,
      height: radius ?? 50,
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
