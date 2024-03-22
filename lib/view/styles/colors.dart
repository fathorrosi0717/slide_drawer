import 'package:flutter/material.dart';
import 'package:slide_drawer/logic/common/color_utils.dart';

class AppColors {
  final Color darkGreen = const Color(0xFF306060);
  final Color white = Colors.white;
  final Color black = const Color(0xFF1E1B18);
  final Color amber = const Color(0xFFFFC107);
  final Color greyLight = const Color(0xFFBDBDBD);
  final Color greyBackground = const Color(0xFFEEEEEE);
  final Color greyDark = const Color(0xFF757575);
  final Color grey = Colors.grey;
  final Color yellowBackground = const Color(0xFFECD5AF);
  final Color blueBackground = const Color(0xFFCCD5D9);



  final bool isDark = false;

  Color shift(Color c, double d) => ColorUtils.shiftHsl(c, d * (isDark ? -1 : 1));

  ThemeData toThemeData() {
    TextTheme txtTheme = (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    Color txtColor = white;
    ColorScheme colorScheme = ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: darkGreen,
        primaryContainer: darkGreen,
        secondary: darkGreen,
        secondaryContainer: darkGreen,
        background: white,
        surface: white,
        onBackground: txtColor,
        onSurface: txtColor,
        onError: Colors.redAccent,
        onPrimary: Colors.redAccent,
        onSecondary: Colors.redAccent,
        error: Colors.red.shade400);

    var t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme).copyWith(
      textSelectionTheme: TextSelectionThemeData(cursorColor: darkGreen),
      hintColor: darkGreen,
    );

    return t;
  }
}
