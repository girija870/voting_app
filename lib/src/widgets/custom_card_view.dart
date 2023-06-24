import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/themes/app_colors.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({
    Key? key,
    required this.child,
    this.elevation,
    this.shadowColor,
    this.backgroundColor,
    this.border,
    this.padding,
    this.borderRadius,
    this.boxShadowColor,
    this.boxShadowEnabled = false,
  }) : super(key: key);

  final Widget child;
  final double? elevation;
  final Color? shadowColor;
  final Color? backgroundColor;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? boxShadowColor;
  final bool boxShadowEnabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? AppColors.kColorWhite,
      elevation: elevation ?? 0.sp,
      shadowColor: shadowColor,
      borderRadius: borderRadius ?? BorderRadius.circular(15.sp),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.kColorWhite,
          boxShadow: boxShadowEnabled
              ? [
                  BoxShadow(
                    offset: Offset.zero,
                    spreadRadius: 2,
                    blurRadius: 8,

                    color: boxShadowColor ??
                        AppColors.kColorPrimary.withOpacity(0.1),
                  )
                ]
              : [],
          borderRadius: borderRadius ??
              BorderRadius.only(topLeft: 8.circular, topRight: 8.circular),
        ),
        child: Container(
          child: child,
        ),
      ),
    );
  }
}
