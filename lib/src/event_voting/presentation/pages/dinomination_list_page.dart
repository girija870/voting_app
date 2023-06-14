
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/cubit/denomation_list/denomination_list_cubit.dart';

import 'package:voting_app/src/widgets/circle_view.dart';

import 'package:voting_app/src/widgets/custom_dialog_view.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';
import 'dart:math' as math;

class DenominationListPage extends StatelessWidget {
  const DenominationListPage(
      {Key? key,
      required this.eventListResponseModel,
      required this.participantIndex})
      : super(key: key);

  final EventListResponseModel eventListResponseModel;
  final int participantIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DenominationListCubit>()
        ..fetchDenominationList(eventListResponseModel.id),
      child: Scaffold(
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
                        style: AppStyles
                            .text16PxBold.appFontFamily.inActiveAccent
                            .lineHeight(18.h)),
                    Text(eventListResponseModel.name,
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
            BlocBuilder<DenominationListCubit, DenominationListState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const Loader(),
                    success: (data) {
                      return Column(
                        children: List.generate(
                            data.data.length,
                            (index) => InkWell(
                                  onTap: () => showDialog(
                                      context: context,
                                      builder: (context) => CustomDialogView(
                                            message: 'Are you sure to proceed',
                                            onConfirmClicked: () {},
                                            buttonLabel: 'Confirm',
                                            eventDetailsId:
                                                eventListResponseModel
                                                    .participants[
                                                        participantIndex]
                                                    .id,
                                            denominationListResponseModel:
                                                data.data[index],
                                          )),
                                  child: Stack(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: (data.data[index].type !=
                                                    'PAID')
                                                ? AppColors.activeAccent
                                                    .withOpacity(.1)
                                                : AppColors.whiteColor,
                                            border: Border.all(
                                                color: (data.data[index].type !=
                                                        'PAID')
                                                    ? AppColors.activeAccent
                                                    : AppColors.activeNormal
                                                        .withOpacity(.2)),
                                            borderRadius: 4.rounded),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      '${data.data[index].count}',
                                                      style: AppStyles
                                                          .text14PxMedium
                                                          .appFontFamily
                                                          .inActiveAccent
                                                          .lineHeight(18.h)),
                                                  Text(
                                                      data.data[index].count > 1
                                                          ? 'Votes'
                                                          : 'Vote',
                                                      style: AppStyles
                                                          .text14PxMedium
                                                          .appFontFamily
                                                          .inActiveAccent
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
                                                  Text(data.data[index].title,
                                                      style: AppStyles
                                                          .text16PxMedium
                                                          .appFontFamily
                                                          .inActiveAccent
                                                          .lineHeight(18.h)),
                                                  if (data.data[index].type !=
                                                      'PAID')
                                                    Text(
                                                        '${data.data[index].detail}',
                                                        style: AppStyles
                                                            .text12PxMedium
                                                            .appFontFamily
                                                            .inActiveAccent
                                                            .lineHeight(18.h))
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                                flex: 1,
                                                child: Assets.icons.backArrow
                                                    .svg())
                                          ],
                                        ).px(10.w).py(8.h),
                                      ).pOnly(bottom: 20.h),
                                      if (data.data[index].type != 'PAID')
                                        Positioned(
                                            child: Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Material(
                                                    color: Colors.red,
                                                    child: Text(
                                                      'Free',
                                                      style: AppStyles
                                                          .text12PxMedium
                                                          .appFontFamily
                                                          .whiteColor
                                                          .lineHeight(18.h),
                                                    ).px(10))))
                                    ],
                                  ),
                                )),
                      );
                    });
              },
            ).px(20.w).toSliverBox,
          ],
        ),
      ),
    );
  }
}
