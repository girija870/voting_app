import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/denomination_list_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/manual_voting_bottom_sheet.dart';

import 'package:voting_app/src/widgets/circle_view.dart';

import 'package:voting_app/src/widgets/custom_dialog_view.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';
import 'dart:math' as math;

class DenominationListPage extends StatelessWidget {
  const DenominationListPage({
    Key? key,
    required this.participantIndex,
    required this.eventListResponseModel,
  }) : super(key: key);

  final int participantIndex;
  final EventListData eventListResponseModel;

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
                  child: CacheNetworkImageViewer(
                    imageUrl: eventListResponseModel
                        .participants[participantIndex].image,
                  )),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      eventListResponseModel
                          .participants[participantIndex].name,
                      style: AppStyles.boldText16
                          .copyWith(color: AppColors.kColorNeutralBlack)
                          .lineHeight(18.h)),
                  Text(eventListResponseModel.name,
                      style: AppStyles.semiBoldText12
                          .copyWith(color: AppColors.kColorNeutralBlack)
                          .lineHeight(18.h)),
                ],
              )
            ],
          ).px(20.w).toSliverBox,
          const Divider(
            color: AppColors.kColorPrimary,
          ).toSliverBox,
          Text('Select an option to vote',
                  style: AppStyles.mediumText14
                      .copyWith(color: AppColors.kColorNeutralBlack)
                      .lineHeight(18.h))
              .px(20.w)
              .py(10.h)
              .toSliverBox,
          10.verticalSpace.toSliverBox,
          Consumer(
            builder: (context, ref, child) {
              return ref
                  .watch(denominationListNotifierProvider(
                      eventListResponseModel.id))
                  .maybeWhen(
                      orElse: () => const SizedBox(),
                      loading: () => const Loader(),
                      success: (data) {
                        return Column(children: [
                          ...List.generate(
                              data.length,
                              (index) => InkWell(
                                    onTap: () => showDialog(
                                        context: context,
                                        builder: (context) => CustomDialogView(
                                              message:
                                                  'Are you sure to proceed',
                                              onConfirmClicked: () {},
                                              buttonLabel: 'Confirm',
                                              eventDetailsId:
                                                  eventListResponseModel
                                                      .participants[
                                                          participantIndex]
                                                      .id,
                                              count: data[index].count,
                                              type: data[index].type,
                                              denoId: data[index].id,
                                            )),
                                    child: Stack(
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: (data[index].type !=
                                                      'PAID')
                                                  ? AppColors.kColorSecondary
                                                      .withOpacity(.1)
                                                  : AppColors.kColorWhite,
                                              border: Border.all(
                                                  color:
                                                      (data[index].type !=
                                                              'PAID')
                                                          ? AppColors
                                                              .kColorSecondary
                                                          : AppColors
                                                              .kColorPrimary
                                                              .withOpacity(.2)),
                                              borderRadius: 4.rounded),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  children: [
                                                    Text('${data[index].count}',
                                                        style: AppStyles
                                                            .mediumText14
                                                            .copyWith(
                                                                color: AppColors
                                                                    .kColorNeutralBlack)
                                                            .lineHeight(18.h)),
                                                    Text(
                                                        data[index].count >
                                                                1
                                                            ? 'Votes'
                                                            : 'Vote',
                                                        style: AppStyles
                                                            .mediumText14
                                                            .copyWith(
                                                                color: AppColors
                                                                    .kColorNeutralBlack)
                                                            .lineHeight(18.h))
                                                  ],
                                                ),
                                              ),
                                              10.horizontalSpace,
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(data[index].title,
                                                        style: AppStyles
                                                            .mediumText16
                                                            .copyWith(
                                                                color: AppColors
                                                                    .kColorNeutralBlack)
                                                            .lineHeight(18.h)),
                                                    if (data[index].type !=
                                                        'PAID')
                                                      Text(
                                                          '${data[index].detail}',
                                                          style: AppStyles
                                                              .mediumText12
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .kColorNeutralBlack)
                                                              .lineHeight(18.h))
                                                  ],
                                                ),
                                              ),
                                              const Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                      Icons.arrow_forward_ios))
                                            ],
                                          ).px(10.w).py(8.h),
                                        ).pOnly(bottom: 20.h),
                                        if (data[index].type != 'PAID')
                                          Positioned(
                                              child: Transform.rotate(
                                                  angle: -math.pi / 4,
                                                  child: Material(
                                                      color: Colors.red,
                                                      child: Text(
                                                        'Free',
                                                        style: AppStyles
                                                            .mediumText12
                                                            .copyWith(
                                                                color: AppColors
                                                                    .kColorWhite)
                                                            .lineHeight(18.h),
                                                      ).px(10))))
                                      ],
                                    ),
                                  )),
                          10.verticalSpace,
                          InkWell(
                            onTap: () => showModalBottomSheet(
                              backgroundColor: AppColors.kColorWhite,
                              context: context,
                              builder: (context) => ManualVotingBottomSheet(
                                eventDetailsId: eventListResponseModel
                                    .participants[participantIndex].id,
                                price: eventListResponseModel.price,
                              ),
                              isScrollControlled: true,
                              useRootNavigator: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                            child: Text(
                              'ENTER VOTES MANUALLY',
                              style: AppStyles.semiBoldText12,
                            ),
                          ),
                          40.verticalSpace
                        ]);
                      });
            },
          ).px(20.w).toSliverBox,
        ],
      ),
    );
  }
}
