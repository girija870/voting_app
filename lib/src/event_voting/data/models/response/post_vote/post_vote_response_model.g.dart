// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_vote_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostVoteResponseModel _$$_PostVoteResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostVoteResponseModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$_PostVoteResponseModelToJson(
        _$_PostVoteResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
