import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/widgets/custom_button.dart';

class CustomDialogView extends StatelessWidget {
  const CustomDialogView(
      {Key? key,
      required this.message,
      required this.onConfirmClicked,
      required this.buttonLabel})
      : super(key: key);

  final String message;
  final String buttonLabel;
  final VoidCallback onConfirmClicked;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.w,
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.r),
        ),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: AppStyles.text14PxMedium.appFontFamily.activeAccent
                  .lineHeight(18.sp),
              textAlign: TextAlign.center,
            ),
            40.verticalSpace,
            CustomButton(
              width: context.width * .5,
              title: buttonLabel,
              titleStyle: AppStyles.text14PxMedium.appFontFamily.inActiveAccent
                  .lineHeight(16.59),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ).padAll(40),
      ),
    );
  }
}
