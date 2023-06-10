import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/extensions/widget_extensions.dart';
import 'package:voting_app/src/core/themes/app_colors.dart';
import 'package:voting_app/src/event_voting/presentation/cubit/event_category/event_category_cubit.dart';
import 'package:voting_app/src/event_voting/presentation/cubit/event_list/event_list_cubit.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_list_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_history_page.dart';

class EventViewPage extends StatefulWidget {
  const EventViewPage({Key? key}) : super(key: key);

  @override
  State<EventViewPage> createState() => _EventViewPageState();
}

class _EventViewPageState extends State<EventViewPage>
    with SingleTickerProviderStateMixin {
  final tabs = [
    'All Events',
    'Award',
  ];

  @override
  void initState() {
    selectedtabs = 0;
    super.initState();
  }

  int? selectedtabs;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<EventCategoryCubit>()..fetchEventCategory(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<EventListCubit>()..fetchEventList(eventType: 'ALL'),
        ),
      ],
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  title: const Text('Voting'),
                  actions: [
                    IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VotingHistoryPage(),
                          )),
                      icon: const Icon(Icons.history),
                    ),
                    4.horizontalSpace,
                  ],
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(80),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                          BlocBuilder<EventCategoryCubit, EventCategoryState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              orElse: () => const SizedBox(),
                              success: (data) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: List.generate(
                                          data.data.length,
                                          (index) => Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: ActionChip(
                                                  onPressed: () => setState(() {
                                                    selectedtabs = index;
                                                    context
                                                        .read<EventListCubit>()
                                                        .fetchEventList(
                                                            eventType: data
                                                                .data[index]);
                                                  }),
                                                  label: Text(data.data[index]),
                                                  backgroundColor:
                                                      selectedtabs == index
                                                          ? AppColors
                                                              .activeAccent
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
            },
            body: const EventListPage()),
      ),
    );
  }
}
