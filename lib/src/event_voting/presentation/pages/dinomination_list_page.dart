import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/core/widgets/custom_back_button.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/denomination_list_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/widgets/manual_voting_bottom_sheet.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class DenominationListPage extends StatelessWidget {
  const DenominationListPage({
    Key? key,
    required this.participantIndex,
    required this.eventListResponseModel,
  }) : super(key: key);

  final int participantIndex;
  final EventListData eventListResponseModel;

  @override
  Widget build(BuildContext context) {
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
            title: const Text('Select Votes'),
            automaticallyImplyLeading: true,
          ),
          10.verticalSpace.toSliverBox,
          Stack(
            children: [
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
              ),
            ],
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
                    eventListResponseModel.location ?? 'Tripureshor, Kathmandu',
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
                  Container(
                    height: 30.h,
                    width: 120.w,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.kColorTextWhite,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('05'),
                        Text('05'),
                        Text('05'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ).px(20.w).toSliverBox,
          20.verticalSpace.toSliverBox,
          Text(
            'Select Any Option to Vote',
            style: AppStyles.semiBoldText14.copyWith(
              color: AppColors.kColorActive,
            ),
          ).px(20.w).toSliverBox,
          22.verticalSpace.toSliverBox,
          Consumer(
            builder: (context, ref, child) {
              return ref.watch(denominationListNotifierProvider(eventListResponseModel.id)).maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const Loader(),
                    success: (data) {
                      return Column(
                        children: [
                          ...List.generate(
                            data.length,
                            (index) => ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed(RoutePath.payForVotePage,arguments: [index,eventListResponseModel]);

                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              tileColor: AppColors.kColorTextWhite.withOpacity(.70),
                              leading: Assets.icons.heart.svg(),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              title: Text(
                                '${data[index].count.toString()} Votes',
                                style: AppStyles.semiBoldText18.copyWith(
                                  color: AppColors.kColorActive,
                                ),
                              ),
                              trailing: Text(
                                'Rs. ${data[index].amount}',
                                style: AppStyles.regularText16.copyWith(
                                  color: AppColors.kColorActive,
                                ),
                              ),
                            ),
                          ),
                          10.verticalSpace,
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: AppColors.kColorActive.withOpacity(.70),
                                  thickness: 1,
                                ),
                              ),
                              10.horizontalSpace,
                              Text(
                                'OR',
                                style: AppStyles.semiBoldText14.copyWith(
                                  color: AppColors.kColorActive,
                                ),
                              ),
                              10.horizontalSpace,
                              Expanded(
                                child: Divider(
                                  color: AppColors.kColorActive.withOpacity(.70),
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          10.verticalSpace,
                          ListTile(
                            onTap: () => showModalBottomSheet(
                              backgroundColor: AppColors.kColorWhite,
                              context: context,
                              builder: (context) => ManualVotingBottomSheet(
                                eventDetailsId: eventListResponseModel.participants[participantIndex].id,
                                price: eventListResponseModel.price,
                              ),
                              isScrollControlled: true,
                              useRootNavigator: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            leading: Assets.icons.heart.svg(),
                            tileColor: AppColors.kColorTextWhite.withOpacity(.70),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            title: Text(
                              'Enter Votes Manually',
                              style: AppStyles.semiBoldText18.copyWith(
                                color: AppColors.kColorActive,
                              ),
                            ),
                            subtitle: Text(
                              'Rs 100/vote',
                              style: AppStyles.regularText12.copyWith(
                                color: AppColors.kColorActive.withOpacity(.70),
                              ),
                            ),
                          ),
                          40.verticalSpace,
                          // SizedBox(
                          //   width: context.width,
                          //   child: const Row(
                          //     children: [
                          //       Expanded(child: Drawer()),
                          //       Text('OR'),
                          //       Expanded(child: Drawer()),
                          //     ],
                          //   ),
                          // ),
                        ],
                      );
                    },
                  );
            },
          ).px(20.w).toSliverBox,
        ],
      ),
    );
  }
}
