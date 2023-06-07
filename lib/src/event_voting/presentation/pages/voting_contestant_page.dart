import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class VotingContestantPage extends StatefulWidget {
  const VotingContestantPage({Key? key}) : super(key: key);

  @override
  State<VotingContestantPage> createState() => _VotingContestantPageState();
}

class _VotingContestantPageState extends State<VotingContestantPage> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 100000 * 60 * 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              floating: true,
              automaticallyImplyLeading: true,
              actions: [const Icon(Icons.share).pOnly(right: 20.w)],
              // title: const Text('Mrs.National 2023'),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: Column(
                    children: [Text('Mrs.National 2023')],
                  ))),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Vote you favorite contestant',
                    style: AppStyles
                        .text12PxRegular.appFontFamily.inActiveAccent
                        .lineHeight(18.h)),
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
                )
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 4,
              childAspectRatio: .9,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CustomCardView(
                    child: Column(
                  children: [
                    Text(
                      '01',
                      style: AppStyles.text10PxBold
                          .copyWith(color: AppColors.inActiveAccent),
                    ),
                    4.verticalSpace,
                    ClipRRect(
                      borderRadius: BorderRadius.all(60.circular),
                      child: const NetworkImageViewer(
                        width: 80,
                        height: 80,
                        imageUrl:
                            'https://english.khabarhub.com/wp-content/uploads/2020/12/Pro_Ktm_Missnepal2020b-1-scaled.jpg',
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      'Sn Gurung',
                      style: AppStyles.text10PxBold
                          .copyWith(color: AppColors.inActiveAccent),
                    ),
                    6.verticalSpace,
                    const CustomButton(
                      width: 120,
                      title: 'VOTE',
                    )
                  ],
                )).py(10.h);
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
