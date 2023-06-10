import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/pages/contestant_details_page.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/circle_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';
import 'dart:math' as math;

class DenominationListPage extends StatefulWidget {
  const DenominationListPage({Key? key}) : super(key: key);

  @override
  State<DenominationListPage> createState() => _DenominationListPageState();
}

class _DenominationListPageState extends State<DenominationListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
              pinned: false, floating: true, automaticallyImplyLeading: true),
          Row(
            children: [
              CircleView(
                  radius: 80.r,
                  child: const CacheNetworkImageViewer(
                    imageUrl:
                        'https://english.khabarhub.com/wp-content/uploads/2020/12/Pro_Ktm_Missnepal2020b-1-scaled.jpg',
                  )),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sn Gurung',
                      style: AppStyles.text16PxBold.appFontFamily.inActiveAccent
                          .lineHeight(18.h)),
                  Text('Miss.Nepal 2023',
                      style: AppStyles
                          .text12PxSemiBold.appFontFamily.inActiveAccent
                          .lineHeight(18.h)),
                ],
              )
            ],
          ).px(20.w).toSliverBox,
          const Divider(
            color: AppColors.activeNormal,
          ).toSliverBox,
          Text('Select an option to vote',
                  style: AppStyles.text14PxMedium.appFontFamily.inActiveAccent
                      .lineHeight(18.h))
              .px(20.w)
              .py(10.h)
              .toSliverBox,
          10.verticalSpace.toSliverBox,
          Column(
            children: List.generate(
                10,
                (index) => Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: index == 1 || index == 0
                                  ? AppColors.activeAccent.withOpacity(.1)
                                  : AppColors.whiteColor,
                              border: Border.all(
                                  color: index == 1 || index == 0
                                      ? AppColors.activeAccent
                                      : AppColors.activeNormal.withOpacity(.2)),
                              borderRadius: 4.rounded),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Text('1',
                                        style: AppStyles.text14PxMedium
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h)),
                                    Text('Vote',
                                        style: AppStyles.text14PxMedium
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h))
                                  ],
                                ),
                              ),
                              10.horizontalSpace,
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Get 1 Free BankLink Vote',
                                        style: AppStyles.text16PxMedium
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h)),
                                    Text('Link your bank account',
                                        style: AppStyles.text12PxMedium
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h))
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 1, child: Assets.icons.backArrow.svg())
                            ],
                          ).px(10.w).py(8.h),
                        ).pOnly(bottom: 20.h),
                        if (index == 1 || index == 0)
                          Positioned(
                              child: Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Material(
                                      color: Colors.red,
                                      child: Text(
                                        'Free',
                                        style: AppStyles.text12PxMedium
                                            .appFontFamily.whiteColor
                                            .lineHeight(18.h),
                                      ).px(10))))
                      ],
                    )),
          ).px(20.w).toSliverBox,
        ],
      ),
    );
  }
}
