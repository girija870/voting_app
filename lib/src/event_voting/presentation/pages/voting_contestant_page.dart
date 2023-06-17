import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/pages/contestant_details_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/dinomination_list_page.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class VotingContestantPage extends StatelessWidget {
  const VotingContestantPage({Key? key, required this.eventListResponseModel})
      : super(key: key);

  final EventListData eventListResponseModel;

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.parse(
            eventListResponseModel.endDate ?? DateTime.now().toString())
        .millisecondsSinceEpoch;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              floating: true,
              automaticallyImplyLeading: true,
              actions: [const Icon(Icons.share).pOnly(right: 20.w)],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(40),
                  child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(eventListResponseModel.name))
                      .pOnly(left: 20))),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.verticalSpace,
                Text('Vote you favorite contestant',
                        style: AppStyles
                            .text12PxRegular.appFontFamily.inActiveAccent
                            .lineHeight(18.h))
                    .pOnly(left: 20.w),
                10.verticalSpace,
                Center(
                  child: Container(
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
                                    title: 'Days',
                                    value: '${time.days ?? '00'}'),
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
                )
              ],
            ),
          ),
          20.verticalSpace.toSliverBox,
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 0,
              childAspectRatio: .9,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CustomCardView(
                    boxShadowEnabled: true,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        10.verticalSpace,
                        Text(
                          eventListResponseModel.participants[index].id,
                          style: AppStyles.text12PxRegular
                              .copyWith(color: AppColors.inActiveAccent),
                        ),
                        4.verticalSpace,
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                              RoutePath.contestantDetailsPage,
                              arguments: [index, eventListResponseModel]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(60.circular),
                            child: CacheNetworkImageViewer(
                              width: 80,
                              height: 80,
                              imageUrl: eventListResponseModel
                                  .participants[index].image,
                            ),
                          ),
                        ),
                        4.verticalSpace,
                        Text(
                          eventListResponseModel.participants[index].name,
                          style: AppStyles.text12PxSemiBold
                              .copyWith(color: AppColors.inActiveAccent),
                        ),
                        6.verticalSpace,
                        CustomButton(
                            width: 120,
                            title: 'VOTE',
                            onPressed: () => Navigator.of(context).pushNamed(
                                RoutePath.denominationListPage,
                                arguments: [index, eventListResponseModel]))
                      ],
                    )).px(20.h);
              },
              childCount: eventListResponseModel.participants.length,
            ),
          ),
        ],
      ),
    );
  }
}
