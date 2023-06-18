import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/state/app_state.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/post_vote/post_vote_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_denomination_list_use_case.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_category_use_case.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/post_vote_use_case.dart';

import '../../data/models/response/denomination/denomination_list_response_model.dart';

class PostVoteNotifier extends StateNotifier<AppState<PostVoteResponseModel>> {
  PostVoteNotifier(this._useCase) : super(const AppState.initial());

  final PostVoteUseCase _useCase;

  Future<void> postVote({required ContestantVotingParam param}) async {
    state = (const AppState.loading());
    state = ((await _useCase.execute(param)).fold(
        (failure) => failure.when(
            serverError: (errMessage) => AppState.error(message: errMessage),
            noInternet: AppState.noInternet),
        (data) => AppState.success(data: data)));
  }
}

final postVoteNotifierProvider =
    StateNotifierProvider<PostVoteNotifier, AppState<PostVoteResponseModel>>(
        (ref) {
  return PostVoteNotifier(getIt<PostVoteUseCase>());
});
