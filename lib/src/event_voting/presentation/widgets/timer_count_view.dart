import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/app_colors.dart';
import 'package:voting_app/src/core/themes/app_styles.dart';

class TimerCountView extends StatelessWidget {
  const TimerCountView({
    Key? key,
    this.title,
    required this.value,
    this.textStyle1,
    this.textStyle2,
  }) : super(key: key);

  final String? title;
  final String value;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: textStyle1 ?? AppStyles.regularText14.copyWith(color: AppColors.kColorDark).lineHeight(0.h),
          textAlign: TextAlign.center,
        ),
        if (title != null)
          Text(
            title!,
            style: textStyle2 ?? AppStyles.regularText12.copyWith(color: AppColors.kColorDark).lineHeight(0.h),
            textAlign: TextAlign.center,
          ),
      ],
    ).pOnly(right: 10);
  }
}
