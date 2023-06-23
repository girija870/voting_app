import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/core/widgets/custom_back_button.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/post_vote_riverpod.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';
import 'package:voting_app/src/widgets/vertical_timer_count_view.dart';

class PaymentForVotePage extends ConsumerWidget {
  const PaymentForVotePage({
    Key? key,
    required this.participantIndex,
    required this.eventListResponseModel,
  }) : super(key: key);

  final int participantIndex;
  final EventListData eventListResponseModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endTime = DateTime.parse(eventListResponseModel.endDate ?? DateTime.now().toString()).millisecondsSinceEpoch;
    ref.listen(postVoteNotifierProvider, (previous, next) {
      next.maybeWhen(
          orElse: () => SizedBox.new,
          error: (errMessage) {
            Navigator.pop(context);
            context.showErrorSnackBar(title: 'error', message: errMessage, context: context);
          },
          success: (data) {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(RoutePath.votingHistoryPage);
          });
    });
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            leading: Center(
              child: CustomBackButton(
                onTap: () => Navigator.pop(context),
              ),
            ),
            title: const Text('Pay'),
            automaticallyImplyLeading: true,
          ),
          10.verticalSpace.toSliverBox,
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            child: CacheNetworkImageViewer(
              imageUrl: eventListResponseModel.image,
              height: 150.h,
              width: context.width,
            ),
          ).toSliverBox,
          14.verticalSpace.toSliverBox,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventListResponseModel.name,
                    style: AppStyles.semiBoldText18.copyWith(
                      color: AppColors.kColorActive,
                    ),
                  ),
                  Text(
                    eventListResponseModel.location ?? '',
                    style: AppStyles.regularText12.copyWith(
                      color: AppColors.kColorActive.withOpacity(.70),
                    ),
                  ),
                  Text(
                    '43',
                    style: AppStyles.regularText12.copyWith(
                      color: AppColors.kColorActive.withOpacity(.70),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Booking Closes In',
                    style: AppStyles.regularText12.copyWith(
                      color: AppColors.kColorActive.withOpacity(.70),
                    ),
                  ),
                  4.verticalSpace,
                  // Container(
                  //   height: 30.h,
                  //   width: 120.w,
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 10.w,
                  //     vertical: 3.h,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: AppColors.kColorTextWhite,
                  //     borderRadius: BorderRadius.circular(50.r),
                  //   ),
                  //   child: const Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('05'),
                  //       Text('05'),
                  //       Text('05'),
                  //     ],
                  //   ),
                  // ),
                  HorizontalTimerCountView(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 3.h,
                    ),
                    color: AppColors.kColorTextWhite,
                    showDays: false,
                    endTime: endTime,
                    width: 120.w,
                    height: 30,
                    tileStyle: AppStyles.regularText12.copyWith(
                      color: AppColors.kColorDark,
                    ),
                    valueStyle: AppStyles.semiBoldText12.copyWith(
                      color: AppColors.kColorDark,
                    ),
                  ),
                ],
              )
            ],
          ).px(20.w).toSliverBox,
          20.verticalSpace.toSliverBox,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.voteFilled.svg(width: 50.w, height: 50.h),
              10.horizontalSpace,
              Text(
                '3000',
                style: AppStyles.semiBoldText16.copyWith(color: AppColors.kColorNeutralBlack),
              )
            ],
          ).toSliverBox,
          20.verticalSpace.toSliverBox,
          Center(
            child: Text(
              'Nrs.10000',
              style: AppStyles.semiBoldText16.lineHeight(21.h).copyWith(color: AppColors.kColorNeutralBlack),
            ),
          ).toSliverBox,
          170.verticalSpace.toSliverBox,
          Consumer(
            builder: (context, ref, child) {
              final loading = ref.watch(postVoteNotifierProvider).maybeWhen(orElse: () => false, loading: () => true);
              return loading
                  ? const Center(child: CircularProgressIndicator())
                  : CustomButton(
                      width: context.width * .5,
                      title: 'Pay',
                      titleStyle: AppStyles.mediumText14.copyWith(color: AppColors.kColorWhite).lineHeight(16.59),
                      onPressed: () {
                        Navigator.of(context).pushNamed(RoutePath.successPage);
                        // ref.read(postVoteNotifierProvider.notifier).postVote(
                        //     param: ContestantVotingParam(
                        //         userId: 'String',
                        //         participantId: 'eventDetailsId',
                        //         count: 4,
                        //         type: 'type',
                        //         username: '9849423081',
                        //         denoId: 'denoId' ?? '',
                        //         refTransactionId:
                        //         Random().nextInt(40).toString()));
                      },
                    );
            },
          ).px(20.w).toSliverBox
        ],
      ),
    );
  }
}
