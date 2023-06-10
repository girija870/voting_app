import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_category_use_case.dart';

part 'event_category_state.dart';

part 'event_category_cubit.freezed.dart';

@injectable
class EventCategoryCubit extends Cubit<EventCategoryState> {
  EventCategoryCubit(this._useCase) : super(const EventCategoryState.initial());

  final FetchEventCategoryUseCase _useCase;

  Future<void> fetchEventCategory() async {
    emit(const EventCategoryState.loading());
    emit((await _useCase.execute(null)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                EventCategoryState.error(errMessage: errMessage),
            noInternet: EventCategoryState.noInternet),
        (data) => EventCategoryState.success(response: data)));
  }
}
