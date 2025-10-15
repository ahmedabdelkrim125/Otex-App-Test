import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static const String _fontFamily = 'Tajawal';

  static const TextStyle styleRegular10 = TextStyle(
    fontFamily: _fontFamily,

    fontWeight: FontWeight.w400,
    fontSize: 10,
  );
static const TextStyle styleRegular14 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const TextStyle styleRegular12 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const TextStyle styleMedium14 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const TextStyle styleMedium16 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static const TextStyle styleMedium24 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static const TextStyle styleBold14 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  static const TextStyle styleBold16 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
}