import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/state/app_state.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_vote_history_use_case.dart';

class EventVoteHistoryNotifier
    extends StateNotifier<AppState<EventHistoryResponseModel>> {
  EventVoteHistoryNotifier(this._useCase) : super(const AppState.initial());

  final FetchVoteHistoryUseCase _useCase;

  void fetchEventVoteHistory({required String userId}) async {
    state = (const AppState.loading());
    state = ((await _useCase.execute(userId)).fold(
        (failure) => failure.when(
            serverError: (errMessage) => AppState.error(message: errMessage),
            noInternet: AppState.noInternet),
        (data) => AppState.success(data: data)));
  }
}

final eventVoteHistoryNotifierProvider = StateNotifierProvider.family
    .autoDispose<EventVoteHistoryNotifier, AppState<EventHistoryResponseModel>,
        String>((ref, userId) {
  return EventVoteHistoryNotifier(getIt<FetchVoteHistoryUseCase>())
    ..fetchEventVoteHistory(userId: userId);
});
