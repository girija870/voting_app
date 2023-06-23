import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/widgets/custom_back_button.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_list_page.dart';
import 'package:voting_app/src/event_voting/presentation/riverpod/event_list_riverpod.dart';

class EventViewPage extends ConsumerStatefulWidget {
  const EventViewPage({Key? key}) : super(key: key);

  @override
  ConsumerState<EventViewPage> createState() => _EventViewPageState();
}

class _EventViewPageState extends ConsumerState<EventViewPage> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    selectedTabs = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    0.delayedSeconds.then((value) => ref.read(eventListNotifierProvider.notifier).fetchEventList(eventType: 'ALL'));
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
              leading: Center(child: CustomBackButton(onTap: () {})),
              title: const Text('Events'),
              actions: [
                IconButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    RoutePath.votingHistoryPage,
                  ),
                  icon: const Icon(Icons.history),
                ),
              ],
            ),
          ];
        },
        body: const EventListPage(),
      ),
    );
  }
}
