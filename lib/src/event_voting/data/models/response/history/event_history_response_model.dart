import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_history_response_model.freezed.dart';
part 'event_history_response_model.g.dart';

@freezed
class EventHistoryResponseModel with _$EventHistoryResponseModel {
  const factory EventHistoryResponseModel({
    required EventData data,
  }) = _EventHistoryResponseModel;

  factory EventHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EventHistoryResponseModelFromJson(json);
}

@freezed
class EventData with _$EventData {
  const factory EventData({
    required int total,
    required int activePage,
    @Default([]) List<EventHistoryData> votes,
  }) = _EventData;

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);
}

@freezed
class EventHistoryData with _$EventHistoryData {
  const factory EventHistoryData({
    int? count,
    String? voteDate,
    double? amount,
    Event? event,
  }) = _EventHistoryData;

  factory EventHistoryData.fromJson(Map<String, dynamic> json) =>
      _$EventHistoryDataFromJson(json);
}

@freezed
class Event with _$Event {
  const factory Event({
    String? participant,
    required String name,
    String? image,
    String? participantImage,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
