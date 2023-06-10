import 'package:equatable/equatable.dart';

class ContestantVotingParam extends Equatable {
  final String userId;
  final String eventDetailId;
  final String count;
  final String type;

  const ContestantVotingParam(
      {required this.userId,
      required this.eventDetailId,
      required this.count,
      required this.type});

  @override
  List<Object?> get props => [userId, eventDetailId, count, type];
}
