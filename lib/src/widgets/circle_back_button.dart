import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.onTap,
    this.radius = 38,
    this.title,
    this.elevation,
    this.circleBorderColor,
  }) : super(key: key);

  final VoidCallback onTap;
  final double radius;
  final String? title;
  final double? elevation;
  final Color? circleBorderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          elevation: elevation ?? 0.sp,
          color: AppColors.kColorWhite,
          shape: const CircleBorder(
            side: BorderSide(color: AppColors.kColorNeutralBlack),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: SizedBox(
              width: radius,
              height: radius,
              child: Assets.icons.backArrow
                  .svg(
                    width: 24.w,
                    height: 24.h,
                  )
                  .padAll(10),
            ),
          ),
        ),
      ],
    );
  }
}
