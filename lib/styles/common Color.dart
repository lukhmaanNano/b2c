import 'package:flutter/material.dart';

const primary = Color(0xFF02414E);
const positiveText = Color(0xFF34A853);
const lightShade = Color(0xFF90caf9);
const red = Color(0xFFa4161a);
const grey50 = Color(0xFFbfc0c0);
const grey100 = Color(0xFFa5a5a5);

class Styles {
  static Color scaffoldBackgroundColor = const Color(0xFFDEEDF5);

  static ScrollbarThemeData scrollbarTheme =
      const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(scaffoldBackgroundColor),
    isAlwaysShown: false,
    interactive: true,
  );
}
