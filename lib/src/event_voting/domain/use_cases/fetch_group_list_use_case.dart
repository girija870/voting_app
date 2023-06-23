import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/usecase/base_use_case.dart';
import 'package:voting_app/src/event_voting/data/models/response/group_list/group_list_response_model.dart';
import 'package:voting_app/src/event_voting/domain/params/event_group_params.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

@lazySingleton
class FetchGroupListUseCase
    extends BaseUseCase<EventGroupParams, GroupListResponseModel> {
  FetchGroupListUseCase(this._repository);

  final EventVotingRepository _repository;

  @override
  Future<Either<AppError, GroupListResponseModel>> execute(EventGroupParams param) =>
      _repository.fetchGroupList(eventId: param.eventId, search: param.search);
}
