import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/app_styles.dart';

class TimerCountView extends StatelessWidget {
  const TimerCountView({Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: AppStyles.text14PxSemiBold.activeDark.appFontFamily
              .lineHeight(0.h),
          textAlign: TextAlign.center,
        ),
        Text(
          title,
          style: AppStyles.text12PxRegular.activeDark.appFontFamily
              .lineHeight(0.h),
          textAlign: TextAlign.center,
        ),
      ],
    ).pOnly(right: 10);
  }
}
