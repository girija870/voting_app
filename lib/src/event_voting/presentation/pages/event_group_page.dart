import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/gen/assets.gen.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/core/widgets/custom_back_button.dart';
import 'package:voting_app/src/core/widgets/custom_text_field.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/group_list_riverpod.dart';
import 'package:voting_app/src/widgets/custom_card_view.dart';
import 'package:voting_app/src/widgets/loader/loader.dart';
import 'package:voting_app/src/widgets/network_image_cache.dart';

class EventGroupPage extends ConsumerStatefulWidget {
  const EventGroupPage({Key? key, required this.eventListData}) : super(key: key);

  final EventListData eventListData;

  @override
  ConsumerState<EventGroupPage> createState() => _EventGroupPageState();
}

class _EventGroupPageState extends ConsumerState<EventGroupPage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController()
      ..addListener(() {
        if (_searchController.text.isNotEmpty) {
          ref.read(eventGroupNotifierProvider(widget.eventListData.id).notifier).search(search: _searchController.text);
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          10.verticalSpace.toSliverBox,
          SliverAppBar(
            pinned: false,
            floating: true,
            leading: Center(
              child: CustomBackButton(
                onTap: () => Navigator.pop(context),
              ),
            ),
            title: Text(widget.eventListData.name),
            automaticallyImplyLeading: true,
          ),
          30.verticalSpace.toSliverBox,
          CustomTextField(
            hintText: 'Search',
            controller: _searchController,
            prefixIcon: Transform.scale(scale: .5, child: Assets.icons.search.svg()),
            suffixIcon: Transform.scale(scale: .5, child: Assets.icons.filtered.svg()),
          ).px(20.w).toSliverBox,
          30.verticalSpace.toSliverBox,
          Consumer(
            builder: (context, ref, child) {
              return ref.watch(eventGroupNotifierProvider(widget.eventListData.id)).maybeWhen(
                    orElse: () => const SizedBox().toSliverBox,
                    loading: () => const Center(child: Loader()).toSliverBox,
                    success: (data) {
                      return SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 30.h,
                          crossAxisSpacing: 20.w,
                          childAspectRatio: 1.1,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return CustomCardView(
                                boxShadowEnabled: true,
                                borderRadius: BorderRadius.only(
                                  topLeft: 20.circular,
                                  topRight: 20.circular,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: () => Navigator.of(context).pushNamed(RoutePath.votingContestantListPage, arguments: [widget.eventListData, data.data[index].participants]),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: 20.circular,
                                          topRight: 20.circular,
                                        ),
                                        child: CacheNetworkImageViewer(
                                          height: 100.h,
                                          width: 150.w,
                                          fit: BoxFit.fill,
                                          imageUrl: data.data[index].image,
                                        ),
                                      ),
                                    ),
                                    4.verticalSpace,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            data.data[index].name,
                                            style: AppStyles.semiBoldText12.copyWith(color: AppColors.kColorNeutralBlack),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Assets.icons.voteFilled.svg()
                                      ],
                                    ).px(4.w),
                                  ],
                                ));
                          },
                          childCount: data.data.length,
                        ),
                      );
                    },
                  );
            },
          ),
          40.verticalSpace.toSliverBox,
        ],
      ),
    );
  }
}
