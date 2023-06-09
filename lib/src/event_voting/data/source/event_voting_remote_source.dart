import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_exception.dart';
import 'package:voting_app/src/core/network/api_endpoints.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';

abstract class EventVotingRemoteSource {
  Future<ApiResponse> fetchEventCategory();

  Future<ApiResponse<EventListResponseModel>> fetchEventList(
      {required String eventType});

  Future<ApiResponse> fetchDenominationList({required String eventId});

  Future<ApiResponse> fetchEventHistory();

  Future<ApiResponse> postVote();
}

@LazySingleton(as: EventVotingRemoteSource)
class EventVotingRemoteSourceImpl implements EventVotingRemoteSource {
  final Dio _dio;

  EventVotingRemoteSourceImpl(this._dio);

  @override
  Future<ApiResponse<EventListResponseModel>> fetchEventList(
      {required String eventType}) async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchEventsList);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: EventListResponseModel.fromJson(response.data['data']),
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
  Future<ApiResponse> fetchDenominationList({required String eventId}) async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchDenominationList);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: {},
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
  Future<ApiResponse> fetchEventHistory() async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchVoteHistory);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: {},
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
  Future<ApiResponse> fetchEventCategory() async {
    try {
      final response = await _dio.get(ApiEndPoints.fetchCategory);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: {},
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
  Future<ApiResponse> postVote() async {
    try {
      final response = await _dio.get(ApiEndPoints.postVote);
      if (response.statusCode == 200) {
        return ApiResponse(
          data: {},
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
