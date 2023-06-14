import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_exception.dart';
import 'package:voting_app/src/core/network/api_endpoints.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';

import '../models/response/history/event_history_response_model.dart';

abstract class EventVotingRemoteSource {
  Future<ApiResponse<List<String>>> fetchEventCategory();

  Future<ApiResponse<List<EventListResponseModel>>> fetchEventList(
      {required String eventType});

  Future<ApiResponse<List<DenominationListResponseModel>>>
      fetchDenominationList({required String eventId});

  Future<ApiResponse<List<EventHistoryResponseModel>>> fetchEventHistory(
      {required String userId});

  Future<ApiResponse> postVote({required ContestantVotingParam param});
}

@LazySingleton(as: EventVotingRemoteSource)
class EventVotingRemoteSourceImpl implements EventVotingRemoteSource {
  final Dio _dio;

  EventVotingRemoteSourceImpl(this._dio);

  @override
  Future<ApiResponse<List<EventListResponseModel>>> fetchEventList(
      {required String eventType}) async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchEventsList,
          options: Options(headers: {'category': eventType}));
      if (response.statusCode == 200) {
        return ApiResponse(
          data: List.from(response.data['data'])
              .map((e) => EventListResponseModel.fromJson(e))
              .toList(),
          message: response.data['message'] as String,
          success: response.data['success'] as bool,
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<List<DenominationListResponseModel>>>
      fetchDenominationList({required String eventId}) async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchDenominationList,
          options: Options(headers: {'eventId': eventId}));
      if (response.statusCode == 200) {
        return ApiResponse(
          data: List.from(response.data['data'])
              .map((e) => DenominationListResponseModel.fromJson(e))
              .toList(),
          message: response.data['message'] != null
              ? response.data['message'] as String
              : 'Successfully',
          success: response.data['success'] as bool,
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<List<EventHistoryResponseModel>>> fetchEventHistory(
      {required String userId}) async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchVoteHistory,
          options: Options(headers: {'username': '9849423081'}));
      if (response.statusCode == 200) {
        return ApiResponse(
          data: List.from(response.data['data'])
              .map((e) => EventHistoryResponseModel.fromJson(e))
              .toList(),
          message: response.data['message'] as String,
          success: response.data['success'] as bool,
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<List<String>>> fetchEventCategory() async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchCategory);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: List.from(response.data['data']),
          message: response.data['message'] as String,
          success: response.data['success'] as bool,
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse> postVote({required ContestantVotingParam param}) async {
    try {
      print('paramData${param.toJson}');
      final response =
          await _dio.post(ApiEndPoints.postVote, data: param.toJson);

      if (response.statusCode == 200) {
        return ApiResponse(
          data: const {},
          message: response.data['message'] as String,
          success: response.data['success'] as bool,
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }
}
