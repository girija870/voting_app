import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/core/widgets/custom_text_field.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/event_list_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/rounded_date_viewer.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'Search',
          controller: TextEditingController(),
          prefixIcon:
              Transform.scale(scale: .5, child: Assets.icons.search.svg()),
          suffixIcon:
              Transform.scale(scale: .5, child: Assets.icons.filtered.svg()),
        ).px(20.w),
        Consumer(
          builder: (context, ref, child) {
            return ref.watch(eventListNotifierProvider).maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => const Loader(),
                  error: (errMessage) => Center(
                    child: Text(errMessage),
                  ),
                  success: (data) => Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final eventData = data[index];
                        int endTime = DateTime.parse(
                                eventData.endDate ?? DateTime.now().toString())
                            .millisecondsSinceEpoch;

                        return CustomCardView(
                          boxShadowEnabled: true,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () => Navigator.of(context).pushNamed(
                                  RoutePath.eventDetailsPage,
                                  arguments: eventData,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: 10.circular,
                                    topRight: 10.circular,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CacheNetworkImageViewer(
                                        height: 80.h,
                                        width: context.width,
                                        fit: BoxFit.cover,
                                        imageUrl: eventData.image,
                                      ),
                                      const Positioned(
                                        right: 10,
                                        child: RoundedDateViewer(
                                            month: 'JUN', date: '03'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  5.verticalSpace,
                                  Text(
                                    eventData.name,
                                    style: AppStyles.semiBoldText14
                                        .copyWith(
                                          color: AppColors.kColorPrimary,
                                        )
                                        .lineHeight(21.h),
                                  ),
                                  Text(
                                    eventData.description ?? '',
                                    style: AppStyles.regularText12
                                        .copyWith(
                                          color: AppColors.kColorNeutralBlack,
                                        )
                                        .lineHeight(18.h),
                                  ),
                                  21.verticalSpace,
                                ],
                              ).px(10.w),
                              CountdownTimer(
                                endTime: endTime,
                                widgetBuilder: (_, CurrentRemainingTime? time) {
                                  if (time == null) {
                                    return Text(
                                      'Voting Closed',
                                      style: AppStyles.boldText12
                                          .copyWith(color: AppColors.kColorRed),
                                    );
                                  }
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Assets.icons.stopWatch
                                            .svg(height: 24, width: 24),
                                      ),
                                      14.horizontalSpace,
                                      Expanded(
                                        child: SizedBox(
                                          width: context.width,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                13, 10, 7, 10),
                                            decoration: BoxDecoration(
                                              color: AppColors.kColorTextWhite,
                                              borderRadius: 20.rounded,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TimerCountView(
                                                  title: 'Days',
                                                  value: '${time.days ?? '00'}',
                                                ),
                                                TimerCountView(
                                                    title: 'Hours',
                                                    value:
                                                        '${time.hours ?? '00'}'),
                                                TimerCountView(
                                                    title: 'Min',
                                                    value:
                                                        '${time.min ?? '00'}'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                textStyle: AppStyles.semiBoldText14.copyWith(
                                    color: AppColors.kColorPrimary,
                                    fontWeight: FontWeight.w600),
                              ).px(10.w).pOnly(bottom: 10.w)
                            ],
                          ),
                        ).px(20.w).pOnly(bottom: 28.h);
                      },
                    ),
                  ),
                );
          },
        ),
      ],
    );
  }
}
