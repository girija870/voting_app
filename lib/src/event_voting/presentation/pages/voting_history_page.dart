import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/event_vote_history_riverpod.dart';
import 'package:voting_app/src/widgets/circle_view.dart';
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
    return Consumer(
      builder: (context, ref, child) {
        return ref.watch(eventVoteHistoryNotifierProvider('string')).maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Scaffold(body: Center(child: Loader())),
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
                    (data.isNotEmpty)
                        ? SliverList(
                            delegate:
                                SliverChildBuilderDelegate((context, index) {
                            final historyData = data[index];

                            return Row(
                              children: [
                                CircleView(
                                    child: CacheNetworkImageViewer(
                                  imageUrl: historyData.event!.image,
                                )),
                                10.horizontalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(historyData.event!.participant!,
                                        style: AppStyles.text16PxBold
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h)),
                                    Text(historyData.event!.name,
                                        style: AppStyles.text14PxMedium
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h)),
                                    Text(historyData.voteDate!,
                                        style: AppStyles.text14PxMedium
                                            .appFontFamily.inActiveAccent
                                            .lineHeight(18.h)),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                    '${historyData.count! > 1 ? '${historyData.count} Votes' : '${historyData.count} Votes'} ',
                                    style: AppStyles.text14PxRegular
                                        .appFontFamily.inActiveAccent
                                        .lineHeight(18.h)),
                              ],
                            ).px(20.w).pOnly(bottom: 20.h);
                          }, childCount: data.length))
                        : const Center(
                            child: Text('No Voting History yet'),
                          ).toSliverBox,
                  ],
                ),
              );
            });
      },
    );
  }
}
