part of 'event_vote_history_cubit.dart';

@freezed
class EventVoteHistoryState with _$EventVoteHistoryState {
  const factory EventVoteHistoryState.initial() = _Initial;


  const factory EventVoteHistoryState.loading() = _Loading;

  const factory EventVoteHistoryState.noInternet() = _NoInternet;

  const factory EventVoteHistoryState.error({required String errMessage}) = _Error;

  const factory EventVoteHistoryState.success({required ApiResponse response}) =
  _Success;
}
