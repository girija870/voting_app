import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_contestant_page.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key, required this.eventListResponseModel})
      : super(key: key);
  final EventListResponseModel eventListResponseModel;

  @override
  Widget build(BuildContext context) {
    int endTime =
        DateTime.parse(eventListResponseModel.endDate).millisecondsSinceEpoch;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            automaticallyImplyLeading: true,
            actions: [const Icon(Icons.share).pOnly(right: 20.w)],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: 8.circular, topRight: 8.circular),
                  child: CacheNetworkImageViewer(
                    height: 140,
                    width: context.width,
                    fit: BoxFit.cover,
                    imageUrl: eventListResponseModel.image,
                  ),
                ),
                10.verticalSpace,
                Text(
                  eventListResponseModel.name,
                  style: AppStyles.text14PxBold.appFontFamily.activeNormal
                      .lineHeight(21.h),
                  textAlign: TextAlign.center,
                ),
                10.verticalSpace,
                Text(
                  eventListResponseModel.description,
                  style: AppStyles.text12PxRegular.appFontFamily.inActiveAccent
                      .lineHeight(18.h),
                ),
                20.verticalSpace,
                Container(
                  color: AppColors.activeAccent.withOpacity(.1),
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Column(
                    children: [
                      Text('Voting Closes In:',
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
                              style: AppStyles.text12PxRegular
                                  .copyWith(color: AppColors.inActiveAccent),
                            );
                          }
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TimerCountView(
                                  title: 'Days', value: '${time.days ?? '00'}'),
                              TimerCountView(
                                  title: 'Hours',
                                  value: '${time.hours ?? '00'}'),
                              TimerCountView(
                                  title: 'Min', value: '${time.min ?? '00'}'),
                            ],
                          );
                        },
                        textStyle: AppStyles.text14PxSemiBold.copyWith(
                            color: AppColors.activeAccent,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                40.verticalSpace,
                CustomButton(
                  title: 'VOTE NOW',
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VotingContestantPage(
                          eventListResponseModel: eventListResponseModel,
                        ),
                      )),
                ),
              ],
            ).px(20.w),
          )
        ],
      ),
    );
  }
}
