// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'denomination_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DenominationListResponseModel _$$_DenominationListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_DenominationListResponseModel(
      id: json['id'] as String,
      count: json['count'] as int,
      amount: (json['amount'] as num).toDouble(),
      type: json['type'] as String,
      title: json['title'] as String,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$_DenominationListResponseModelToJson(
        _$_DenominationListResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'amount': instance.amount,
      'type': instance.type,
      'title': instance.title,
      'detail': instance.detail,
    };
