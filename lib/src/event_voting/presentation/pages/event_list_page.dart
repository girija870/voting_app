import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_details_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_contestant_page.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/event_list_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return ref.watch(eventListNotifierProvider).maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const Loader(),
              error: (errMessage) => Center(
                child: Text(errMessage),
              ),
              success: (data) => ListView.builder(
                itemCount: data.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final eventData = data[index];
                  int endTime = DateTime.parse(
                          eventData.endDate ?? DateTime.now().toString())
                      .millisecondsSinceEpoch;

                  return CustomCardView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                              RoutePath.eventDetailsPage,
                              arguments: eventData),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: 8.circular, topRight: 8.circular),
                            child: CacheNetworkImageViewer(
                              height: 140,
                              width: context.width,
                              fit: BoxFit.cover,
                              imageUrl: eventData.image,
                            ),
                          ),
                        ),
                        5.verticalSpace,
                        Text(eventData.name,
                            style: AppStyles
                                .text14PxSemiBold.appFontFamily.activeNormal
                                .lineHeight(21.h)),
                        Text(eventData.description ?? '',
                            style: AppStyles
                                .text12PxRegular.appFontFamily.inActiveAccent
                                .lineHeight(18.h)),
                        6.verticalSpace,
                        CountdownTimer(
                          endTime: endTime,
                          widgetBuilder: (_, CurrentRemainingTime? time) {
                            if (time == null) {
                              return Text(
                                'Voting Closed',
                                style: AppStyles.text12PxBold
                                    .copyWith(color: AppColors.colorsRed),
                              );
                            }
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Voting Closes In:',
                                    style: AppStyles.text12PxRegular
                                        .appFontFamily.inActiveAccent
                                        .lineHeight(18.h)),
                                6.verticalSpace,
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          TimerCountView(
                                              title: 'Days',
                                              value: '${time.days ?? '00'}'),
                                          TimerCountView(
                                              title: 'Hours',
                                              value: '${time.hours ?? '00'}'),
                                          TimerCountView(
                                              title: 'Min',
                                              value: '${time.min ?? '00'}'),
                                        ],
                                      ),
                                    ),
                                    CustomButton(
                                      title: 'VOTE NOW',
                                      onPressed: () => Navigator.of(context)
                                          .pushNamed(
                                              RoutePath
                                                  .votingContestantListPage,
                                              arguments: eventData),
                                    )
                                  ],
                                ),
                              ],
                            );
                          },
                          textStyle: AppStyles.text14PxSemiBold.copyWith(
                              color: AppColors.activeAccent,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ).px(20.w).pOnly(bottom: 28.h);
                },
              ),
            );
      },
    );
  }
}
