import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_history_response_model.freezed.dart';

part 'event_history_response_model.g.dart';

@freezed
class EventHistoryResponseModel with _$EventHistoryResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory EventHistoryResponseModel({
    int? count,
    @JsonKey(name: 'voteDate') String? voteDate,
    double? amount,
    Event? event,
  }) = _EventListResponseModel;

  factory EventHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EventHistoryResponseModelFromJson(json);
}

@freezed
class Event with _$Event {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Event({
    String? participant,
    required String name,
    String? image,
    @JsonKey(name: 'participantImage') String? participantImage,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
