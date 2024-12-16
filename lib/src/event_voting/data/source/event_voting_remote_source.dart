import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_exception.dart';
import 'package:voting_app/src/core/network/network_services.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/category/category_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/group_list/group_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/post_vote/post_vote_response_model.dart';

import '../models/response/history/event_history_response_model.dart';

abstract class EventVotingRemoteSource {
  Future<CategoryResponseModel> fetchEventCategory();

  Future<EventListResponseModel> fetchEventList({
    required String eventType,
    String? search,
  });

  Future<DenominationResponseModel> fetchDenominationList(
      {required String eventId});

  Future<EventHistoryResponseModel> fetchEventHistory({required String userId});

  Future<PostVoteResponseModel> postVote(
      {required ContestantVotingParam param});

  Future<GroupListResponseModel> fetchGroupList(
      {required String eventId, String? search});
}

@LazySingleton(as: EventVotingRemoteSource)
class EventVotingRemoteSourceImpl implements EventVotingRemoteSource {
  EventVotingRemoteSourceImpl(this._networkServices);

  final NetworkServices _networkServices;

  @override
  Future<CategoryResponseModel> fetchEventCategory() async {
    return await _networkServices.fetchEventCategory();
  }

  @override
  Future<EventListResponseModel> fetchEventList({
    required String eventType,
    String? search,
  }) async {
    return await _networkServices.fetchEventList(eventType, search);
  }

  @override
  Future<DenominationResponseModel> fetchDenominationList(
      {required String eventId}) async {
    return await _networkServices.fetchDenominationList(eventId);
  }

  @override
  Future<EventHistoryResponseModel> fetchEventHistory(
      {required String userId}) async {
    return await _networkServices.fetchEventHistory(userId);
  }

  @override
  Future<PostVoteResponseModel> postVote(
      {required ContestantVotingParam param}) async {
    try {
      final response = await _networkServices.postVote(
          param.userId,
          param.username,
          param.denoId,
          param.participantId,
          param.count,
          param.type);

      if (response.success == true) {
        return response;
      } else {
        throw AppException(message: response.message);
      }
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<GroupListResponseModel> fetchGroupList(
      {required String eventId, String? search}) async {
    return await _networkServices.fetchGroupList(eventId, search);
  }
}
