import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      //colorName: if is DarkTheme -- Dark color : light color
      canvasColor: isDarkTheme ? const Color(0xFF252525) : Colors.white,
      //background
      primaryColor: isDarkTheme ? Colors.white : Colors.black,
      //black - white text
      cardColor: isDarkTheme ? Colors.white : Colors.black,
      //black - white text
      dividerColor: isDarkTheme ? Colors.white : const Color(0xFF252525),
      //divider color
      splashColor: isDarkTheme ? Colors.white : Colors.black,

      accentColor: isDarkTheme ? Colors.white : Colors.black,

      brightness: isDarkTheme ? Brightness.light : Brightness.dark,
    );
  }
}
