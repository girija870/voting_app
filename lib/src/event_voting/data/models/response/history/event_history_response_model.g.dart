// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventListResponseModel _$$_EventListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventListResponseModel(
      count: json['count'] as int?,
      voteDate: json['voteDate'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      event: json['event'] == null
          ? null
          : Event.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventListResponseModelToJson(
        _$_EventListResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'voteDate': instance.voteDate,
      'amount': instance.amount,
      'event': instance.event?.toJson(),
    };

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      participant: json['participant'] as String?,
      name: json['name'] as String,
      image: json['image'] as String?,
      participantImage: json['participantImage'] as String?,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'participant': instance.participant,
      'name': instance.name,
      'image': instance.image,
      'participantImage': instance.participantImage,
    };
