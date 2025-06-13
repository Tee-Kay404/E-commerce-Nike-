import 'package:ecommerce_app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(        
  fontFamily: 'Lato',  // Ensure the font is included in your pubspec.yaml
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade50,
    primary: Colors.grey.shade100,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade300,
  ),
    textTheme: apptextTheme
);