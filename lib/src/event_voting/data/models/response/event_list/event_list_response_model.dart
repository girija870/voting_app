import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_list_response_model.freezed.dart';
part 'event_list_response_model.g.dart';

@freezed
class EventListResponseModel with _$EventListResponseModel {
  const factory EventListResponseModel({
    @Default([]) List<EventListData> data,
  }) = _EventListResponseModel;

  factory EventListResponseModel.fromJson(Map<String, dynamic> json) => _$EventListResponseModelFromJson(json);
}

@freezed
class EventListData with _$EventListData {
  const factory EventListData({
    required String id,
    required String name,
    String? location,
    String? startDate,
    String? endDate,
    required String image,
    String? description,
    required String type,
    String? setting,
    double? price,
    String? status,
    @Default([]) List<Participants> participants,
  }) = _EventListData;

  factory EventListData.fromJson(Map<String, dynamic> json) => _$EventListDataFromJson(json);
}

@freezed
class Participants with _$Participants {
  const factory Participants({
    required String id,
    required int contestantNo,
    required String name,
    String? image,
    Judge? judge,
  }) = _Participants;

  factory Participants.fromJson(Map<String, dynamic> json) => _$ParticipantsFromJson(json);
}

@freezed
class Judge with _$Judge {
  const factory Judge({
    required String id,
    required String name,
    String? description,
    String? image,
  }) = _Judge;

  factory Judge.fromJson(Map<String, dynamic> json) => _$JudgeFromJson(json);
}
