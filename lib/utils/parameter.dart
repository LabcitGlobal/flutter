import 'package:flutter/material.dart';

class MyColor {
  static Color primaryColor = Color(0xff00adcc);
  static Color primaryLightColor = Color(0xff5fdfff);
  static Color primaryDarkColor = Color(0xff007d9b);
  static Color secondaryColor = Color(0xffea1c8a);
  static Color secondaryLightColor = Color(0xffff61ba);
  static Color secondaryDarkColor = Color(0xffb2005d);
  static Color primaryTextColor = Color(0xfffafafa);
  static Color secondaryTextColor = Color(0xfffafafa);

  static const MaterialColor primaryMaterialColor =
      const MaterialColor(0xff00adcc, const <int, Color>{
    50: const Color(0xff009cb8), //10%
    100: const Color(0xff008aa3), //20%
    200: const Color(0xff00798f), //30%
    300: const Color(0xff00687a), //40%
    400: const Color(0xff005766), //50%
    500: const Color(0xff004552), //60%
    600: const Color(0xff00343d), //70%
    700: const Color(0xff002329), //80%
    800: const Color(0xff001114), //90%
    900: const Color(0xff000000), //100%
  });
}
