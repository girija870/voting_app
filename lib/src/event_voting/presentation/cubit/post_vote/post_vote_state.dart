part of 'post_vote_cubit.dart';

@freezed
class PostVoteState with _$PostVoteState {
  const factory PostVoteState.initial() = _Initial;

  const factory PostVoteState.loading() = _Loading;

  const factory PostVoteState.noInternet() = _NoInternet;

  const factory PostVoteState.error({required String errMessage}) = _Error;

  const factory PostVoteState.success({required ApiResponse response}) =
  _Success;
}
