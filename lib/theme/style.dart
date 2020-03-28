import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.primaryColor
  );
}

class Colors {
  const Colors();

  static const Color primaryColor = const Color(0xFFFFFFFF);
  static const Color defaultColor = const Color(0xFF1EC78A); //https://www.color-hex.com/color/22e09b 1EC78A 22E09B
}

class TextStyles{
  const TextStyles();

  static const TextStyle homeTitle = const TextStyle(
    color: Colors.primaryColor,
    fontSize: 25.0,
    fontWeight: FontWeight.w600
  );
}