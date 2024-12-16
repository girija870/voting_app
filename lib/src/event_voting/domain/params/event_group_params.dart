import 'package:equatable/equatable.dart';

class EventGroupParams extends Equatable {
  const EventGroupParams({required this.eventId, this.search});
  final String eventId;
  final String? search;
  @override
  List<Object?> get props => [eventId, search];
}
