import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_list_response_model.freezed.dart';

part 'event_list_response_model.g.dart';

@freezed
class EventListResponseModel with _$EventListResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory EventListResponseModel({
    required String id,
    required String name,
    String? location,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') required String endDate,
    required String image,
    required String description,
    String? type,
    String? setting,
    double? price,
    String? status,
    @Default([]) List<Participants> participants,
  }) = _EventListResponseModel;

  factory EventListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EventListResponseModelFromJson(json);
}

@freezed
class Participants with _$Participants {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Participants({
    required String id,
    required String name,
    String? image,
    Judge? judge,
  }) = _Participants;

  factory Participants.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsFromJson(json);
}

@freezed
class Judge with _$Judge {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Judge({
    required String id,
    required String name,
    String? description,
    String? image,
  }) = _Judge;

  factory Judge.fromJson(Map<String, dynamic> json) => _$JudgeFromJson(json);
}
