// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupListResponseModel _$$_GroupListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_GroupListResponseModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => GroupListData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GroupListResponseModelToJson(
        _$_GroupListResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_GroupListData _$$_GroupListDataFromJson(Map<String, dynamic> json) =>
    _$_GroupListData(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String?,
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => Participants.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GroupListDataToJson(_$_GroupListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'participants': instance.participants,
    };
