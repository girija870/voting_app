
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/widgets/custom_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Assets.icons.successIcon.svg()),
        24.verticalSpace,
        Text(
          'Congratulations!',
          style: AppStyles.mediumText18
              .copyWith(color: AppColors.kColorNeutralBlack),
        ),
        36.verticalSpace,
        Text(
            'We are committed to providing a safe and secure platform for our users. Your information is being verified and we will get back to you as soon as possible.',
            textAlign: TextAlign.center,
            style: AppStyles.mediumText12
                .copyWith(color: AppColors.kColorNeutralBlack)),
        69.verticalSpace,
        CustomButton(
          width: context.width,
          title: 'Done',
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, RoutePath.eventViewPage,
                (route) => route.settings.name == RoutePath.eventViewPage);
          },
        )
      ],
    ).px(20.w));
  }
}
