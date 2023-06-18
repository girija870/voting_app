import 'package:flutter/material.dart';
import 'package:voting_app/src/core/constants/route_path.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/presentation/pages/contestant_details_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/dinomination_list_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_details_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_group_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/event_view_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_contestant_page.dart';
import 'package:voting_app/src/event_voting/presentation/pages/voting_history_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.eventViewPage:
        return MaterialPageRoute(
          builder: (_) => const EventViewPage(),
        );

      case RoutePath.eventDetailsPage:
        final eventData = settings.arguments as EventListData;

        return MaterialPageRoute(
          builder: (_) => EventDetailsPage(
            eventListResponseModel: eventData,
          ),
        );

      case RoutePath.votingContestantListPage:
        final eventData = settings.arguments as EventListData;
        return MaterialPageRoute(
          builder: (_) =>
              VotingContestantPage(eventListResponseModel: eventData),
        );

      case RoutePath.groupListPage:
        final eventData = settings.arguments as EventListData;

        return MaterialPageRoute(
          builder: (_) => EventGroupPage(eventListData: eventData),
        );

      case RoutePath.contestantDetailsPage:
        List<dynamic> arguments = settings.arguments as List<dynamic>;

        return MaterialPageRoute(
          builder: (_) => ContestantDetailsPage(
            index: arguments[0],
            eventListResponseModel: arguments[1],
          ),
        );

      case RoutePath.denominationListPage:
        List<dynamic> arguments = settings.arguments as List<dynamic>;
        return MaterialPageRoute(
          builder: (_) => DenominationListPage(
              participantIndex: arguments[0],
              eventListResponseModel: arguments[1]),
        );

      case RoutePath.votingHistoryPage:
        return MaterialPageRoute(
          builder: (_) => const VotingHistoryPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const EventViewPage(),
        );
    }
  }
}
