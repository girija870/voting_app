import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/app_colors.dart';

import 'package:voting_app/src/event_voting/presentation/pages/event_list_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_history_page.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/event_category_riverpod.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/event_list_riverpod.dart';

class EventViewPage extends ConsumerStatefulWidget {
  const EventViewPage({Key? key}) : super(key: key);

  @override
  ConsumerState<EventViewPage> createState() => _EventViewPageState();
}

class _EventViewPageState extends ConsumerState<EventViewPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    selectedTabs = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    0.delayedSeconds.then((value) => ref
        .read(eventListNotifierProvider.notifier)
        .fetchEventList(eventType: 'ALL'));
  }

  int? selectedTabs;
  String selectedTabsValue = 'ALL';

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
                onPressed: () => Navigator.of(context)
                    .pushNamed(RoutePath.votingHistoryPage),
                icon: const Icon(Icons.history),
              ),
              4.horizontalSpace,
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Consumer(
                  builder: (context, ref, child) {
                    return ref.watch(eventCategoryNotifierProvider).maybeWhen(
                        orElse: () => const SizedBox(),
                        success: (data) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.generate(
                                    data.data.length,
                                    (index) => Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: ActionChip(
                                            side: const BorderSide(
                                                color: AppColors.activeAccent),
                                            onPressed: () => setState(() {
                                              selectedTabs = index;
                                              selectedTabsValue =
                                                  data.data[index];
                                              ref
                                                  .read(
                                                      eventListNotifierProvider
                                                          .notifier)
                                                  .fetchEventList(
                                                      eventType:
                                                          selectedTabsValue);
                                            }),
                                            label: Text(data.data[index]
                                                .replaceAll('_', ' ')),
                                            backgroundColor:
                                                selectedTabs == index
                                                    ? AppColors.activeAccent
                                                        .withOpacity(.4)
                                                    : Colors.transparent,
                                          ).px(6.w),
                                        ))),
                          );
                        });
                  },
                ),
              ).pOnly(left: 14.w),
            ),
          ),
        ];
      }, body: Builder(builder: (context) {
        return RefreshIndicator(
            onRefresh: () async {
              ref
                  .read(eventCategoryNotifierProvider.notifier)
                  .fetchEventCategory();
              ref
                  .read(eventListNotifierProvider.notifier)
                  .fetchEventList(eventType: selectedTabsValue);
            },
            child: const Center(child: EventListPage()));
      })),
    );
  }
}
