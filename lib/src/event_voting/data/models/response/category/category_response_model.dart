import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response_model.freezed.dart';

part 'category_response_model.g.dart';

@freezed
class CategoryResponseModel with _$CategoryResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryResponseModel({
    @Default([]) List<String> data,
  }) = _CategoryResponseModel;

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseModelFromJson(json);
}
