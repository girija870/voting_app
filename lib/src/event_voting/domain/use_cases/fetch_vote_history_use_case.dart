import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/usecase/base_use_case.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

@lazySingleton
class FetchVoteHistoryUseCase
    extends BaseUseCase<String, EventHistoryResponseModel> {
  FetchVoteHistoryUseCase(this._repository);

  final EventVotingRepository _repository;

  @override
  Future<Either<AppError, EventHistoryResponseModel>> execute(String param) =>
      _repository.fetchVoteHistory(userId: param);
}
