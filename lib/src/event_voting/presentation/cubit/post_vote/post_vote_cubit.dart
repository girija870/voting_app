import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/post_vote_use_case.dart';

import '../../../data/models/response/api_response.dart';

part 'post_vote_state.dart';

part 'post_vote_cubit.freezed.dart';

class PostVoteCubit extends Cubit<PostVoteState> {
  PostVoteCubit(this._useCase) : super(const PostVoteState.initial());

  final PostVoteUseCase _useCase;

  Future<void> postVote() async {
    emit(const PostVoteState.loading());
    emit((await _useCase.execute(null)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                PostVoteState.error(errMessage: errMessage),
            noInternet: PostVoteState.noInternet),
        (data) => PostVoteState.success(response: data)));
  }
}
