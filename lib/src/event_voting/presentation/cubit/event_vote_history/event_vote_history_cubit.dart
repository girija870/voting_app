import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_vote_history_use_case.dart';

import '../../../data/models/response/api_response.dart';

part 'event_vote_history_state.dart';

part 'event_vote_history_cubit.freezed.dart';

@injectable
class EventVoteHistoryCubit extends Cubit<EventVoteHistoryState> {
  EventVoteHistoryCubit(this._useCase)
      : super(const EventVoteHistoryState.initial());
  final FetchVoteHistoryUseCase _useCase;

  Future<void> fetchEventVoteHistory({required String userId}) async {
    emit(const EventVoteHistoryState.loading());
    emit((await _useCase.execute(userId)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                EventVoteHistoryState.error(errMessage: errMessage),
            noInternet: EventVoteHistoryState.noInternet),
        (data) => EventVoteHistoryState.success(response: data)));
  }
}
