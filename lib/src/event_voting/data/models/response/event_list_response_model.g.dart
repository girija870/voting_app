// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventListResponseModel _$$_EventListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventListResponseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      type: json['type'] as String?,
      setting: json['setting'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      status: json['status'] as String?,
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => Participants.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EventListResponseModelToJson(
        _$_EventListResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'image': instance.image,
      'description': instance.description,
      'type': instance.type,
      'setting': instance.setting,
      'price': instance.price,
      'status': instance.status,
      'participants': instance.participants.map((e) => e.toJson()).toList(),
    };

_$_Participants _$$_ParticipantsFromJson(Map<String, dynamic> json) =>
    _$_Participants(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String?,
      judge: json['judge'] == null
          ? null
          : Judge.fromJson(json['judge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ParticipantsToJson(_$_Participants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'judge': instance.judge?.toJson(),
    };

_$_Judge _$$_JudgeFromJson(Map<String, dynamic> json) => _$_Judge(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_JudgeToJson(_$_Judge instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };
