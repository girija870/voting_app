import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/usecase/base_use_case.dart';
import 'package:voting_app/src/event_voting/domain/params/event_params.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

import '../../data/models/response/event_list/event_list_response_model.dart';

@lazySingleton
class FetchEventListUseCase
    extends BaseUseCase<EventParams, EventListResponseModel> {
  FetchEventListUseCase(this._repository);

  final EventVotingRepository _repository;

  @override
  Future<Either<AppError, EventListResponseModel>> execute(EventParams param) =>
      _repository.fetchEventList(eventType: param.type, search: param.search);
}
