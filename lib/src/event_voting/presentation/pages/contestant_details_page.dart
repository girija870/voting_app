import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/pages/dinomination_list_page.dart';
import 'package:voting_app/src/widgets/circle_view.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class ContestantDetailsPage extends StatelessWidget {
  const ContestantDetailsPage(
      {Key? key, required this.eventListResponseModel, required this.index})
      : super(key: key);

  final EventListData eventListResponseModel;
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
                            style: AppStyles.boldText14
                                .copyWith(color: AppColors.kColorPrimary)
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
                  style: AppStyles.boldText14.copyWith(color: AppColors.kColorPrimary)
                      .lineHeight(21.h),
                  textAlign: TextAlign.center,
                ),
                40.verticalSpace,
                CustomButton(
                    width: 120,
                    title: 'VOTE',
                    onPressed: () => Navigator.of(context).pushNamed(
                        RoutePath.denominationListPage,
                        arguments: [index, eventListResponseModel]))
              ],
            ).px(20.w),
          )
        ],
      ),
    );
  }
}
