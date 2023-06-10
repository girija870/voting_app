import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/usecase/base_use_case.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

import '../../data/models/response/event_list_response_model.dart';

@lazySingleton
class FetchEventListUseCase
    extends BaseUseCase<String, ApiResponse<List<EventListResponseModel>>> {
  FetchEventListUseCase(this._repository);

  final EventVotingRepository _repository;

  @override
  Future<Either<AppError, ApiResponse<List<EventListResponseModel>>>> execute(
          String param) =>
      _repository.fetchEventList(eventType: param);
}
