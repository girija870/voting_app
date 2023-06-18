import 'package:dartz/dartz.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/category/category_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/post_vote/post_vote_response_model.dart';

abstract class EventVotingRepository {
  Future<Either<AppError, CategoryResponseModel>> fetchEventCategory();

  Future<Either<AppError, EventListResponseModel>> fetchEventList(
      {required String eventType});

  Future<Either<AppError, DenominationResponseModel>>
      fetchDenominationList({required String eventId});

  Future<Either<AppError, EventHistoryResponseModel>>
      fetchVoteHistory({required String userId});

  Future<Either<AppError, PostVoteResponseModel>> postVote(
      {required ContestantVotingParam param});

  Future<Either<AppError, ApiResponse<List<EventHistoryResponseModel>>>>
      fetchGroupList({required String eventId});
}
