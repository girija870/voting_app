import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_vote_response_model.freezed.dart';
part 'post_vote_response_model.g.dart';

@freezed
class PostVoteResponseModel with _$PostVoteResponseModel {
  const factory PostVoteResponseModel({
    required bool success,
    required String message,
    String? data,
  }) = _PostVoteResponseModel;

  factory PostVoteResponseModel.fromJson(Map<String, dynamic> json) => _$PostVoteResponseModelFromJson(json);
}
