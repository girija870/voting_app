import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/extensions.dart';
import 'package:voting_app/src/core/extensions/text_style_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/app_colors.dart';
import 'package:voting_app/src/core/themes/themes.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_list_page.dart';
import 'package:voting_app/src/widgets/custom_app_bar.dart';

class VotingViewPage extends StatefulWidget {
  const VotingViewPage({Key? key}) : super(key: key);

  @override
  State<VotingViewPage> createState() => _VotingViewPageState();
}

class _VotingViewPageState extends State<VotingViewPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final tabs = [
    'All Events',
    'Award',
  ];

  @override
  void initState() {
    tabController = TabController(length: tabs.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          floating: true,
          leadingWidth: 116,
          leading: CustomAppBar(
            appBarTitle: 'Voting',
          ),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          expandedHeight: 160,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10.h),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 22.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Voting',
                        style: TextStyle(
                          color: AppColors.activeNormal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      20.verticalSpace,
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: AppColors.whiteColor,
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        dividerColor: AppColors.activeNormal,
                        indicator: BoxDecoration(
                          color: AppColors.activeAccent,
                          borderRadius: 8.rounded,
                        ),
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
                        unselectedLabelColor: AppColors.inActiveAccent,
                        controller: tabController,
                        onTap: null,
                        isScrollable: true,
                        labelStyle: AppStyles.text14PxMedium.appFontFamily
                            .lineHeight(22.h),
                        tabs: List.generate(
                          tabs.length,
                          (index) => Tab(
                            height: 30.h,
                            text: tabs[index],
                          ),
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: context.height,
            child: TabBarView(
              controller: tabController,
              children:
                  List.generate(tabs.length, (index) => const EventListPage()),
            ),
          ),
        ),
        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return Column(
        //         children: [
        //           ClipRRect(
        //             child: CachedNetworkImage(
        //               imageUrl:
        //                   'https://english.khabarhub.com/wp-content/uploads/2020/12/Pro_Ktm_Missnepal2020b-1-scaled.jpg',
        //             ),
        //           ),
        //           Text('Mrs. National 2023',
        //               style: AppStyles.text14PxMedium.appFontFamily.primary),
        //           Text(
        //               'The Mrs. National 2023 is an event organized b y Crezona Media Private Limited',
        //               style: AppStyles.text12PxBold.appFontFamily.primary)
        //         ],
        //       );
        //     },
        //     childCount: 10,
        //   ),
        // ),
      ],
    ));
  }
}
