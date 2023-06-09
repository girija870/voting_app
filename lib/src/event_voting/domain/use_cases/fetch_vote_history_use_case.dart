import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/usecase/base_use_case.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

@lazySingleton
class FetchVoteHistoryUseCase
    extends BaseUseCase<void, ApiResponse<dynamic>> {
  FetchVoteHistoryUseCase(this._repository);

  final EventVotingRepository _repository;

  @override
  Future<Either<AppError, ApiResponse<dynamic>>> execute(param) =>
      _repository.fetchVoteHistory();
}
