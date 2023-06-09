// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppException _$$_AppExceptionFromJson(Map<String, dynamic> json) =>
    _$_AppException(
      message: json['message'] as String,
      statusCode: json['status_code'] as int?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_AppExceptionToJson(_$_AppException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'errors': instance.errors,
    };
