import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/state/app_state.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart';

class EventListNotifier
    extends StateNotifier<AppState<List<EventListData>>> {
  EventListNotifier(this._useCase) : super(const AppState.initial());

  final FetchEventListUseCase _useCase;

  Future<void> fetchEventList({required String eventType}) async {
    state = (const AppState.loading());
    state = ((await _useCase.execute(eventType)).fold(
        (failure) => failure.when(
            serverError: (errMessage) => AppState.error(message: errMessage),
            noInternet: AppState.noInternet),
        (data) => AppState.success(data: data.data)));
  }
}

final eventListNotifierProvider = StateNotifierProvider<EventListNotifier,
    AppState<List<EventListData>>>((ref) {
  return EventListNotifier(getIt<FetchEventListUseCase>());
});
