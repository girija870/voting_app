import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/group_list_riverpod.dart';
import 'package:voting_app/src/widgets/custom_button.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class EventGroupPage extends StatelessWidget {
  const EventGroupPage({Key? key, required this.eventListData})
      : super(key: key);

  final EventListData eventListData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          return ref
              .watch(eventGroupNotifierProvider(eventListData.id))
              .maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => const Center(child: Loader()),
                  success: (data) {
                    return CustomScrollView(
                      slivers: [
                        SliverAppBar(
                            pinned: true,
                            floating: true,
                            automaticallyImplyLeading: true,
                            bottom: PreferredSize(
                                preferredSize: const Size.fromHeight(40),
                                child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(eventListData.name))
                                    .pOnly(left: 20))),
                        20.verticalSpace.toSliverBox,
                        SliverGrid(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.all(60.circular),
                                          child: CacheNetworkImageViewer(
                                            width: 80,
                                            height: 80,
                                            imageUrl: data.data[index].image,
                                          ),
                                        ),
                                      ),
                                      4.verticalSpace,
                                      Text(
                                        data.data[index].name,
                                        style: AppStyles.semiBoldText12
                                            .copyWith(
                                                color: AppColors
                                                    .kColorNeutralBlack),
                                      ),
                                      6.verticalSpace,
                                      CustomButton(
                                          width: 120,
                                          title: 'SELECT',
                                          onPressed: () => Navigator.of(context)
                                                  .pushNamed(
                                                      RoutePath
                                                          .votingContestantListPage,
                                                      arguments: [
                                                    eventListData,
                                                    data.data[index]
                                                        .participants
                                                  ]))
                                    ],
                                  )).px(20.h);
                            },
                            childCount: data.data.length,
                          ),
                        ),
                      ],
                    );
                  });
        },
      ),
    );
  }
}
