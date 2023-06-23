import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/core/widgets/custom_back_button.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/denomination_list_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/post_vote_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/manual_voting_bottom_sheet.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

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
