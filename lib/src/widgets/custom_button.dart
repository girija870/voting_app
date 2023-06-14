import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = AppColors.activeDark,
    this.width = 140,
    this.height = 50,
    this.icon,
  });

  /// [title] argument is required
  final String? title;

  final VoidCallback? onPressed;

  /// [titleStyle] is used to style the button text
  final TextStyle? titleStyle;

  /// [gradient] for enabled state of button
  final Color backgroundColor;

  /// [width] button width, defaults is 140
  final double width;

  /// [height] button height, defaults is 44
  final double height;

  final Widget? icon;

  ShapeBorder get _shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(
          color: (backgroundColor == AppColors.whiteColor)
              ? AppColors.activeNormal
              : Colors.transparent,
        ),
      );

  BoxConstraints get _constraints =>
      BoxConstraints.tightFor(width: width, height: height);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      clipBehavior: Clip.antiAlias,
      shape: _shape,
      shadowColor: AppColors.whiteColor,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        color: backgroundColor,
        child: InkWell(
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: _constraints,
            child: Ink(
              decoration: ShapeDecoration(
                shape: _shape,
                color: backgroundColor,
              ),
              child: Padding(
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) icon!,
                    if (icon != null) 10.horizontalSpace,
                    Text(
                      title!,
                      style: titleStyle ??
                          AppStyles.text14PxMedium.appFontFamily.whiteColor
                              .lineHeight(16.59),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
