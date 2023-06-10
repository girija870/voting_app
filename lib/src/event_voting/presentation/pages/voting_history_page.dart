import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/cubit/event_vote_history/event_vote_history_cubit.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_contestant_page.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/circle_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class VotingHistoryPage extends StatefulWidget {
  const VotingHistoryPage({Key? key}) : super(key: key);

  @override
  State<VotingHistoryPage> createState() => _VotingHistoryPageState();
}

class _VotingHistoryPageState extends State<VotingHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventVoteHistoryCubit>()
        ..fetchEventVoteHistory(userId: 'string'),
      child: BlocBuilder<EventVoteHistoryCubit, EventVoteHistoryState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const Loader(),
              success: (data) {
                return Scaffold(
                  body: CustomScrollView(
                    slivers: [
                      const SliverAppBar(
                        pinned: false,
                        automaticallyImplyLeading: true,
                        title: Text('Voting History'),
                      ),
                      20.verticalSpace.toSliverBox,
                      SliverList(
                          delegate:
                              SliverChildBuilderDelegate((context, index) {
                        final _historyData = data.data[index];

                        return Row(
                          children: [
                            CircleView(
                                child: CacheNetworkImageViewer(
                              imageUrl: _historyData.event!.image,
                            )),
                            10.horizontalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_historyData.event!.participant!,
                                    style: AppStyles.text16PxBold.appFontFamily
                                        .inActiveAccent
                                        .lineHeight(18.h)),
                                Text(_historyData.event!.name,
                                    style: AppStyles.text14PxMedium
                                        .appFontFamily.inActiveAccent
                                        .lineHeight(18.h)),
                                Text(_historyData.voteDate!,
                                    style: AppStyles.text14PxMedium
                                        .appFontFamily.inActiveAccent
                                        .lineHeight(18.h)),
                              ],
                            ),
                            const Spacer(),
                            Text(
                                '${_historyData.count! > 1 ? '${_historyData.count} Votes' : '${_historyData.count} Votes'} ',
                                style: AppStyles.text14PxRegular.appFontFamily
                                    .inActiveAccent
                                    .lineHeight(18.h)),
                          ],
                        ).px(20.w).pOnly(bottom: 20.h);
                      }, childCount: data.data.length)),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
