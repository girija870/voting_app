import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/state/app_state.dart';
import 'package:voting_app/src/event_voting/data/models/response/category/category_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_category_use_case.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart';

class EventCategoryNotifier
    extends StateNotifier<AppState<CategoryResponseModel>> {
  EventCategoryNotifier(this._useCase) : super(const AppState.initial());

  final FetchEventCategoryUseCase _useCase;

  Future<void> fetchEventCategory() async {
    state = (const AppState.loading());
    state = ((await _useCase.execute(null)).fold(
        (failure) => failure.when(
            serverError: (errMessage) => AppState.error(message: errMessage),
            noInternet: AppState.noInternet),
        (data) => AppState.success(data: data)));
  }
}

final eventCategoryNotifierProvider = StateNotifierProvider<
    EventCategoryNotifier, AppState<CategoryResponseModel>>((ref) {
  return EventCategoryNotifier(getIt<FetchEventCategoryUseCase>())
    ..fetchEventCategory();
});
