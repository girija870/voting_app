import 'package:flutter/material.dart';

extension TextStyleX on TextStyle {
  ///line-height
  TextStyle lineHeight(double value) => copyWith(height: value / fontSize!);
}
