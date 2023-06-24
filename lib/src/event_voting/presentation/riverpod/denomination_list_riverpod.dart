import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/state/app_state.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_denomination_list_use_case.dart';

import '../../data/models/response/denomination/denomination_list_response_model.dart';

class DenominationListNotifier
    extends StateNotifier<AppState<List<DenominationListResponseModel>>> {
  DenominationListNotifier(this._useCase) : super(const AppState.initial());

  final FetchDenominationListUseCase _useCase;

  Future<void> fetchDenominationList({required String eventId}) async {
    state = (const AppState.loading());
    state = ((await _useCase.execute(eventId)).fold(
        (failure) => failure.when(
            serverError: (errMessage) => AppState.error(message: errMessage),
            noInternet: AppState.noInternet),
        (data) => AppState.success(data: data.data)));
  }
}

final denominationListNotifierProvider = StateNotifierProvider.family
    .autoDispose<DenominationListNotifier,
        AppState<List<DenominationListResponseModel>>, String>((ref, eventId) {
  return DenominationListNotifier(getIt<FetchDenominationListUseCase>())
    ..fetchDenominationList(eventId: eventId);
});
