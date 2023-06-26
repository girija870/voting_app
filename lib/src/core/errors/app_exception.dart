import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

part 'app_exception.g.dart';

@freezed
class AppException with _$AppException {
  const AppException._();

  const factory AppException({
    required String message,
    int? statusCode,
    Map<String, dynamic>? errors,
  }) = _AppException;

  factory AppException.fromJson(Map<String, dynamic> json) => _$AppExceptionFromJson(json);

  factory AppException.fromDioError(DioException e) {
    if (e.response != null) {
      return AppException(message: e.response?.data['message'] as String);
    } else if (e.message != null) {
      return AppException(message: e.message as String);
    } else {
      return AppException(message: e.error.toString());
    }
  }
}
