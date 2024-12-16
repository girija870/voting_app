import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/enums/event_type.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/core/widgets/custom_back_button.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/rounded_date_viewer.dart';
import 'package:voting_app/src/widgets/vertical_timer_count_view.dart';
import 'package:voting_app/src/widgets/widgets.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key, required this.eventListResponseModel}) : super(key: key);
  final EventListData eventListResponseModel;

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.parse(eventListResponseModel.endDate ?? DateTime.now().toString()).millisecondsSinceEpoch;

    final date = DateFormat('dd').format(DateTime.parse(eventListResponseModel.startDate ?? DateTime.now().toString()));

    final month = DateFormat('MMM').format(DateTime.parse(eventListResponseModel.startDate ?? DateTime.now().toString()));
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.kColorTextWhite,
          borderRadius: BorderRadius.only(
            topLeft: 50.circular,
            topRight: 50.circular,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            10.verticalSpace,
            Divider(
              endIndent: context.width * 0.4,
              thickness: 3,
              indent: context.width * 0.4,
            ),
            10.verticalSpace,
            Center(
              child: SizedBox(
                width: 241,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Event ends in',
                      style: AppStyles.regularText12.copyWith(
                        color: AppColors.kColorActive,
                      ),
                    ),
                    10.verticalSpace,
                    Center(
                      child: HorizontalTimerCountView(
                        endTime: endTime,
                        width: 241,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.verticalSpace,
            CustomButton(
              title: 'VOTE NOW',
              width: context.width,
              onPressed: () => (EventType.direct.name.toLowerCase() == eventListResponseModel.type.toLowerCase())
                  ? Navigator.of(context).pushNamed(
                      RoutePath.votingContestantListPage,
                      arguments: [eventListResponseModel, eventListResponseModel.participants],
                    )
                  : Navigator.of(context).pushNamed(
                      RoutePath.groupListPage,
                      arguments: eventListResponseModel,
                    ),
              icon: Assets.icons.voteFav.svg(
                colorFilter: const ColorFilter.mode(
                  AppColors.kColorTextWhite,
                  BlendMode.srcIn,
                ),
              ),
            ).px(35.w),
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            10.verticalSpace.toSliverBox,
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: 8.circular,
                      topRight: 8.circular,
                    ),
                    child: Stack(
                      children: [
                        CacheNetworkImageViewer(
                          height: 250.h,
                          width: context.width,
                          fit: BoxFit.cover,
                          imageUrl: eventListResponseModel.image,
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: CustomBackButton(
                            onTap: () => Navigator.pop(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      RoundedDateViewer(
                        month: month,
                        date: date,
                        backgroundColor: AppColors.kColorTextWhite,
                      ),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              eventListResponseModel.name,
                              style: AppStyles.boldText14.copyWith(color: AppColors.kColorPrimary).lineHeight(21.h),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              eventListResponseModel.location ?? '',
                              style: AppStyles.regularText12.copyWith(
                                color: AppColors.kColorActive.withOpacity(.70),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                        child: SizedBox.shrink(),
                      ),
                    ],
                  ).px(20.w),
                  20.verticalSpace,
                  if (eventListResponseModel.description != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: AppStyles.regularText16.copyWith(
                            color: AppColors.kColorActive,
                          ),
                        ),
                        10.verticalSpace,
                        Text(
                          eventListResponseModel.description ?? '',
                          style: AppStyles.regularText12.copyWith(color: AppColors.kColorNeutralBlack).lineHeight(18.h),
                        ),
                      ],
                    ).px(20.w),
                  // 20.verticalSpace,
                  // Container(
                  //   color: AppColors.kColorSecondary.withOpacity(.1),
                  //   padding: EdgeInsets.symmetric(vertical: 8.h),
                  //   child: Column(
                  //     children: [
                  //       Text('Voting Closes In:', style: AppStyles.regularText12.copyWith(color: AppColors.kColorNeutralBlack).lineHeight(18.h)),
                  //       6.verticalSpace,
                  //       CountdownTimer(
                  //         endTime: endTime,
                  //         widgetBuilder: (_, CurrentRemainingTime? time) {
                  //           if (time == null) {
                  //             return Text(
                  //               'Voting Closed',
                  //               style: AppStyles.regularText12.copyWith(color: AppColors.kColorNeutralBlack),
                  //             );
                  //           }
                  //           return Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               TimerCountView(title: 'Days', value: '${time.days ?? '00'}'),
                  //               TimerCountView(title: 'Hours', value: '${time.hours ?? '00'}'),
                  //               TimerCountView(title: 'Min', value: '${time.min ?? '00'}'),
                  //             ],
                  //           );
                  //         },
                  //         textStyle: AppStyles.semiBoldText14.copyWith(color: AppColors.kColorSecondary, fontWeight: FontWeight.w600),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // 40.verticalSpace,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
