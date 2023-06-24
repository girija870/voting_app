import 'package:equatable/equatable.dart';

class ContestantVotingParam extends Equatable {
  final String userId;
  final String username;
  final String denoId;
  final String participantId;
  final int count;
  final String type;

  const ContestantVotingParam({
    required this.userId,
    required this.participantId,
    required this.count,
    required this.type,
    required this.username,
    required this.denoId,
  });

  @override
  List<Object?> get props => [userId, participantId, count, type];

  Map<String, dynamic> get toJson => {
        "userId": userId,
        "username": username,
        "denoId": denoId,
        "participantId": participantId,
        "count": count,
        "type": type,
      };
}
