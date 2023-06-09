import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/errors/app_error.dart';
import 'package:voting_app/src/core/errors/app_exception.dart';
import 'package:voting_app/src/core/helpers/internet_info_helper.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/source/event_voting_remote_source.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

@LazySingleton(as: EventVotingRepository)
class EventVotingRepositoryImpl implements EventVotingRepository {
  final InternetInfo _internetInfo;
  final EventVotingRemoteSource _remoteSource;

  EventVotingRepositoryImpl(this._internetInfo, this._remoteSource);

  @override
  Future<Either<AppError, ApiResponse>> fetchDenominationList(
      {required String eventId}) async {
    if (await _internetInfo.isConnected) {
      try {
        final response =
            await _remoteSource.fetchDenominationList(eventId: eventId);
        return right(response);
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse>> fetchVoteHistory() async {
    if (await _internetInfo.isConnected) {
      try {
        final response = await _remoteSource.fetchEventHistory();
        return right(response);
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<EventListResponseModel>>> fetchEventList(
      {required String eventType}) async {
    if (await _internetInfo.isConnected) {
      try {
        final response =
            await _remoteSource.fetchEventList(eventType: eventType);
        return right(response);
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse>> fetchEventCategory() async {
    if (await _internetInfo.isConnected) {
      try {
        final response = await _remoteSource.fetchEventCategory();
        return right(response);
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse>> postVote() async {
    if (await _internetInfo.isConnected) {
      try {
        final response = await _remoteSource.postVote();
        return right(response);
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }
}
