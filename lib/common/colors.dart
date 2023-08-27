import 'package:flutter/material.dart';

class TColor {
  static Color get primaryColor1 => const Color(0xff92A3FD);
  static Color get primaryColor2 => const Color(0xff9DCEFF);

  static Color get secondaryColor1 => const Color(0xffC58BF2);
  static Color get secondaryColor2 => const Color(0xffEEA4CE);

  static List<Color> get PrimaryF => [primaryColor2, primaryColor1];
  static List<Color> get secondaryF => [secondaryColor1, secondaryColor2];

  static Color get black => const Color(0xff1D1617);
  static Color get grey => const Color(0xff786f72);
  static Color get white => const Color(0xffffffff);
  static Color get lightGray => const Color(0xffF7F8F8);
}
