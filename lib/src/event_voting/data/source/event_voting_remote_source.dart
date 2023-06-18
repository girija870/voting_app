import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_exception.dart';
import 'package:voting_app/src/core/network/api_endpoints.dart';
import 'package:voting_app/src/core/network/network_services.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/category/category_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/group_list/group_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/post_vote/post_vote_response_model.dart';

import '../models/response/history/event_history_response_model.dart';

abstract class EventVotingRemoteSource {
  Future<CategoryResponseModel> fetchEventCategory();

  Future<EventListResponseModel> fetchEventList({required String eventType});

  Future<DenominationResponseModel> fetchDenominationList(
      {required String eventId});

  Future<EventHistoryResponseModel> fetchEventHistory({required String userId});

  Future<PostVoteResponseModel> postVote(
      {required ContestantVotingParam param});

  Future<GroupListResponseModel> fetchGroupList({required String eventId});
}

@LazySingleton(as: EventVotingRemoteSource)
class EventVotingRemoteSourceImpl implements EventVotingRemoteSource {
  final Dio _dio;

  EventVotingRemoteSourceImpl(this._dio, this._networkServices);

  final NetworkServices _networkServices;

  @override
  Future<CategoryResponseModel> fetchEventCategory() async {
    return await _networkServices.fetchEventCategory();
  }

  @override
  Future<EventListResponseModel> fetchEventList(
      {required String eventType}) async {
    return await _networkServices.fetchEventList(eventType);
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
    return await _networkServices.postVote(param.userId, param.username, param.denoId, param.participantId, param.count, param.type, param.refTransactionId);

    // try {
    //   print('paramData${param.toJson}');
    //   final response =
    //       await _dio.post(ApiEndPoints.postVote, data: param.toJson);
    //
    //   if (response.statusCode == 200) {
    //     return PostVoteResponseModel.fromJson(response.data['data']);
    //   } else {
    //     throw const AppException(message: 'Unknown Error');
    //   }
    // } on DioException catch (e) {
    //   throw AppException.fromDioError(e);
    // }
  }

  @override
  Future<GroupListResponseModel> fetchGroupList(
      {required String eventId}) async {
    return await _networkServices.fetchGroupList(eventId);
  }
}
