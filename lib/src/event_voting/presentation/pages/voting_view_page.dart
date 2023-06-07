import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/app_colors.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_list_page.dart';

class VotingViewPage extends StatefulWidget {
  const VotingViewPage({Key? key}) : super(key: key);

  @override
  State<VotingViewPage> createState() => _VotingViewPageState();
}

class _VotingViewPageState extends State<VotingViewPage>
    with SingleTickerProviderStateMixin {
  // late TabController tabController;
  final tabs = [
    'All Events',
    'Award',
    'Award',
    'Award',
    'Award',
    'Award',
  ];

  @override
  void initState() {
    // tabController = TabController(length: tabs.length, vsync: this);
    selectedtabs = 0;
    super.initState();
  }

  int? selectedtabs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  floating: true,
                  pinned: true,
                  title: const Text('Voting'),
                  actions: [
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.account_circle_outlined),
                    ),
                    4.horizontalSpace,
                  ],
                  bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(50),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  tabs.length,
                                  (index) => Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: ActionChip(
                                          avatar: const Icon(Icons.close),
                                          onPressed: () => setState(() {
                                            selectedtabs = index;
                                          }),
                                          label: Text(tabs[index]),
                                          backgroundColor: selectedtabs == index
                                              ? AppColors.activeAccent
                                              : Colors.transparent,
                                        ).px(6.w),
                                      ))),
                        ),
                      ).pOnly(left: 14.w))),
            ];
          },
          body: EventListPage()),
    );
  }
}
