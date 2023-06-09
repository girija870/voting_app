import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/cubit/event_list/event_list_cubit.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_details_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_contestant_page.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';

class EventListPage extends StatefulWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage>
    with SingleTickerProviderStateMixin {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000000 * 60 * 30;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EventListCubit>()..fetchEventList(eventType: 'ALL'),
      child: BlocBuilder<EventListCubit, EventListState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            loading: () => CircularProgressIndicator(),
            error: (errMessage) => Center(
              child: Text(errMessage),
            ),
            success: (data) => ListView.builder(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => CustomCardView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EventDetailsPage(),
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: 8.circular, topRight: 8.circular),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://english.khabarhub.com/wp-content/uploads/2020/12/Pro_Ktm_Missnepal2020b-1-scaled.jpg',
                      ),
                    ),
                  ),
                  5.verticalSpace,
                  Text('Mrs. National 2023',
                      style: AppStyles
                          .text14PxSemiBold.appFontFamily.activeNormal
                          .lineHeight(21.h)),
                  Text(
                      'The Mrs. National 2023 is an event organized b y Crezona Media Private Limited',
                      style: AppStyles
                          .text12PxRegular.appFontFamily.inActiveAccent
                          .lineHeight(18.h)),
                  6.verticalSpace,
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
                          style: AppStyles.text12PxBold
                              .copyWith(color: AppColors.colorsRed),
                        );
                      }
                      return Row(
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
                                    title: 'Min', value: '${time.min ?? '00'}'),
                              ],
                            ),
                          ),
                          CustomButton(
                            title: 'VOTE NOW',
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const VotingContestantPage(),
                                )),
                          )
                        ],
                      );
                    },
                    textStyle: AppStyles.text14PxSemiBold.copyWith(
                        color: AppColors.activeAccent,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )).px(20.w).pOnly(bottom: 28.h),
            ),
          );
        },
      ),
    );
  }
}
