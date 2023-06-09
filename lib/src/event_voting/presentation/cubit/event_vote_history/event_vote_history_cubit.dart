import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_vote_history_use_case.dart';

import '../../../data/models/response/api_response.dart';

part 'event_vote_history_state.dart';

part 'event_vote_history_cubit.freezed.dart';

class EventVoteHistoryCubit extends Cubit<EventVoteHistoryState> {
  EventVoteHistoryCubit(this._useCase)
      : super(const EventVoteHistoryState.initial());
  final FetchVoteHistoryUseCase _useCase;

  Future<void> fetchEventVoteHistory() async {
    emit(const EventVoteHistoryState.loading());
    emit((await _useCase.execute(null)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                EventVoteHistoryState.error(errMessage: errMessage),
            noInternet: EventVoteHistoryState.noInternet),
        (data) => EventVoteHistoryState.success(response: data)));
  }
}
