import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart';

import '../../../data/models/response/event_list_response_model.dart';

part 'event_list_state.dart';

part 'event_list_cubit.freezed.dart';

@injectable
class EventListCubit extends Cubit<EventListState> {
  EventListCubit(this._useCase) : super(const EventListState.initial());

  final FetchEventListUseCase _useCase;

  Future<void> fetchEventList({required String eventType}) async {
    emit(const EventListState.loading());
    emit((await _useCase.execute(eventType)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                EventListState.error(errMessage: errMessage),
            noInternet: EventListState.noInternet),
        (data) => EventListState.success(response: data)));
  }
}
