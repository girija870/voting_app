import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';

part 'group_list_response_model.freezed.dart';

part 'group_list_response_model.g.dart';

@freezed
class GroupListResponseModel with _$GroupListResponseModel {
  const factory GroupListResponseModel({
    @Default([]) List<GroupListData> data,
  }) = _GroupListResponseModel;

  factory GroupListResponseModel.fromJson(Map<String, dynamic> json) => _$GroupListResponseModelFromJson(json);
}

@freezed
class GroupListData with _$GroupListData {
  const factory GroupListData({
    required String id,
    required String name,
    required String image,
    String? description,
    @Default([]) List<Participants> participants,
  }) = _GroupListData;

  factory GroupListData.fromJson(Map<String, dynamic> json) => _$GroupListDataFromJson(json);
}
