import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/post_vote_use_case.dart';

import '../../../data/models/response/api_response.dart';

part 'post_vote_state.dart';

part 'post_vote_cubit.freezed.dart';

@injectable
class PostVoteCubit extends Cubit<PostVoteState> {
  PostVoteCubit(this._useCase) : super(const PostVoteState.initial());

  final PostVoteUseCase _useCase;

  Future<void> postVote({required ContestantVotingParam param}) async {
    emit(const PostVoteState.loading());
    emit((await _useCase.execute(param)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                PostVoteState.error(errMessage: errMessage),
            noInternet: PostVoteState.noInternet),
        (data) => PostVoteState.success(response: data)));
  }
}
