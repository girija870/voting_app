// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:voting_app/src/core/themes/themes.dart';

extension WidgetX on Widget {
  Padding px(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Padding py(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );

  Padding pOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );

  Padding padAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget shimmer({bool show = true}) => show
      ? Shimmer.fromColors(
          baseColor: AppColors.whiteColor.withOpacity(0.5),
          highlightColor: AppColors.activeNormal,
          period: const Duration(milliseconds: 1000),
          child: this,
        )
      : this;
}
