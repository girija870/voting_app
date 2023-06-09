import 'package:dartz/dartz.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';

abstract class EventVotingRepository {
  Future<Either<AppError, ApiResponse>> fetchEventCategory();

  Future<Either<AppError, ApiResponse<EventListResponseModel>>> fetchEventList(
      {required String eventType});

  Future<Either<AppError, ApiResponse>> fetchDenominationList(
      {required String eventId});

  Future<Either<AppError, ApiResponse>> fetchVoteHistory();

  Future<Either<AppError, ApiResponse>> postVote();
}
