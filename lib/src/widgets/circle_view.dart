import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class CircleView extends StatelessWidget {
  const CircleView({
    Key? key,
    this.radius = 60,
    required this.child,
    this.borderWidth = 2.0,
  }) : super(key: key);

  final double radius;
  final Widget child;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius.w,
      height: radius.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.kColorWhite,
        border: Border.all(color: AppColors.kColorWhite),
      ),
      child: Padding(
        padding: EdgeInsets.all(borderWidth),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: child,
        ),
      ),
    );
  }
}
