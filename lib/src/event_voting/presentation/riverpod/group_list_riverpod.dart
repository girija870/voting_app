import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/state/app_state.dart';
import 'package:voting_app/src/event_voting/data/models/response/group_list/group_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_category_use_case.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_group_list_use_case.dart';

class GroupListNotifier
    extends StateNotifier<AppState<GroupListResponseModel>> {
  GroupListNotifier(this._useCase) : super(const AppState.initial());

  final FetchGroupListUseCase _useCase;

  Future<void> fetchGroupList({required String eventId}) async {
    state = (const AppState.loading());
    state = ((await _useCase.execute(eventId)).fold(
        (failure) => failure.when(
            serverError: (errMessage) => AppState.error(message: errMessage),
            noInternet: AppState.noInternet),
        (data) => AppState.success(data: data)));
  }
}

final eventGroupNotifierProvider = StateNotifierProvider.family<
    GroupListNotifier,
    AppState<GroupListResponseModel>,
    String>((ref, eventId) {
  return GroupListNotifier(getIt<FetchGroupListUseCase>())
    ..fetchGroupList(eventId: eventId);
});
