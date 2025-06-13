import 'package:ecommerce_app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
 fontFamily: 'Lato',  // Ensure the font is included in your pubspec.yaml
 colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade600,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade300,
  ),
  textTheme: apptextTheme
);