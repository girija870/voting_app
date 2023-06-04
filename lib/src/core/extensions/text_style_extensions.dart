import 'package:flutter/material.dart';
import 'package:voting_app/gen/fonts.gen.dart';
import 'package:voting_app/src/core/themes/themes.dart';

extension TextStyleX on TextStyle {
  ///font family
  TextStyle get appFontFamily => copyWith(fontFamily: FontFamily.poppins);

  ///color attachment on text style
  TextStyle get primary => copyWith(color: AppColors.activeNormal);

  TextStyle get whiteColor => copyWith(color: AppColors.whiteColor);

  ///line-height
  TextStyle lineHeight(double value) => copyWith(height: value / fontSize!);
}
