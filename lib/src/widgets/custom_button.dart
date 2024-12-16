import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/themes/themes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = AppColors.kColorDark,
    this.width = 140,
    this.height = 50,
    this.icon,
    this.loading = false,
  });

  final bool loading;

  final String? title;

  final VoidCallback? onPressed;

  final TextStyle? titleStyle;

  final Color backgroundColor;

  final double width;

  final double height;

  final Widget? icon;

  ShapeBorder get _shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.r),
        side: BorderSide(
          color: (backgroundColor == AppColors.kColorWhite)
              ? AppColors.kColorPrimary
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
      shadowColor: AppColors.kColorWhite,
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
              child: loading
                  ? const Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: AppColors.kColorWhite,
                          strokeWidth: 2,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (icon != null) ...[
                          icon!,
                          if (icon != null) 10.horizontalSpace,
                        ],
                        if (title != null)
                          Text(
                            title!,
                            style: titleStyle ??
                                AppStyles.mediumText14
                                    .copyWith(color: AppColors.kColorWhite),
                          ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
