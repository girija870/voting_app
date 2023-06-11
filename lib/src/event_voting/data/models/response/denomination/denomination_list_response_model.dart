import 'package:freezed_annotation/freezed_annotation.dart';

part 'denomination_list_response_model.freezed.dart';

part 'denomination_list_response_model.g.dart';

@freezed
class DenominationListResponseModel with _$DenominationListResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DenominationListResponseModel({
    required String id,
    required int count,
    required double amount,
    required String type,
    required String title,
    String? detail,
  }) = _DenominationListResponseModel;

  factory DenominationListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DenominationListResponseModelFromJson(json);
}
