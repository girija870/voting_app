// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventHistoryResponseModel _$$_EventHistoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventHistoryResponseModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EventHistoryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EventHistoryResponseModelToJson(
        _$_EventHistoryResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_EventHistoryData _$$_EventHistoryDataFromJson(Map<String, dynamic> json) =>
    _$_EventHistoryData(
      count: json['count'] as int?,
      voteDate: json['voteDate'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      event: json['event'] == null
          ? null
          : Event.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventHistoryDataToJson(_$_EventHistoryData instance) =>
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
