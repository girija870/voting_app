import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_contestant_page.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/timer_count_view.dart';
import 'package:voting_app/src/widgets/circle_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class ContestantDetailsPage extends StatelessWidget {
  const ContestantDetailsPage(
      {Key? key, required this.eventListResponseModel, required this.index})
      : super(key: key);

  final EventListResponseModel eventListResponseModel;
  final int index;

  @override
  Widget build(BuildContext context) {
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
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(8.circular),
                      child: CacheNetworkImageViewer(
                        height: 140,
                        width: context.width,
                        fit: BoxFit.cover,
                        imageUrl: eventListResponseModel.image,
                      ),
                    ),
                    Positioned(
                      bottom: -60,
                      right: 0,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleView(
                              child: CacheNetworkImageViewer(
                                  imageUrl: eventListResponseModel
                                      .participants[index].image)),
                          Text(
                            eventListResponseModel.participants[index].id,
                            style: AppStyles
                                .text14PxBold.appFontFamily.activeNormal
                                .lineHeight(21.h),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                60.verticalSpace,
                Text(
                  eventListResponseModel.participants[index].name,
                  style: AppStyles.text14PxBold.appFontFamily.activeNormal
                      .lineHeight(21.h),
                  textAlign: TextAlign.center,
                ),
                40.verticalSpace,
                const CustomButton(
                  width: 120,
                  title: 'VOTE',
                )
              ],
            ).px(20.w),
          )
        ],
      ),
    );
  }
}
