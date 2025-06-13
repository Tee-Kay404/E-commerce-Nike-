import 'package:ecommerce_app/theme/dark_mode.dart';
import 'package:ecommerce_app/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // initially mode is lightMode
  ThemeData currentTheme = lightMode;

  // getter method to access theme from other parts of the app
  ThemeData get themeData => currentTheme;

  // getter method to check if we are in darkMode
  bool get isDarkMode => currentTheme == darkMode;

  // setter method to set the theme
  set themeData(ThemeData themeData) {
    currentTheme = themeData;
    notifyListeners();
  }

  // method to toggle btw themes
  void toggleTheme() {
    currentTheme = currentTheme == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
