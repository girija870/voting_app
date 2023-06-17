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

class EventGroupPage extends StatelessWidget {
  const EventGroupPage({Key? key, required this.eventListResponseModel})
      : super(key: key);

  final EventListData eventListResponseModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              floating: true,
              automaticallyImplyLeading: true,
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(40),
                  child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(eventListResponseModel.name))
                      .pOnly(left: 20))),
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
                            title: 'SELECT',
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
