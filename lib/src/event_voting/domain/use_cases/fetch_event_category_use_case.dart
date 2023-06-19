import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/usecase/base_use_case.dart';
import 'package:voting_app/src/event_voting/data/models/response/category/category_response_model.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

@lazySingleton
class FetchEventCategoryUseCase
    extends BaseUseCase<void, CategoryResponseModel> {
  FetchEventCategoryUseCase(this._repository);

  final EventVotingRepository _repository;

  @override
  Future<Either<AppError, CategoryResponseModel>> execute(param) =>
      _repository.fetchEventCategory();
}
