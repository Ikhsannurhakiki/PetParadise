import 'package:flutter/material.dart';

class AppColors {
  static const Color lightBlue = Color(0xFFADD8E6);
  static const Color babyBlue = Color(0xFFB0E0E6);
  static const Color skyBlue = Color(0xFF87CEEB);
  static const Color powderBlue = Color(0xFFB0E0E6);
  static const Color aqua = Color(0xFF00FFFF);
  static const Color paleTurquoise = Color(0xFFAFEEEE);
  static const Color lightCyan = Color(0xFFE0FFFF);

  static const MaterialColor lightBlueSwatch = MaterialColor(
    0xFFADD8E6,
    <int, Color>{
      50: Color(0xFFE1F5FE),
      100: Color(0xFFB3E5FC),
      200: Color(0xFF81D4FA),
      300: Color(0xFF4FC3F7),
      400: Color(0xFF29B6F6),
      500: Color(0xFF03A9F4),
      600: Color(0xFF039BE5),
      700: Color(0xFF0288D1),
      800: Color(0xFF0277BD),
      900: Color(0xFF01579B),
    },
  );
}

class ColorsHelper {
  static const Color inputColor = Color(0xFFE0FFFF);
  static const Color bgColor = Color(0xFFB0E0E6);
  static const Color buttonColor = Color(0xFF87CEEB);
  static const Color baseColor = Color(0xFFFFFFFF);
  static final Color secondaryColor = AppColors.lightBlueSwatch[300]!;
  static const Color labelColor = Colors.blueGrey;
  static final Color iconColor = AppColors.lightBlueSwatch[500]!;
  // MaterialColor for theming
  static const MaterialColor brown = MaterialColor(
    0xFFAE794B, // Base brown color
    <int, Color>{400: inputColor, 50: bgColor},
  );
}

